<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<script>
    //로컬스토리지에서 공연정보가져오기
    let showPerInfo = localStorage.getItem('selectedPerformance');
    //showPerInfo에 저장된json형식의 문자열을 자바스크립트 객체로 변환, ? 삼항연산자
    let selectedPerformance = showPerInfo ? JSON.parse(showPerInfo) : null;      
    // 캘린더에서 세션에서 선택된 날짜와 시간을 읽어옴
    let selectedDate = JSON.parse(sessionStorage.getItem('selectedDate'));
    let selectedTime = sessionStorage.getItem('selectedTime');
    // 좌석에서 세션으로 선택된 좌석 읽어줌
    let selSeats = sessionStorage.getItem('selSeat');
</script>
<body>
	<h1>확인</h1>
    <!-- 공연정보 가져오기 -->
    <form action="practice.jsp">
    <div>
        <p>공연명: <span id="prfnm"></span></p>
        <p>공연 번호: <span id="performance_num"></span></p>
        <p>예약날짜: <span id="selectedDate"></span></p>
        <p>예약시간: <span id="selectedTime"></span></p>
        <p>선택한 좌석: <span id="selectedSeats"></span></p>
    </div>
    </form>
    <script>
        if (selectedPerformance) {
            document.getElementById('prfnm').textContent = selectedPerformance.prfnm;
            document.getElementById('performance_num').textContent = selectedPerformance.performance_num;
        }
        if (selectedDate) {
        // 선택된 날짜 정보를 화면에 출력
        document.getElementById('selectedDate').textContent = selectedDate.month + '월 ' + selectedDate.day + '일';
        } else {
            console.log('선택된 날짜 또는 시간이 없습니다.');
        }
        if (selectedTime) {
        // 선택된 날짜 정보를 화면에 출력
        document.getElementById('selectedTime').textContent = selectedTime;
        } else {
            console.log('선택된 날짜 또는 시간이 없습니다.');
        }

        //좌석
        let seatDiv = document.getElementById('selectedSeats');

       // 선택된 좌석 정보를 화면에 출력
        if (selSeats) {
            selectedSeats = JSON.parse(selSeats);
            // 선택된 좌석들을 div에 표시
            seatDiv.textContent = selectedSeats.join(", ");
        }
</script>   
    

        <button type="button" onclick="location.href='practice'">결제하기</button>  
</body>
</html>