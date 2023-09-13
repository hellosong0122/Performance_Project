<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Member Book</title>
   
</head>
<body>

    <table class="table table-primary table-striped table-hover">
        <thead>
            <th>티켓번호</th><th>공연명</th><th>공연시설</th><th>예매날짜</th><th>예매시간</th><th>예매좌석</th><th>총 가격</th><th>예매취소</th>    
        </thead>
        <tbody>
            <c:forEach var="order" items="${memberBook}">
                <tr>																
                    <td>${order.orderNum}</td>	
                    <td>${order.prfnm}</td>
                    <td>${order.fcltynm}</td>
                    <td>${order.performanceDate}</td>
                    <td>${order.performanceTime}</td>
                    <td>${order.perSeat}</td>
                    <td>${order.totalPrice}</td>
                     <td><button type="button" class="canBtn" data-orderNum="${order.orderNum}">취소하기</button></td>
                    </tr>
                </c:forEach>	
            </tbody>	
        </table>
 
        <div align="center">

        </div>	

        <script type="text/javascript" src="../resources/js/memberBook.js"></script>   
        <!-- <script src="../resources/js/seatBefore.js"></script> -->
        <!-- <script type="text/javascript" src="../../../resources/js/member/memberBook.js"> -->
            <!--위에 경로는 왜 안되지 이해가 안된다.... -->
       
 
</body>
</html>
