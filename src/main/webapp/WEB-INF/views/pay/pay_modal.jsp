<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
</head>
<body>
    <!-- ********************************모달 시작****************************** -->
    <button id="payBtn" onclick="iamport()" data-name="${gift.p_Name}" data-price="${gift.p_Price}" data-user="${member.name}" data-email="${member.email}" data-tel="${member.phone}" data-addr="${member.address}">결제하기</button><br>
    <button id="cancelBtn" onclick="iamport()">취소하기</button>
    
    <script src="../../../resources/js/iamportlib.js"></script>
</body>
</html>

