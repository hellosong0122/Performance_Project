const deleteBtn = document.getElementById('deleteBtn')
const btn = document.getElementsByClassName('btn')

// btn.addEventListener('click', function(){
//     let result = confirm('삭제하시겠습니까?');
//     let url = this.getAttribute('data-url'); 
//     if(result){
//         frm.method = 'post';
//         frm.action = url;
//         frm.submit();
//     }
// })

for(let i = 0; i < canBtns.length; i++) {
    btn[i].addEventListener("click", function(){
        let orderNum = btn[i].getAttribute("data-orderNum");
        console.log("티켓번호:", orderNum);

        if (confirm('예매를 취소하시겠습니까?')) {
            window.location.href = './bookDetail?orderNum=' + orderNum;
        }
    });
}
    