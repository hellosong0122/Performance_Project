
const review = document.getElementById('review');
const map = document.getElementById('map');
const reviewAdd = document.getElementById('reviewAdd');
const reviewList = document.getElementById('reviewList');
const reviewInfo = document.getElementById('reviewInfo');

//오시는 길
map.addEventListener('click', function(){
    review.classList.toggle('active');
    map.classList.toggle('active');
    reviewInfo.innerHTML = '';
})

//댓글
review.addEventListener('click', function(){
    map.classList.toggle('active');
    review.classList.toggle('active');
})

//performance_num 가져오기
let pn = reviewAdd.getAttribute('data-add-num');

//review 등록
reviewAdd.addEventListener('click', function(){
    let id = reviewAdd.getAttribute('data-id');
    
    if(!id){ //로그인 X
        alert('로그인이 필요합니다');
        return;
    }

    let check = confirm('댓글을 등록하시겠습니까?');
    let contents = document.getElementById('contents').value;

    if(check){
        // console.log(pn+": "+contents+": "+id);
        ajax1(pn, contents, id)
    }
})


function ajax1(performance_num, contents, id){
    fetch("/review/add",{
        method: "post",
        body: "performance_num="+performance_num+"&contents="+contents+"&id="+id,
        Headers: {
            "Content-type":"application/x-www-form-urlencoded"
        }
    })
    .then((response)=>{
        return response.text();
    })
    .then((r) => {
        if(r>0){
            alert('댓글이 등록되었습니다');
        }else{
            alert('댓글 등록에 실패하였습니다');
        }
    })
}
