/*!
* Start Bootstrap - Modern Business v5.0.4 (https://startbootstrap.com/template-overviews/modern-business)
* Copyright 2013-2021 Start Bootstrap
* Licensed under MIT (https://github.com/StartBootstrap/startbootstrap-modern-business/blob/master/LICENSE)
*/

//
// Read json file from ARMSTRONG database and pass it to function render
//
function db_record(json)
{
   fetch('https://raw.githubusercontent.com/armstrong-dev/data-management/main/json/' + json + '.json')
  .then(response => response.json())
  .then(obj => render_record(obj,json));
}

function render_record(obj,json)
{
   var d = document.getElementById('description')
   d.innerHTML = '<div><b>download:</b></div>';
   d.innerHTML += '<div><a href=https://github.com/armstrong-dev/data-management/raw/main/' + obj.extension + '/' + json + '.' + obj.extension + '>' + json + '.' + obj.extension + '</a></div><br>';
   for(var key in obj)
   {
      d.innerHTML += '<div><b>' + key + ':</b></div>';

      if(Array.isArray(obj[key]))
      {
         // when array, assume that each element is an object
         for(const e of obj[key])
         {
            for(var key2 in e)
            {
               d.innerHTML += '<div class="offset-1"><b>' + key2 + ':</b></div>';
               try 
               {
                  var url = new URL(e[key2]);
                  d.innerHTML += '<div class="offset-1"><a href=' + e[key2] + '>' + e[key2] + '</a></div>';
               } 
               catch (_) 
               {
                  if(e[key2].length == 32)
                  {
                     d.innerHTML += '<div class="offset-1"><a href="db-record.html?id=' + e[key2] + '">' + e[key2] + '</a></div>';
                  }
                  else
                  {
                     d.innerHTML += '<div class="offset-1">' + e[key2] + '</div>';
                  }
               }
            }
            d.innerHTML += '</br>';
         }
      }
      else
      {
         d.innerHTML += '<div>' + obj[key] + '</div><br>';
      }
   }
}