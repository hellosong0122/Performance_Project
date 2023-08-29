<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../base/base.jsp"></c:import> 
</head>
<body>
    <section class="container mt-5 mx-auto" style="width: 75%;">
        <h2>공연 제목</h2>

        <table class="table">
            <tr>
                <td rowspan="8" width="20%">이미지</td>
                <th width="10%">공연장소</th>
                <td></td>
            </tr>
            <tr>
                <th>공연기간</th>
                <td></td>
            </tr>
            <tr>
                <th>공연시간</th>
                <td></td>
            </tr>
            <tr>
                <th>출연진</th>
                <td></td>
            </tr>
            <tr>
                <th>티켓가격</th>
                <td>
                    <ul style="list-style-type: none; padding-left: 0;">
                    <li>VIP석 </li>
                    <li>R석 </li>
                    <li>S석 </li>
                    <li>A석 </li>
                    </ul>
                </td>
            </tr>
        </table>
        <div class="mb-5">
            <button>예매하기</button>
        </div>

        <ul class="nav nav-underline">
            <li class="nav-item">
              <a class="nav-link active" id="review" aria-current="page" href="#">관람후기</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" id="map" href="#">오시는 길</a>
            </li>
          </ul>
          <hr style="margin-top: 0;">
    </section>
</body>
<script>
    const review = document.getElementById('review');
    const map = document.getElementById('map');

    map.addEventListener('click', function(){
        review.classList.toggle('active');
        map.classList.toggle('active');
    })

    review.addEventListener('click', function(){
        map.classList.toggle('active');
        review.classList.toggle('active');
    })
</script>
</html>