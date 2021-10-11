/*!
* Start Bootstrap - Modern Business v5.0.4 (https://startbootstrap.com/template-overviews/modern-business)
* Copyright 2013-2021 Start Bootstrap
* Licensed under MIT (https://github.com/StartBootstrap/startbootstrap-modern-business/blob/master/LICENSE)
*/

//
// Read json file from ARMSTRONG database and pass it to function 
//
function read_json(json)
{
   fetch('https://raw.githubusercontent.com/armstrong-dev/data-management/main/json/' + json + '.json')
  .then(response => response.json())
  .then(obj => render_json(obj,json));
}

function render_json(obj,json)
{
   var d = document.getElementById('description')
   d.innerHTML = '<b>download:</b><br>' + '<a href=https://github.com/armstrong-dev/data-management/raw/main/' + obj.extension + '/' + json + '.' + obj.extension + '>' + json + '.' + obj.extension + '</a><br><br>';
   for(var key of Object.keys(obj))
   {
      d.innerHTML += '<hr>';
      d.innerHTML += '<b>' + key + ':</b><br>' + obj[key] + '<br><br>';
   }
   
   console.log(obj)
}