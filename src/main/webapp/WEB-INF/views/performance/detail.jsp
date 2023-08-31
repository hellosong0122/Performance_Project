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

    <section class="container mt-5 mx-auto" style="width: 70%;">
        <div class="d-flex flex mb-5">
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
                                    <li>VIP석 ${dto.performanceDTO.pcseguidance+80000}원</li>
                                    <li>R석 ${dto.performanceDTO.pcseguidance+60000}원</li>
                                    <li>S석 ${dto.performanceDTO.pcseguidance+40000}원</li>
                                    <li>A석 ${dto.performanceDTO.pcseguidance}원</li> 
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
                    <a class="nav-link active" id="review" data-target="review" aria-current="page" href="#">댓글</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" id="map" data-target="map" href="#">오시는 길</a>
                </li>
            </ul>
        </div>

        

        <div id="info" class="d-flex mb-5">
            <div class="col-sm-7">
                <textarea name="contents" id="contents" class="form-control" placeholder="기대평이나 관람후기를 작성해주세요"></textarea>
            </div>
            <div class="ms-3">
                <button type="button" id="reviewAdd" class="btn btn-dark h-100">등록</button>
            </div>
            
            <div id="list">

            </div>
            <div>

            </div>
        </div>
    
    </section>

</body>


<script>
    const review = document.getElementById('review');
    const map = document.getElementById('map');
    const reviewAdd = document.getElementById('reviewAdd');
    const list = document.getElementById('list');
    const info = document.getElementById('info');

    map.addEventListener('click', function(){
        review.classList.toggle('active');
        map.classList.toggle('active');
        info.innerHTML = '';
    })

    review.addEventListener('click', function(){
        map.classList.toggle('active');
        review.classList.toggle('active');
    })

    //review 등록
    reviewAdd.addEventListener('click', function(){
        alert('댓글이 등록되었습니다');
        list.innerHTML = '댓글';
    })
</script>
</html>