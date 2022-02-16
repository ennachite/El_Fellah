<jsp:include page="WEB-INF/header.jsp" />

<jsp:include page="WEB-INF/navbar.jsp" />

<!--====== JOB POSTS PART STARTS ======-->
<section class="pt-120 pb-120">
    <div class="">
        <div class="row justify-center">
            <div class="w-fully lg:w-1/2">
                <div class="section_title text-center pb-6">
                    <h4 class="main_title">Add Offer</h4>
                </div>
                <!-- section title -->
            </div>
        </div>
        <!-- row -->
        <div class="row justify-center text-left w-12/12">
            <!-- ========== GRID START ============-->
            <div class="w-full sm:w-10/12 md:w-6/12 lg:w-12/12 h-12/12">
                <div class="grid_offer text-center mt-8 mx-3">
                    <h2 class="my-6 text-2xl font-semibold text-gray-700 text-left">
                        Forms
                    </h2>
                    <!-- General elements -->
                    <div class="justify-left text-left">
                        <form method="post" action="/add-post" enctype="multipart/form-data">
                            <label class="block text-sm ">
                                <span class="text-black">Offer name</span>
                                <input name="offerName" class="block w-full mt-1 h-8 text-sm pl-2 focus:border-green-600 focus:border-2 border-2 border-gray-400 rounded-md form-input" placeholder="Offer name"/>
                            </label>

                            <label class="block text-sm my-4">
                                <span class="text-black">Owner name</span>
                                <input name="ownerName" class="block w-full mt-1 h-8 text-sm pl-2 focus:border-green-600  focus:border-2 border-2 border-gray-400 rounded-md form-input" placeholder="Owner name"/>
                            </label>

                            <label class="block text-sm my-4">
                                <span class="text-black">Owner phone number</span>
                                <input name="phone" class="block w-full mt-1 h-8 text-sm pl-2 focus:border-green-600  focus:border-2 border-2 border-gray-400 rounded-md form-input" type="tel" placeholder="Phone number"/>
                            </label>

                            <label class="block text-sm my-4">
                                <span class="text-black">Area (Hectare)</span>
                                <input name="area" class="block w-full mt-1 h-8 text-sm pl-2 focus:border-green-600  focus:border-2 border-2 border-gray-400 rounded-md form-input" type="number" min="0" placeholder="Ex: 1000 m2"/>
                            </label>

                            <label class="block text-sm my-4">
                                <span class="text-black">Price/Hectare (MAD)</span>
                                <input name="price" class="block w-full mt-1 h-8 text-sm pl-2 focus:border-green-600  focus:border-2 border-2 border-gray-400 rounded-md form-input" type="number" min="0" placeholder="Ex: 10000"
                                />
                            </label>

                            <label class="block text-sm my-4">
                                <span class="text-black">Location</span>
                                <input name="location" class="block w-full mt-1 h-8 text-sm pl-2 focus:border-green-600  focus:border-2 border-2 border-gray-400 rounded-md form-input" type = "text" placeholder="Country,City"/>
                            </label>

                            <label class="block mt-4 text-sm">
                                <span class="text-gray-700">Description</span>
                                <textarea name="description" class="block w-full mt-1 text-sm focus:border-green-600  focus:border-2 border-2 border-gray-400 rounded-md form-input p-2 h-260 pb-5" rows="3" placeholder="Enter the description of the offer" ></textarea>
                            </label>

                            <div class=" mb-3 lg:mb-2 mx-1 mt-4">
                                <label class="w-64 flex flex-col items-center mb-5 px-4 py-1 bg-white rounded-lg border-2 border-gray-400 hover:border-green-600">
                                    <svg class="w-8 h-8" fill="currentColor" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20">
                                        <path d="M16.88 9.1A4 4 0 0 1 16 17H5a5 5 0 0 1-1-9.9V7a3 3 0 0 1 4.52-2.59A4.98 4.98 0 0 1 17 8c0 .38-.04.74-.12 1.1zM11 11h3l-4-4-4 4h3v3h2v-3z"></path>
                                    </svg>
                                    <span class=" text-base leading-normal">Upload picture</span>
                                    <input name="picture" type='file' class="hidden" accept="image/*" />
                                </label>

                            </div>

                            <a class="flex items-center justify-center p-4 mb-8 text-sm font-semibold text-white bg-green-700 rounded-lg shadow-md focus:outline-none mt-3" href="index.html">
                                <button type="submit">Submit</button>
                                <div class="flex items-center">
                                    <span></span>
                                </div>
                            </a>
                        </form>
                    </div>
                </div>
            </div>
            <!-- ========== GRID END ============-->


        </div>
    </div>
</section>

<jsp:include page="WEB-INF/footer.jsp" />