            <!-- Header-->
            <header class="py-5">
                <div class="container px-5">
                    <div class="row gx-5 align-items-center justify-content-center">
                        <div class="col-lg-8 col-xl-7 col-xxl-6">
                            <div class="my-5 text-xl-start">
                                <h1 class="display-5 fw-bolder text-dark mb-2 mt-4">Database record</h1>
                                <p id='description'></p>
                                <script>
                                   var queryString = window.location.search;
                                   var urlParams = new URLSearchParams(queryString);
                                   var id = urlParams.get('id');
                                   db_record(id);
                                </script>
                            </div>
                        </div>
                    </div>
                </div>
            </header>