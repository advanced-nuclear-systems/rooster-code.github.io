            <!-- Header-->
            <header class="py-5">
                <div class="container px-5">
                    <div class="row gx-5 align-items-center justify-content-center">
                        <div class="col-lg-8 col-xl-7 col-xxl-6">
                            <div class="breadcrumb"><a href="index.html">ARMSTRONG</a>&nbsp;:&nbsp;<a href="index.html#rooster">ROOSTER</a>&nbsp;:&nbsp;<a href="rooster-e.html">Examples</a>&nbsp;:&nbsp;SPX neutronics<div>
                            <div class="my-5 text-xl-start">
                                <h1 class="display-5 fw-bolder text-dark mb-2 mt-4">SPX start-up test: static neutronics</h1>
                                <div id="adobe-dc-view" style="width:100%;"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </header>

            <!-- See https://www.adobe.io/apis/documentcloud/dcsdk/pdf-embed.html; Adobe API credentials: armstrong-pdf-embed-api; CLIENT ID (API KEY): 4996ed0a481d4e42b531c6b6e64aabe9; APPLICATION DOMAIN: armstrong-dev.github.io-->
            <script src="https://documentcloud.adobe.com/view-sdk/main.js"></script>
            <script type="text/javascript">
               document.addEventListener("adobe_dc_view_sdk.ready", function(){ 
                  var adobeDCView = new AdobeDC.View({clientId: "4996ed0a481d4e42b531c6b6e64aabe9", divId: "adobe-dc-view"});
                  adobeDCView.previewFile({
                     content:{location: {url: "pdf/SPX_static_neutronics.pdf"}},
                     metaData:{fileName: "SPX_static_neutronics.pdf"}
                  }, {embedMode: "IN_LINE"});
               });
            </script>
