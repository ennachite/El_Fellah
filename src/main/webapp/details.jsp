<jsp:include page="WEB-INF/header.jsp" />

<jsp:include page="WEB-INF/navbar.jsp" />


<!--====== POST PART STARTS ======-->
<section class="pt-120 pb-120">
    <div class="">
        <div class="row justify-center">
            <div class="w-fully lg:w-1/2">
                <div class="section_title text-center pb-6">
                    <h4 class="main_title">Offer Details</h4>
                </div>
                <!-- section title -->
            </div>
        </div>
        <!-- row -->
        <div class="row justify-center text-left w-12/12">
            <!-- ========== GRID START ============-->
            <div class="w-full sm:w-10/12 md:w-6/12 lg:w-12/12 h-12/12">
                <div class="grid_offer text-center mt-8 mx-3">
                    <img src="assets/img/1.jpg" class="w-full h-full"  width="50px" height="80px" alt="">
                    <h2 class="my-6 text-2xl font-semibold text-gray-700 capitalize">${ requestScope.post.offerName }</h2>
                    <!-- General elements -->
                    <div class="justify-left text-left">
                        <p class="pb-2 flex border-r-4 border-white">
                            <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M17.657 16.657L13.414 20.9a1.998 1.998 0 01-2.827 0l-4.244-4.243a8 8 0 1111.314 0z"></path>
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 11a3 3 0 11-6 0 3 3 0 016 0z"></path>
                            </svg>
                            ${ requestScope.post.location }
                        </p>
                        <p class="pb-2 flex border-r-4 border-white">
                            <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 8V4m0 0h4M4 4l5 5m11-1V4m0 0h-4m4 0l-5 5M4 16v4m0 0h4m-4 0l5-5m11 5l-5-5m5 5v-4m0 4h-4"></path>
                            </svg>
                            ${ requestScope.post.area } Hectares
                        </p>
                        <p class="pb-2 flex border-r-4 border-white">
                            <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 8c-1.657 0-3 .895-3 2s1.343 2 3 2 3 .895 3 2-1.343 2-3 2m0-8c1.11 0 2.08.402 2.599 1M12 8V7m0 1v8m0 0v1m0-1c-1.11 0-2.08-.402-2.599-1M21 12a9 9 0 11-18 0 9 9 0 0118 0z"></path>
                            </svg>
                            ${ requestScope.post.price } Dhs/Hectare
                        </p>
                        <p class="pb-2 flex border-r-4 border-white">
                            <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M8 7V3m8 4V3m-9 8h10M5 21h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v12a2 2 0 002 2z"></path>
                            </svg>
                            ${ requestScope.post.date }
                        </p>
                        <p>${ requestScope.post.description }</p>
                        <a class="flex items-center justify-center p-4 mb-8 text-sm font-semibold text-white bg-green-700 rounded-lg shadow-md focus:outline-none mt-3" href="/home" >
                            <button type="button">Back to home</button>
                            <div class="flex items-center">
                                <span></span>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
            <!-- ========== GRID END ============-->
        </div>
    </div>
</section>

<jsp:include page="WEB-INF/footer.jsp" />