let canBtns = document.getElementsByClassName("canBtn");

for(let i = 0; i < canBtns.length; i++) {
    canBtns[i].addEventListener("click", function(){
        let orderNum = canBtns[i].getAttribute("data-orderNum");
        console.log("티켓번호:", orderNum);

        if (confirm('예매를 취소하시겠습니까?')) {
            window.location.href = './deleteBook?orderNum=' + orderNum;
        }
    });
}
    