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
    <c:import url="../base/header.jsp"></c:import>
    <section class="container mt-5">
        <h1 class="mb-5 text-center">공연시설 관리</h1>

	    <button type="button" class="btn btn-dark" id="btn">공연시설 등록하기</button>
        <br><br>
        <table class="table table-hover">
            <thead>
                <tr class="table-dark">
                    <th>공연시설명</th>
                    <th>주소</th>
                    <th>전화번호</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${list}" var="d">
                    <tr>
                        <td>${d.fcltynm}</td>
                        <td>${d.adres}</td>
                        <td>${d.telno}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>

        <nav aria-label="Page navigation example">
            <ul class="pagination">
              <li class="page-item ${pager.pre?'':'disabled'}">
                <a class="page-link move" href="./placeList?page=${pager.startNum-1}" aria-label="Previous">
                  <span aria-hidden="true">&laquo;</span>
                </a>
              </li>
              <c:forEach begin="${pager.startNum}" end="${pager.lastNum}" var="i">
                  <li class="page-item"><a class="page-link move" href="./placeList?page=${i}">${i}</a></li>
              </c:forEach>
              <li class="page-item ${pager.next?'':'disabled'}">
                <a class="page-link move" href="./placeList?page=${pager.lastNum+1}" aria-label="Next">
                  <span aria-hidden="true">&raquo;</span>
                </a>
              </li>
            </ul>
          </nav>
    </section>

    <script>
        const btn = document.getElementById('btn');
        btn.addEventListener('click', function(){
            location.href='/performance/placeAdd';
        })
    </script>
</body>
</html>