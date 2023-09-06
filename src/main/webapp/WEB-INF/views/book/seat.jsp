<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Document</title>
	<link rel="stylesheet" href="/resources/css/seat.css">
</head>
<body>
	<div class="seat-wrapper">
		<!-- 전체좌석-->
		<!-- VIP -->
		<div>
			<c:forEach items="${requestScope.list}" var="v" begin="0" end="9">
				<input type="button" id="${v.title}" name="seats" class="seat VIP" data-price="${v.price}" data-num="${v.seat_num}" value="${v.title}">
			</c:forEach>
		</div>
		<!-- R -->
		<div>
			<c:forEach items="${requestScope.list}" var="v" begin="10" end="19">
				<input type="button" id="${v.title}" name="seats" class="seat R" data-price="${v.price}" data-num="${v.seat_num}" value="${v.title}">
			</c:forEach>
		</div>
		<div>
			<c:forEach items="${requestScope.list}" var="v" begin="20" end="29">
				<input type="button" id="${v.title}" name="seats" class="seat R" data-price="${v.price}" data-num="${v.seat_num}" value="${v.title}">
			</c:forEach>
		</div>
		<div>
			<c:forEach items="${requestScope.list}" var="v" begin="30" end="39">
				<input type="button" id="${v.title}" name="seats" class="seat R" data-price="${v.price}" data-num="${v.seat_num}" value="${v.title}">
			</c:forEach>
		</div>
		<!-- S -->
		<div>
			<c:forEach items="${requestScope.list}" var="v" begin="40" end="49">
				<input type="button" id="${v.title}" name="seats" class="seat S" data-price="${v.price}" data-num="${v.seat_num}" value="${v.title}">
			</c:forEach>
		</div>
		<div>
			<c:forEach items="${requestScope.list}" var="v" begin="50" end="59">
				<input type="button" id="${v.title}" name="seats" class="seat S" data-price="${v.price}" data-num="${v.seat_num}" value="${v.title}">
			</c:forEach>
		</div>
		<div>
			<c:forEach items="${requestScope.list}" var="v" begin="60" end="69">
				<input type="button" id="${v.title}" name="seats" class="seat S" data-price="${v.price}" data-num="${v.seat_num}" value="${v.title}">
			</c:forEach>
		</div>
		<div>
			<c:forEach items="${requestScope.list}" var="v" begin="70" end="79">
				<input type="button" id="${v.title}" name="seats" class="seat S" data-price="${v.price}" data-num="${v.seat_num}" value="${v.title}">
			</c:forEach>
		</div>
		<!-- A -->
		<div>
			<c:forEach items="${requestScope.list}" var="v" begin="80" end="89">
				<input type="button" id="${v.title}" name="seats" class="seat A" data-price="${v.price}" data-num="${v.seat_num}" value="${v.title}">
			</c:forEach>
		</div>
		<div>
			<c:forEach items="${requestScope.list}" var="v" begin="90" end="99">
				<input type="button" id="${v.title}" name="seats" class="seat A" data-price="${v.price}" data-num="${v.seat_num}" value="${v.title}">
			</c:forEach>
		</div>
		<div>
			<c:forEach items="${requestScope.list}" var="v" begin="100" end="109">
				<input type="button" id="${v.title}" name="seats" class="seat A" data-price="${v.price}" data-num="${v.seat_num}" value="${v.title}">
			</c:forEach>
		</div>
		<div>
			<c:forEach items="${requestScope.list}" var="v" begin="110" end="119">
				<input type="button" id="${v.title}" name="seats" class="seat A" data-price="${v.price}" data-num="${v.seat_num}" value="${v.title}">
			</c:forEach>
		</div>
		<div>
			<c:forEach items="${requestScope.list}" var="v" begin="120" end="129">
				<input type="button" id="${v.title}" name="seats" class="seat A" data-price="${v.price}" data-num="${v.seat_num}" value="${v.title}">
			</c:forEach>
		</div>
		<div>
			<c:forEach items="${requestScope.list}" var="v" begin="130" end="139">
				<input type="button" id="${v.title}" name="seats" class="seat A" data-price="${v.price}" data-num="${v.seat_num}" value="${v.title}">
			</c:forEach>
		</div>
		<div>
			<c:forEach items="${requestScope.list}" var="v" begin="140" end="149">
				<input type="button" id="${v.title}" name="seats" class="seat A" data-price="${v.price}" data-num="${v.seat_num}" value="${v.title}">
			</c:forEach>
		</div>
	</div>
	<div class="seatlist">
		<table class="seatTable">
			<thead>
				<tr>
					<td>선택한 좌석</td>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>
						<!--좌석출력-->
						<div class="selectedseats"></div>
						
					</td>
				</tr>
			</tbody>
		</table>
	</div>

	<button type="button" id="goToPay" style="color: red;">좌석 예약</button>

</body>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="/resources/js/book/seat.js"></script>

</html>