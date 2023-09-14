<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <!DOCTYPE html>
        <html>

        <head>
            <meta charset="UTF-8">
            <title>Insert title here</title>
            <script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>
			<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        </head>
        <style>
     
        </style>

        <body> 
            <c:import url="../base/adminLeft.jsp"></c:import>
            <main class="main-content position-relative max-height-vh-100 h-100 mt-1 border-radius-lg " style="margin-left: 3.125rem;">
         
             <section class="container my-5 mx-auto" style="width: 70%;">
             <h2 class="text-center">예매 상세정보</h2>    

            <div class="mt-5">
                <table class="table">
                    <tr>
                        <td rowspan="8" width="20%"><img src="${dto.poster}" width="300"></td>
                        <th width="10%">티켓번호</th>
                        <td>${dto.orderNum}</td>
                    </tr>
                    <tr>
                        <th>공연번호</th>
                        <td>${dto.performance_num}</td>
                    </tr>
                    <tr>
                        <th>공연명</th>
                        <td>${dto.prfnm}</td>
                    </tr>
                    <tr>
                        <th>예약날짜</th>
                        <td>${dto.performanceDate}</td>
                    </tr>
                    <tr>
                        <th>예약시간</th>
                        <td>${dto.performanceTime}</td>
                    </tr> 
                    <tr>
                        <th>선택좌석</th>
                        <td>${dto.perSeat}</td>
                    </tr>
                    <tr>
                        <th>총 가격</th>
                        <td>${dto.totalPrice}</td>
                    </tr>
                    <tr>
                        <th>공연장</th>
                        <td>${dto.fcltynm}</td>
                    </tr>
                    <tr>
                        <th>구매자ID</th>
                        <td>${dto.id}</td>
                    </tr>
                    <tr>
                        <th>회원번호</th>
                        <td>${dto.memberNum}</td>
                    </tr>
                </table>
            </div>
          
            <form id="frm" action="">
                <input type="hidden" name="orderNum" value="${dto.orderNum}">
            </form>
            <div class="d-flex justify-content-end my-5">
                <button type="button" class="btn" id="deleteBtn" data-url="bookDelete">삭제</button>
            </div>
        </section>
        <!-- <script type="text/javascript" src="../../../resources/js/bookDelete.js"></script>   -->
        <!-- <script type="text/javascript" src="../resources/js/bookDelete.js"></script>  -->
       
        <script type="text/javascript" src="/resources/js/bookDelete.js"></script>

        
        <c:import url="../base/adminFooter.jsp"></c:import>
        </main>

        </body>

        </html>