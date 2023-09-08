//좌석 선택
$("input").on("click", function(e){
    //좌석명
    let val = $(this).val();
    //기존 티켓 금액에 + 되어야할 좌석 금액
    let price = $(this).attr('data-price');
    //좌석테이블 PK
    let num = $(this).attr('data-num');

    // console.log(val);
    // console.log(price);
    // console.log(num);

    
    let clickedSeat = document.querySelector(".clicked")
    
    
    //click class가 존재할때(제거해주는 toggle)
    if (this.classList.contains("clicked")) {
        this.classList.remove("clicked");
        //click class가 존재하지 않을때 (추가해주는 toggle)
    } else { 
        this.classList.add("clicked");
    };
    
    return false;
});



//좌석 선택 완료
$("#goToPay").on("click", function(){
    console.log("click123");
    let arr = []; //선택한 좌석 태그 id 넣어둠 (반복문 돌려서 선택한 태그의 속성값에서 금액, 좌석명, pk 등 가져올 수 있음)
    clicked = document.querySelectorAll(".clicked");
        clicked.forEach((data) => {
            //중복 제거
            if (!arr.includes(data.value)) {
                arr.push(data.value);
            }
        })
    console.log(arr);

    if (arr.length === 0) {
        alert("[안내] 좌석을 선택해주세요.");
        return false;
    }
 // 페이지 넘기는거 작업하는곳
    
    // 선택한 좌석 정보를 URL로
    const seat = arr.join(","); //join() 메서드는 배열의 모든 요소를 연결해 하나의 문자열로 만듭니다.
    const seatUrl = `./checkBeforePay?seat=${seat}`;

    //선택좌석 세션저장
    // let selectedSeats= [];
    // sessionStorage.setItem('selectedSeats', JSON.stringify(selectedSeats));
    // console.log(sessionStorage.getItem('selectedSeats'))


    // 페이지 이동
    window.location.href = seatUrl;

    return false;
});