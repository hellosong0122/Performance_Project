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
          
              
        </body>

        </html>