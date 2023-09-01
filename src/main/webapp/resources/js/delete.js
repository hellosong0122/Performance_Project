const frm = document.getElementById('frm');
const delBtn = document.getElementById('delBtn');

delBtn.addEventListener('click', function(){
    let result = confirm('삭제하시겠습니까?');
    let url = this.getAttribute('data-url'); 
    if(result){
        frm.method = 'post';
        frm.action = url;
        frm.submit();
    }
})

