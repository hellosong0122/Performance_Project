<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <!DOCTYPE html>
        <html>

        <head>
            <meta charset="UTF-8">
            <title>Insert title here</title>
            <script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>
			<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
			<link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet"
                id="bootstrap-css">
            <script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
        </head>
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

        <body>
            <h1>예매내역 확인하기</h1>
            <!-- 공연정보 가져오기 -->

                <div>
                    <p>공연명: <span id="prfnm"></span></p>
                    <p>공연 번호: <span id="performance_num"></span></p>
                    <p>구매자 ID: <span id="member_id"></span></p>
                    <p>구메자 E-MAIL: <span id="member_email"></span></p>
                    <p>예약날짜: <span id="selectedDate"></span></p>
                    <p>상연시간: <span id="selectedTime"></span></p>
                    <p>선택한 좌석: <span id="selectedSeats"></span></p>
                    <p>결제할 금액: <span id="priceValue"></span></p>
                    <!-- <P>구매금액: </P> -->
                </div>
                <input type="hidden" name="prfnm" id="prfnm_input" />
                <input type="hidden" name="performance_num" id="performance_num_input">
                <input type="hidden" name="num" id="member_num_input">
                <input type="hidden" name="id" id="member_id_input">
                <input type="hidden" name="name" id="member_name_input">
                <input type="hidden" name="email" id="member_email_input">
                <input type="hidden" name="reservDate" id="selectedDate_input">
                <input type="hidden" name="reserveTime" id="selectedTime_input">
                <input type="hidden" name="seatId" id="selectedSeats_input">
                <input type="hidden" name="baseSeatPrie" id="baseSeatPrie_input">

                <input type="reset" style="color: crimson;" value="취소하기">
                <button type="button"  style="color: blue;"
                    id="payBtn" >결제하기</button>

            <script src="../../../resources/js/book/checkBeforePay.js"></script>
            <script src="../../../resources/js/iamportpay.js"></script>        


        </body>

        </html>