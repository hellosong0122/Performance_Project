<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../base/base.jsp"></c:import>
<!-- bootrap -->
<link href="../../../resources/css/gift-detail-bootstrap.css" rel="stylesheet">
<!-- font css -->
<link href="../../../resources/css/gift-detail-font.css" rel="stylesheet">
<!-- gift-detail-style.css -->
<link href="../../../resources/css/gift-detail-style.css" rel="stylesheet">
</head>
<body>
    <c:import url="../base/header.jsp"></c:import>
 <br>
    <section class="banner-bottom py-5">
        <div class="container py-md-5">
            <!-- product right -->
            <div class="left-ads-display wthree">
                <div class="row">
                    <div class="desc1-left col-md-6">
                        <img src="${giftDetail.p_Image}" class="img-fluid" alt="">
                    </div>
                    <div class="desc1-right col-md-6 pl-lg-3">
                        <h3>${giftDetail.p_Name}</h3><!--check here !!!  -->
                        <h5>${giftDetail.p_Price}</h5>
                        <div class="available mt-3">
                            <form action="#" method="post" class="w3pvt-newsletter subscribe-sec">
                                <button class="btn submit">Buy</button>
                                <button class="btn submit">Add Cart</button>
                            </form>
                            <span><a href="#">login to save in wishlist </a></span>
                            <p>Lorem Ipsum has been the industry's standard since the 1500s. Praesent ullamcorper dui turpis.. </p>
                        </div>
                        <div class="share-desc mt-5">
                            <div class="share text-left">
                                <h4>Share Product :</h4>
                                <div class="social-ficons mt-4">
                                    <ul>
                                        <li><a href="#"><span class="fa fa-facebook"></span> Facebook</a></li>
                                        <li><a href="#"><span class="fa fa-twitter"></span> Twitter</a></li>
                                        <li><a href="#"><span class="fa fa-google"></span>Google</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                    </div>


                </div>
                <div class="row sub-para-w3pvt my-5">

                    <h3 class="shop-sing">Lorem ipsum dolor sit amet</h3>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elPellentesque vehicula augue eget nisl ullamcorper, molestie blandit ipsum auctor. Mauris volutpat augue dolor.Consectetur adipisicing elit, sed do eiusmod tempor incididunt ut lab ore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco. labore et dolore magna aliqua.</p>
                    <p class="mt-3 italic-blue">Consectetur adipisicing elPellentesque vehicula augue eget nisl ullamcorper, molestie blandit ipsum auctor. Mauris volutpat augue dolor.Consectetur adipisicing elit, sed do eiusmod tempor incididunt ut lab ore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco. labore et dolore magna aliqua.</p>
                    <p class="mt-3">Lorem ipsum dolor sit amet, consectetur adipisicing elPellentesque vehicula augue eget nisl ullamcorper, molestie blandit ipsum auctor. Mauris volutpat augue dolor.Consectetur adipisicing elit, sed do eiusmod tempor incididunt ut lab ore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco. labore et dolore magna aliqua.</p>
                </div>


                <!--/row-->
                <h3 class="title-wthree-single my-lg-5 my-4 text-left">Featured Bags</h3>
                <div class="row shop-wthree-info text-center">
                    <div class="col-md-3 shop-info-grid text-center mt-4">
                        <div class="product-shoe-info shoe">
                            <div class="men-thumb-item">
                                <img src="images/b1.jpg" class="img-fluid" alt="">

                            </div>
                            <div class="item-info-product">
                                <h4>
                                    <a href="single.html">Messenger Bag </a>
                                </h4>

                                <div class="product_price">
                                    <div class="grid-price">
                                        <span class="money"><span class="line">$799</span> $675.00</span>
                                    </div>
                                </div>
                                <ul class="stars">
                                    <li><a href="#"><span class="fa fa-star" aria-hidden="true"></span></a></li>
                                    <li><a href="#"><span class="fa fa-star" aria-hidden="true"></span></a></li>
                                    <li><a href="#"><span class="fa fa-star-half-o" aria-hidden="true"></span></a></li>
                                    <li><a href="#"><span class="fa fa-star-half-o" aria-hidden="true"></span></a></li>
                                    <li><a href="#"><span class="fa fa-star-o" aria-hidden="true"></span></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 shop-info-grid text-center mt-4">
                        <div class="product-shoe-info shoe">
                            <div class="men-thumb-item">
                                <img src="images/b2.jpg" class="img-fluid" alt="">

                            </div>
                            <div class="item-info-product">
                                <h4>
                                    <a href="single.html">Shoulder Bag (Pink) </a>
                                </h4>

                                <div class="product_price">
                                    <div class="grid-price">
                                        <span class="money"><span class="line">$799</span> $675.00</span>
                                    </div>
                                </div>
                                <ul class="stars">
                                    <li><a href="#"><span class="fa fa-star" aria-hidden="true"></span></a></li>
                                    <li><a href="#"><span class="fa fa-star" aria-hidden="true"></span></a></li>
                                    <li><a href="#"><span class="fa fa-star-half-o" aria-hidden="true"></span></a></li>
                                    <li><a href="#"><span class="fa fa-star-half-o" aria-hidden="true"></span></a></li>
                                    <li><a href="#"><span class="fa fa-star-o" aria-hidden="true"></span></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 shop-info-grid text-center mt-4">
                        <div class="product-shoe-info shoe">
                            <div class="men-thumb-item">
                                <img src="images/b3.jpg" class="img-fluid" alt="">

                            </div>
                            <div class="item-info-product">
                                <h4>
                                    <a href="single.html">Sling Bag </a>
                                </h4>

                                <div class="product_price">
                                    <div class="grid-price">
                                        <span class="money"><span class="line">$599</span> $475.00</span>
                                    </div>
                                </div>
                                <ul class="stars">
                                    <li><a href="#"><span class="fa fa-star" aria-hidden="true"></span></a></li>
                                    <li><a href="#"><span class="fa fa-star" aria-hidden="true"></span></a></li>
                                    <li><a href="#"><span class="fa fa-star-half-o" aria-hidden="true"></span></a></li>
                                    <li><a href="#"><span class="fa fa-star-half-o" aria-hidden="true"></span></a></li>
                                    <li><a href="#"><span class="fa fa-star-o" aria-hidden="true"></span></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 shop-info-grid text-center mt-4">
                        <div class="product-shoe-info shoe">
                            <div class="men-thumb-item">
                                <img src="images/b4.jpg" class="img-fluid" alt="">

                            </div>
                            <div class="item-info-product">
                                <h4>
                                    <a href="single.html">Tote (Blue) </a>
                                </h4>

                                <div class="product_price">
                                    <div class="grid-price">
                                        <span class="money"><span class="line">$799</span> $675.00</span>
                                    </div>
                                </div>
                                <ul class="stars">
                                    <li><a href="#"><span class="fa fa-star" aria-hidden="true"></span></a></li>
                                    <li><a href="#"><span class="fa fa-star" aria-hidden="true"></span></a></li>
                                    <li><a href="#"><span class="fa fa-star-half-o" aria-hidden="true"></span></a></li>
                                    <li><a href="#"><span class="fa fa-star-half-o" aria-hidden="true"></span></a></li>
                                    <li><a href="#"><span class="fa fa-star-o" aria-hidden="true"></span></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>

                </div>
                <!--//row-->

            </div>
        </div>
    </section>
    <c:import url="../base/footer.jsp"></c:import>
</body>
</html>