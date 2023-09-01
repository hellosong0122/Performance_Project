<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../base/base.jsp"></c:import>
<style>
    #price {
        list-style-type: none; 
        padding-left: 0;
    }

    #price li {margin-bottom: 10px;}
</style>
</head>
<body>
	<c:import url="../base/header.jsp"></c:import>

    <section class="container my-5 mx-auto" style="width: 70%;">
        <div class="d-flex flex py-5 my-5">
            <div>
                <img src="${dto.performanceDTO.poster}" width="400">
            </div>
            <div class="ms-5 flex-fill">
                <div class="border-4 border-bottom border-dark-subtle">
                    <h3>${dto.performanceDTO.genrenm} <${dto.performanceDTO.prfnm}></h3>
                </div>
                <div class="mt-5">
                    <table class="table table-borderless"> 
                        <tr>
                            <th class="pb-3">공연장소</th>
                            <td class="ps-3">${dto.fcltynm}</td>
                        </tr>
                        <tr>
                            <th class="pb-3">공연기간</th>
                            <td class="ps-3">${dto.performanceDTO.prfpdfrom} ~ ${dto.performanceDTO.prfpdto}</td>
                        </tr>
                        <tr>
                            <th class="pb-3">공연시간</th>
                            <td class="ps-3">${dto.performanceDTO.prfruntime}</td>
                        </tr>
                        <tr>
                            <th class="pb-3">출연진</th>
                            <td class="ps-3">${dto.performanceDTO.prfcast}</td>
                        </tr>
                        <tr>
                            <th class="pb-3">티켓가격</th>
                            <td class="ps-3">
                                <ul id="price">
                                    <li>VIP석 <b>${dto.performanceDTO.pcseguidance+80000}원</b></li>
                                    <li>R석 <b>${dto.performanceDTO.pcseguidance+60000}원</b></li>
                                    <li>S석 <b>${dto.performanceDTO.pcseguidance+40000}원</b></li>
                                    <li>A석 <b>${dto.performanceDTO.pcseguidance}원</b></li> 
                                </ul>
                            </td>
                        </tr>
                    </table>
                </div>
                <div class="d-flex justify-content-end mt-3">
                    <button class="btn btn-dark btn-lg">예매하기</button> 
                </div>
            </div>
        </div>
   
        <div class="mb-3 border-bottom">
            <ul class="nav nav-underline">
                <li class="nav-item">
                    <a class="nav-link active fs-5" id="review" data-target="review" aria-current="page" href="#">댓글</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link fs-5" id="map" data-target="map" href="#">오시는 길</a>
                </li>
            </ul>
        </div>

        

        <div id="reviewInfo" class="mb-5">
            <div class="d-flex">
                <div class="col-sm-7">
                    <textarea name="contents" id="contents" class="form-control" placeholder="기대평이나 관람후기를 작성해주세요"></textarea>
                </div>
                <div class="ms-3">
                    <button type="button" id="reviewAdd" class="btn btn-dark h-100" 
                    data-add-num="${dto.performanceDTO.performance_num}" 
                    data-id = "${member.id}">등록</button>
                </div>
            </div>
            <div id="reviewList">

            </div>
        </div>

    </section>

    <c:import url="../base/footer.jsp"></c:import>

    <script src="/resources/js/detail.js"></script>
</body>


<!-- <script>
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
        fetch("../review/add",{
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
                alert('댓글 등록에 실패했습니다');
            }
        })
    }
</script> -->
</html>