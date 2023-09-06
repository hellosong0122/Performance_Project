
const review = document.getElementById('review');
const map = document.getElementById('map');
const reviewAdd = document.getElementById('reviewAdd');
const reviewList = document.getElementById('reviewList');
const reviewInfo = document.getElementById('reviewInfo');

//오시는 길
map.addEventListener('click', function(){
    review.classList.toggle('active');
    map.classList.toggle('active');
    reviewInfo.style.display ='none';	
})

//댓글
review.addEventListener('click', function(){
    map.classList.toggle('active');
    review.classList.toggle('active');
    reviewInfo.style.display ='block';
})



//performance_num 가져오기
let pn = reviewAdd.getAttribute('data-add-num');

//review 등록
reviewAdd.addEventListener('click', function(){
    let id = reviewAdd.getAttribute('data-id');
    
    if(!id){ //로그인 X
        alert('로그인이 필요합니다');
        location.href = '/member/login'; 
        return;
    }

    let check = confirm('댓글을 등록하시겠습니까?');
    let contents = document.getElementById('contents').value;

    if(check){
        // console.log(pn+": "+contents+": "+id);
        addReview(pn, contents, id);
    }
})

let page = 1;

getList(pn, page);

//review List
function getList(performance_num, page){
    $.ajax({
        type: 'get',
        url: '/review/list',
        data:{
            performance_num: performance_num,
            page: page
        },
        success: function(result){
            // $('#reviewList').append(result);
            $('#reviewList').html(result);
        }
    })
}

//Review Add
function addReview(performance_num, contents, id){
    $.ajax({
        type: 'post',
        url: '/review/add',
        data:{
            performance_num: performance_num,
            contents: contents,
            id: id
        },
        success: function(result){
            if(result.trim()>0){
                alert('댓글이 등록되었습니다');
                $('#contents').val('');
                // $('#reviewList').empty();
                page = 1;
                getList(pn, page);
            }else{
                alert('댓글 등록에 실패하였습니다');
            }
        }
    })
}

// 페이징
$('#reviewList').on('click','.move', function(){
    page = $(this).attr('data-num');
    // console.log(page)
    // $('#reviewList').empty();
    getList(pn, page);
})


//Review 삭제
$('#reviewList').on('click', '.reviewDel', function(){
    let result = confirm('삭제하시겠습니까?');
    let rn = $(this).attr('data-num');
    if(result){
        // console.log(rn);
        delReview(rn);
    }
})

//review delete
function delReview(review_num){
    $.ajax({
        type: 'post',
        url: '/review/delete',
        data: {
            review_num: review_num
        },
        success: function(result){
            if(result.trim()>0){
                alert('댓글이 삭제되었습니다');
                // $('#reviewList').empty();
                page = 1;
                getList(pn, page);
            }else{
                alert('댓글 삭제에 실패하였습니다');
            }
        }
    })
}

//Review 수정
$('#reviewList').on('click', '.reviewUp', function(){
    let result = confirm('수정하시겠습니까?');
    if(result){
        let a = '<input type="text" name="contents">'
        let contents = $(this).closest('.re').siblings('.contents');
        contents.html(a);
        $(this).removeClass('reviewUp').addClass('Update');
    }
})

$('#reviewList').on('click', '.Update', function(){
    let rn = $(this).attr('data-num');
    page = $(this).attr('data-page');
    
    //input value -> name = contents
    let contents = $(this).closest('.re').siblings('.contents').children().val();
    // console.log(contents);
    upReview(rn, contents, page);
})

//Review update
function upReview(review_num, contents, page){
    $.ajax({
        type: 'post',
        url: '/review/update',
        data: {
            review_num: review_num,
            contents: contents
        },
        success: function(result){
            if(result.trim()>0){
                alert('댓글이 수정되었습니다');
                getList(pn, page);
            }else{
                alert('댓글 수정에 실패하였습니다');
            }
        }
    })
}

//좋아요
$('#reviewList').on('click', '.good', function(){
    let rn = $(this).attr('data-num');
    let id = $(this).attr('data-id');
    page = $(this).attr('data-page');

    if(!id){ //로그인X
        alert('로그인한 사람만 좋아요를 누를 수 있습니다');
        return;
    }

    good(rn, id, page);
})

//good update
function good(review_num, id, page){
    $.ajax({
        type: 'post',
        url: '/review/good',
        data: {
            review_num: review_num,
            id: id
        },
        success: function(result){
            // $('#reviewList').empty();
            // console.log(page);
            getList(pn, page);
        }
    })
}