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
    // 좌석
   // let selectedSeats = JSON.parse(sessionStorage.getItem('selectedSeats'));
   // const serchSeat = `./checkBeforePay?seat=${seat}`
    //const searchParams = new URLSearchParams(location.search);
    
</script>
<body>
	<h1>예매내역 확인하기</h1>
    <!-- 공연정보 가져오기 -->
    <form action="./checkBeforePay" method="post">
    <div>
        <p>공연명: <span id="prfnm"></span></p>
        <p>공연 번호: <span id="performance_num"></span></p>
        <p>구매자 ID: <span id="member_id"></span></p>
        <p>구메자 E-MAIL: <span id="member_email"></span></p>
        <p>예약날짜: <span id="selectedDate"></span></p>    
        <p>예약시간: <span id="selectedTime"></span></p>
        <p>선택한 좌석: <span id="selectedSeats"></span></p>
        <!-- <P>구매금액: </P> -->
    </div>
        <input type="hidden" name="prfnm" id="prfnm_input"/>
        <input type="hidden" name="performance_num" id="performance_num_input">
        <input type="hidden" name="id" id="member_id_input">
        <input type="hidden" name="email" id="member_email_input">
        <input type="hidden" name="reservDate" id="selectedDate_input">
        <input type="hidden" name="reserveTime" id="selectedTime_input">
        <!-- <input type="hidden" name="seatId" id="selectedSeats_input"> -->
      
        <input type="reset" style="color: crimson;" value="취소하기">
        <button type="submit" style="color: blue;">결제하기</button>  
       
    </form>
        <script>
            if (selectedPerformance) {
                document.getElementById('prfnm').textContent = selectedPerformance.prfnm;
                document.getElementById('performance_num').textContent = selectedPerformance.performance_num;
                document.getElementById('member_id').textContent = selectedPerformance.member_id;
                document.getElementById('member_email').textContent = selectedPerformance.member_email;
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

        // URL에서 'seat' 매개변수를 가져오기
        const searchParams = new URLSearchParams(location.search);
            if (searchParams.has('seat')) {
                // 'seat' 매개변수의 값을 가져오기
                const seat = searchParams.get('seat');

                // 선택한 좌석을 화면에 표시
                document.getElementById('selectedSeats').textContent = seat;
            }

            function closePop(){
                //부모창이동
                window.opener.location.href = "../member/login	";
               // 팝업 창 닫기
                window.close();
            }

    </script>   
        

        
</body>
</html>