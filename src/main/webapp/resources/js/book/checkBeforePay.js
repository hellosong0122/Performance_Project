//로컬스토리지에서 공연정보가져오기
let showPerInfo = localStorage.getItem('selectedPerformance');
//showPerInfo에 저장된json형식의 문자열을 자바스크립트 객체로 변환, ? 삼항연산자
let selectedPerformance = showPerInfo ? JSON.parse(showPerInfo) : null;
// 캘린더에서 세션에서 선택된 날짜와 시간을 읽어옴
let selectedDate = JSON.parse(sessionStorage.getItem('selectedDate'));

let selectedTime = sessionStorage.getItem('selectedTime');
let basePrice = "";
let username = "";
// 좌석
// let selectedSeats = JSON.parse(sessionStorage.getItem('selectedSeats'));
// const serchSeat = `./checkBeforePay?seat=${seat}`
//const searchParams = new URLSearchParams(location.search);


if (selectedPerformance) {
    document.getElementById('prfnm').textContent = selectedPerformance.prfnm;
    $('#prfnm_input').attr('value', selectedPerformance.prfnm);

    document.getElementById('performance_num').textContent = selectedPerformance.performance_num;
    $('#performance_num_input').attr('value', selectedPerformance.performance_num);

    document.getElementById('fcltynm').textContent = selectedPerformance.fcltynm;
    $('#fcltynm_input').attr('value', selectedPerformance.fcltynm);


    document.getElementById('member_id').textContent = selectedPerformance.member_id;
    $('#member_id_input').attr('value', selectedPerformance.member_id);

    document.getElementById('member_email').textContent = selectedPerformance.member_email;
    $('#member_email_input').attr('value', selectedPerformance.member_email);

    $('#member_num_input').attr('value', selectedPerformance.member_num);
    $('#baseSeatPrie_input').attr('value', selectedPerformance.pcseguidance);
    $('#member_name_input').attr('value', selectedPerformance.member_name);
    console.log("data username : " + selectedPerformance.member_name);
    basePrice = selectedPerformance.pcseguidance;

}

let monthSelected = "";
let dateSelected = "";
if (selectedDate) {

    if (selectedDate.month * 1 < 10) {
        monthSelected = "0" + selectedDate.month;
    } else {
        monthSelected = selectedDate.month;
    }

    if (selectedDate.day * 1 < 10) {
        dateSelected = "0" + selectedDate.day;
    } else {
        dateSelected = selectedDate.day;
    }



    // 선택된 날짜 정보를 화면에 출력
    document.getElementById('selectedDate').textContent = selectedDate.month + '월 ' + selectedDate.day + '일';
    let date = selectedDate.year + "-" + selectedDate.month + "-" + selectedDate.day
    $('#selectedDate_input').attr('value', date);


} else {
    console.log('선택된 날짜 또는 시간이 없습니다.');
}
if (selectedTime) {
    // 선택된 날짜 정보를 화면에 출력
    document.getElementById('selectedTime').textContent = selectedTime;
    $('#selectedTime_input').attr('value', selectedTime);
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
    $('#selectedSeats_input').attr('value', seat);
}

/*        function closePop(){
        //부모창이동
        window.opener.location.href = "../member/login	";
       // 팝업 창 닫기
        window.close();
    } */
