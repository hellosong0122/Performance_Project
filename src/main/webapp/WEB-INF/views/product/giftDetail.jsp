<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <!DOCTYPE html>
        <html>

        <head>
            <meta charset="UTF-8">
            <title>Insert title here</title>
            <c:import url="../base/base.jsp"></c:import>
        <style type="text/css">
        span{
        	color:white;ss
        }
        .btn{
        	--bs-btn-color: white;
   		 	--bs-btn-bg: #424649;
        }
        
        </style>
        </head>

        <body>
            <c:import url="../base/header.jsp"></c:import>
            <br>
            <section class="container my-5 mx-auto" style="width: 70%;">
                <div class="container py-md-5">
                    <!-- product right -->
                    <div class="left-ads-display wthree">
                        <div class="row">
                            <div class="desc1-left col-md-6">
                                <img src="${giftDetail.p_Image}" class="img-fluid" alt="">
                            </div>
                            <div class="desc1-right col-md-6 pl-lg-3">
                                <form action="../pay/buygift" method="post" class="w3pvt-newsletter subscribe-sec">

                                    <!-- p_Num -->
                                    <input type="hidden" id="h_p_Num" name="p_Num" value="${giftDetail.p_Num}">
									 <br>
                                    <!-- Name -->
                                    <input type="hidden" id="h_p_Name" name="p_Name" value="${giftDetail.p_Name}">
                                    <h3 id="p_Name">${giftDetail.p_Name}</h3>

									 <br>
                                    <!-- p_Price -->
                                    <input type="hidden" id="h_p_Price" name="p_Price" value="${giftDetail.p_Price}">
                                    <h5 id="p_Price" name="p_Price">${giftDetail.p_Price}</h5>
									<br>
                                    <div class="price_total">
                                        <p class="price_num">
                                            <!--  -->
                                            총 <span id="counter" name="counter"
                                                class="ui_total_count text_num">1</span>개
                                        </p>
                                        <br>
                                        <div class="c_prd_price c_product_price_style5">
                                            <dl class="price">
                                                <dd>
                                                    <strong>
                                                        <input type="hidden" id="h_p_Total" name="p_Total" value="${giftDetail.p_Price}">
                                                        <span class="value ui_total_price" id="p_Total"
                                                            name="p_Total"></span>
                                                        <span class="unit">원</span>
                                                    </strong>
                                                </dd>
                                            </dl>
                                        </div>
                                    </div>
									<br>
                                    <div class="container1">
                                        <div class="counter1">

                                            <!-- Counter decreate  -->
                                            <button type="button" id="decrement-btn" onclick="decrement();">-</button>

                                            <!-- Counter -->
                                            <input type="hidden" id="h_p_Counter" name="p_Counter" value="1">
                                            <span id="p_Counter" style="color:white";>1</span>

                                            <!-- Counter increase -->
                                            <button type="button" id="increment-btn" onclick="increment();">+</button>
                                        
                                        </div>
                                    </div>
                                    <br>
                                    <p>${giftDetail.p_Description}</p> 
                                    <button class="btn submit">Buy</button>                               
                                </form>
                                   <br><br><br>
                                      
                                      <button type="button" id="add_cart" class="btn submit">Add Cart</button>                                   
                                                              
                            </div>
                        </div>
                    </div>
                </div>
         
            </section>
            <c:import url="../base/footer.jsp"></c:import>

            <script src="../../../resources/js/gift.js"></script>
        </body>

        </html>