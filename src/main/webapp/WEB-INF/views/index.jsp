
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">

  <head>
 
   <!-- Link Swiper's CSS -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@10/swiper-bundle.min.css" />

  <!-- Demo styles -->
  <style>
    html,
    body {
      position: relative;
      height: 100%;
    }

    body {
      background: #eee;
      font-family: Helvetica Neue, Helvetica, Arial, sans-serif;
      font-size: 14px;
      color: #000;
      margin: 0;
      padding: 0;
    }

    .swiper {
      width: 100%;
      height: 100%;
    }

    .swiper-slide {
      text-align: center;
      font-size: 18px;
      background: #fff;
      display: flex;
      justify-content: center;
      align-items: center;
    }

    .swiper-slide img {
      display: block;
      width: 100%;
      height: 100%;
      object-fit: cover;
    }
  </style>
	<c:import url="./base/base.jsp"></c:import>
	<title></title>
  </head>

<body>
	<c:import url="./base/header.jsp"></c:import>
  <!-- ***** Preloader Start ***** -->
  <div id="js-preloader" class="js-preloader">
    <div class="preloader-inner">
      <span class="dot"></span>
      <div class="dots">
        <span></span>
        <span></span>
        <span></span>
      </div>
    </div>
  </div>
  <!-- ***** Preloader End ***** -->

 
      <!-- ***** Banner Start ***** -->
  <div class="container">
    <div class="row">
      <div class="col-lg-12">
        <div class="page-content">
			<!-- Swiper -->
			  <div class="swiper mySwiper">
			    <div class="swiper-wrapper">
			      <div class="swiper-slide"><img src="/resources/img/banner1.jpg"></div>
			      <div class="swiper-slide"><img src="/resources/img/banner2.jpg"></div>
			      <div class="swiper-slide"><img src="/resources/img/banner3.jpg"></div>
			      <div class="swiper-slide"><img src="/resources/img/banner4.jpg"></div>
			    </div>
			    <div class="swiper-button-next"></div>
			    <div class="swiper-button-prev"></div>
			    <div class="swiper-pagination"></div>
			  </div>
          <!-- ***** Banner End ***** -->

          <!-- ***** Most Popular Start ***** -->
          <div class="most-popular">
            <div class="row">
            <div class="col-lg-8">
              <div class="featured-games header-text">
                <div class="heading-section">
                  <h4>WHAT'S HOT</h4>
                </div>
                <div class="owl-features owl-carousel owl-loaded owl-drag">
                  <div class="owl-stage-outer">
                  <div class="owl-stage" style="transform: translate3d(-1243px, 0px, 0px); transition: all 0.25s ease 0s; width: 2985px;">
	                  <c:forEach items="${perList}" var="p">
	                  <div class="owl-item cloned" style="width: 218.667px; margin-right: 30px;">
		                  <div class="item" style="padding: 30px 15px 60px 15px">
		                    <div class="thumb">
		                      <img src="${p.poster}" alt="" height="233px">
		                      <div class="hover-effect">
		                        <h6>2.4K Streaming</h6>
		                      </div>
		                    </div>
		                    <h4>${p.prfnm}</h4>
		                    <br>
		                    <ul>
		                      <li><i class="fa fa-star"></i> 5.0</li>
		                    </ul>
		                  </div>
	                  </div>
	                  </c:forEach>
                  </div>
                  </div>
                  <div class="owl-nav">
                  	<button type="button" role="presentation" class="owl-prev">
                  	<span aria-label="Previous">‹</span>
                  	</button>
                  	<button type="button" role="presentation" class="owl-next"><span aria-label="Next">›</span></button></div><div class="owl-dots disabled"></div></div>
              </div>
            </div>
            <div class="col-lg-4">
              <div class="top-streamers">
                <div class="heading-section">
                  <h4><em>Top</em> Streamers</h4>
                </div>
                <ul>
                  <li>
                    <span>01</span>
                    <img src="assets/images/avatar-01.jpg" alt="" style="max-width: 46px; border-radius: 50%; margin-right: 15px;">
                    <h6><i class="fa fa-check"></i> LahutaM</h6>
                    <div class="main-button">
                      <a href="#">Follow</a>
                    </div>
                  </li>
                  <li>
                    <span>02</span>
                    <img src="assets/images/avatar-02.jpg" alt="" style="max-width: 46px; border-radius: 50%; margin-right: 15px;">
                    <h6><i class="fa fa-check"></i> Kengan</h6>
                    <div class="main-button">
                      <a href="#">Follow</a>
                    </div>
                  </li>
                  <li>
                    <span>03</span>
                    <img src="assets/images/avatar-03.jpg" alt="" style="max-width: 46px; border-radius: 50%; margin-right: 15px;">
                    <h6><i class="fa fa-check"></i> Areluwa</h6>
                    <div class="main-button">
                      <a href="#">Follow</a>
                    </div>
                  </li>
                  <li>
                    <span>04</span>
                    <img src="assets/images/avatar-04.jpg" alt="" style="max-width: 46px; border-radius: 50%; margin-right: 15px;">
                    <h6><i class="fa fa-check"></i> Omeg</h6>
                    <div class="main-button">
                      <a href="#">Follow</a>
                    </div>
                  </li>
                  <li>
                    <span>05</span>
                    <img src="assets/images/avatar-01.jpg" alt="" style="max-width: 46px; border-radius: 50%; margin-right: 15px;">
                    <h6><i class="fa fa-check"></i> GangTeam</h6>
                    <div class="main-button">
                      <a href="#">Follow</a>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
          </div>
          <!-- ***** Most Popular End ***** -->
          
          <div class="start-stream">
            <div class="col-lg-12">
              <div class="heading-section">
                <h4>TICKET OPEN ${o.file_name}</h4>
                
              </div>              
              <div class="row">
              <c:forEach items="${openList}" var="o">
                <div class="col-lg-4">
                  <div class="item" style="height:100%;">                
                    <h4>${o.title}</h4>
                    <p>${o.content}</p>
                  </div>
                </div>
               </c:forEach>                
              </div>
            </div>
          </div>
          
          
          
  		 <!-- ***** Banner Start ***** -->
          <div class="main-banner" style="background-image:none;">
            <div class="row">
            <iframe width="560" height="315" src="https://www.youtube.com/embed/cR2ExRbMdEQ?si=M8f5xpWyIA7eAWm7" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
            </div>
          </div>
          <!-- ***** Banner End ***** -->
          
          
          <!-- ***** Gaming Library Start ***** -->
          <div class="gaming-library">
            <div class="col-lg-12">
              <div class="heading-section">
                <h4><em>Your Gaming</em> Library</h4>
              </div>
              <div class="item" >
                <ul>
                  <li><img src="/resources/assets/images/game-01.jpg" alt="" class="templatemo-item"></li>
                  <li><h4>Dota 2</h4><span>Sandbox</span></li>
                  <li><h4>Date Added</h4><span>24/08/2036</span></li>
                  <li><h4>Hours Played</h4><span>634 H 22 Mins</span></li>
                  <li><h4>Currently</h4><span>Downloaded</span></li>
                  <li><div class="main-border-button border-no-active"><a href="#">Donwloaded</a></div></li>
                </ul>
              </div>
              <div class="item">
                <ul>
                  <li><img src="/resources/assets/images/game-02.jpg" alt="" class="templatemo-item"></li>
                  <li><h4>Fortnite</h4><span>Sandbox</span></li>
                  <li><h4>Date Added</h4><span>22/06/2036</span></li>
                  <li><h4>Hours Played</h4><span>740 H 52 Mins</span></li>
                  <li><h4>Currently</h4><span>Downloaded</span></li>
                  <li><div class="main-border-button"><a href="#">Donwload</a></div></li>
                </ul>
              </div>
              <div class="item last-item">
                <ul>
                  <li><img src="/resources/assets/images/game-03.jpg" alt="" class="templatemo-item"></li>
                  <li><h4>CS-GO</h4><span>Sandbox</span></li>
                  <li><h4>Date Added</h4><span>21/04/2036</span></li>
                  <li><h4>Hours Played</h4><span>892 H 14 Mins</span></li>
                  <li><h4>Currently</h4><span>Downloaded</span></li>
                  <li><div class="main-border-button border-no-active"><a href="#">Donwloaded</a></div></li>
                </ul>
              </div>
            </div>
            <div class="col-lg-12">
              <div class="main-button">
                <a href="profile.html">View Your Library</a>
              </div>
            </div>
          </div>
          <!-- ***** Gaming Library End ***** -->
        </div>
      </div>
    </div>
  </div>
 <c:import url="./base/footer.jsp"></c:import>

	<!-- Swiper JS -->
  <script src="https://cdn.jsdelivr.net/npm/swiper@10/swiper-bundle.min.js"></script>

  <!-- Initialize Swiper -->
  <script>
    var swiper = new Swiper(".mySwiper", {
      spaceBetween: 30,
      centeredSlides: true,
      autoplay: {
        delay: 2500,
        disableOnInteraction: false,
      },
      pagination: {
        el: ".swiper-pagination",
        clickable: true,
      },
      navigation: {
        nextEl: ".swiper-button-next",
        prevEl: ".swiper-button-prev",
      },
    });
  </script>
  <!-- Scripts -->
  <!-- Bootstrap core JavaScript -->
  <script src="/resources/vendor/bootstrap/js/bootstrap.min.js"></script>

  <script src="/resources/assets/js/isotope.min.js"></script>
  <script src="/resources/assets/js/owl-carousel.js"></script>
  <script src="/resources/assets/js/tabs.js"></script>
  <script src="/resources/assets/js/popup.js"></script>
  <script src="/resources/assets/js/custom.js"></script>


  </body>

</html>

















