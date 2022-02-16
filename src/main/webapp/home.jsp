<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="WEB-INF/header.jsp" />

<!--====== HEADER PART START ======-->
<section class="header_area">

<jsp:include page="WEB-INF/navbar.jsp" />


<div id="home" class="header_hero bg-gray relative z-10 overflow-hidden lg:flex items-center">
    <div class="hero_shape shape_1">
        <img src="assets/img/shape/shape-1.svg" alt="shape">
    </div>
    <div class="hero_shape shape_2">
        <img src="assets/img/shape/shape-2.svg" alt="shape">
    </div>
    <div class="hero_shape shape_3">
        <img src="assets/img/shape/shape-3.svg" alt="shape">
    </div>
    <div class="hero_shape shape_4">
        <img src="assets/img/shape/shape-4.svg" alt="shape">
    </div>
    <div class="hero_shape shape_6">
        <img src="assets/img/shape/shape-1.svg" alt="shape">
    </div>
    <div class="hero_shape shape_7">
        <img src="assets/img/shape/shape-4.svg" alt="shape">
    </div>
    <div class="hero_shape shape_8">
        <img src="assets/img/shape/shape-3.svg" alt="shape">
    </div>
    <div class="hero_shape shape_9">
        <img src="assets/img/shape/shape-2.svg" alt="shape">
    </div>
    <div class="hero_shape shape_10">
        <img src="assets/img/shape/shape-4.svg" alt="shape">
    </div>
    <div class="hero_shape shape_11">
        <img src="assets/img/shape/shape-1.svg" alt="shape">
    </div>
    <div class="hero_shape shape_12">
        <img src="assets/img/shape/shape-2.svg" alt="shape">
    </div>

    <div class="container">
        <div class="row">
            <div class="w-full lg:w-1/2">
                <div class="header_hero_content pt-150 lg:pt-0">
                    <h2 class="hero_title text-2xl sm:text-4xl md:text-5xl lg:text-4xl xl:text-5xl font-extrabold">
                        Welcome to our platform <span class="text-green-700">EL FELLAH</span></h2>
                    <h4 class="mt-8 lg:mr-8">Sale of agricultural land in Morocco</h4>
                    <div class="hero-btn mt-10">
                        <a href="#">
                            <button type="button" class="main-btn" onclick="window.location.href='/add-post'">New Offer</button>
                        </a>
                    </div>
                </div>
                <!-- header hero content -->
            </div>
        </div>
        <!-- row -->
    </div>
    <!-- container -->
    <div class="header_shape hidden lg:block"></div>

    <div class="header_image flex items-center">
        <div class="image 2xl:pl-25">
            <img src="assets/img/header-image.png" alt="Header Image" width="200px" height="200px">
        </div>
    </div>
    <!-- header image -->

</div>
<!-- header hero -->
</section>
<!--====== HEADER PART ENDS ======-->

<!--====== ABOUT PART START ======-->
<section class=" py-120" id="about">
    <div class="container">
        <div class="row justify-center">
            <div class="w-full lg:w-1/2">
                <div class="section_title text-center pb-8">
                    <h5 class="sub_title ">Offers</h5>
                    <h4 class="main_title">EL FELLAH</h4>
                </div>
                <!-- section title -->
            </div>
        </div>
        <!-- row -->
        <div class="flex justify-center">
            <c:forEach items="${ requestScope.posts }" var="post">
            <!-- ================== Start grid ================ -->
            <div class="w-full sm:w-10/12 md:w-6/12 lg:w-4/12 mx-5 mb-5">
                <div class="single_services text-center pb-5">
                    <c:choose>
                        <c:when test="${ post.picture != null }">
                            <img src="http://localhost/${ post.picture }" class="w-full h-full"  width="50px" height="80px" alt="">
                        </c:when>
                        <c:otherwise>
                            <img src="assets/img/1.jpg" class="w-full h-full"  width="50px" height="80px" alt="">
                        </c:otherwise>
                    </c:choose>
                    <div class="services_content mt-5">
                        <h3 class="services_title text-black font-semibold text-xl md:text-3xl">${ post.offerName }</h3>
                        <div class="mt-3 xl:mt-10 mx-4">

                            <p class="text-left flex justify-left border-r-4 border-white">
                                <span>${ post.location }</span>
                            </p>
                            <p class="pb-1 text-left flex justify-left border-r-4 border-white">
                                <span>${ post.date }</span>
                            </p>
                            <p class="pb-1 text-left flex justify-left border-r-4 border-white">
                                <span>${ post.area } Hectare</span>
                            </p>
                        </div>
                        <!-- Start Menu of the grid-->
                        <div class="flex flex-row items-center mt-3 border-t border-gray-300 justify-center">
                            <a class="navbar_icones" href="${pageContext.request.contextPath}/details?id=${ post.id }">
                                <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 12a3 3 0 11-6 0 3 3 0 016 0z"></path>
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M2.458 12C3.732 7.943 7.523 5 12 5c4.478 0 8.268 2.943 9.542 7-1.274 4.057-5.064 7-9.542 7-4.477 0-8.268-2.943-9.542-7z"></path>
                                </svg>
                            </a>

                            <a class="navbar_icones" href="${pageContext.request.contextPath}/update?offerId=${ post.id }">
                                <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15.232 5.232l3.536 3.536m-2.036-5.036a2.5 2.5 0 113.536 3.536L6.5 21.036H3v-3.572L16.732 3.732z"></path>
                                </svg>
                            </a>
                            <a class="navbar_icones" href="${pageContext.request.contextPath}/delete?id=${ post.id }">
                                <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 7l-.867 12.142A2 2 0 0116.138 21H7.862a2 2 0 01-1.995-1.858L5 7m5 4v6m4-6v6m1-10V4a1 1 0 00-1-1h-4a1 1 0 00-1 1v3M4 7h16"></path>
                                </svg>
                            </a>

                        </div>
                        <!-- End Menu of the grid-->
                    </div>

                </div>
                <!-- single services -->
            </div>
            <!-- ================== End grid ================ -->
            </c:forEach>
        </div>
        <!-- row -->
    </div>
    <!-- container -->
</section>
<!--====== ABOUT PART ENDS ======-->

<jsp:include page="WEB-INF/footer.jsp" />