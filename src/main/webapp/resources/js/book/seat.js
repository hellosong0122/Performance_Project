//선택한 좌석 태그 id 넣어둠 (반복문 돌려서 선택한 태그의 속성값에서 금액, 좌석명, pk 등 가져올 수 있음)
const arr = [];

$("input").on("click", function(e){
    //좌석명
    let val = $(this).val();
    //기존 티켓 금액에 + 되어야할 좌석 금액
    let price = $(this).attr('data-price');
    //좌석테이블 PK
    let num = $(this).attr('data-num');

    console.log(val);
    console.log(price);
    console.log(num);

    //click class가 존재할때(제거해주는 toggle)
    if (this.classList.contains("clicked")) {
        this.classList.remove("clicked");
    //click class가 존재하지 않을때 (추가해주는 toggle)
    } else {
        this.classList.add("clicked");
    };

    clicked = document.querySelectorAll(".clicked");
        clicked.forEach((data) => {
            //중복 제거
            if (!arr.includes(data.val)) {
                arr.push(data.val);
            }
        })

    console.log(arr);

    return false;
});