<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>예매 관리</h1>
    <table>
        <thead>
            <tr>
                <th>티켓번호</th>
                <th>구매자ID</th>
                <th>공연명</th>
                <th>예매날짜</th>
                <th>예매시간</th>
                <th>총 가격</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="a" items="${list}">
                <tr>																
                    <td><a href="/admin/bookDetail?orderNum=${a.orderNum}">${a.orderNum}</a></td>	
                    <td>${a.id}</td>
                    <td>${a.prfnm}</td>
                    <td>${a.performanceDate}</td>
                    <td>${a.performanceTime}</td>
                    <td>${a.totalPrice}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>	

    <nav aria-label="Page navigation example">
        <ul class="pagination justify-content-center">
          <li class="page-item ${pager.pre?'':'disabled'}">
            <a class="page-link move" href=# data-num="${pager.startNum-1}" aria-label="Previous">
              <span aria-hidden="true">&laquo;</span>
            </a>
          </li>
          <c:forEach begin="${pager.startNum}" end="${pager.lastNum}" var="i">
            <li class="page-item"><a class="page-link move" href="/admin/bookList?page=${i}">${i}</a></li>
        </c:forEach>
          <li class="page-item ${pager.next?'':'disabled'}">
            <a class="page-link move" href=# data-num="${pager.lastNum+1}" aria-label="Next">
              <span aria-hidden="true">&raquo;</span>
            </a>
          </li>
        </ul>
      </nav>


</body>
</html>