<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../base/base.jsp"></c:import>
	<style type="text/css">
		p {
			color: white;
		}
	</style>
</head>
<body>
<c:import url="../base/header.jsp"></c:import>
	
	<section class="container my-5 mx-auto" style="width: 70%; padding: 90px 0 0 0;">
		<h1 class="mb-3 text-center">${requestScope.dto.title}</h1>		

		<table class="table table-success table-sm" style="--bs-table-bg: black; --bs-table-color: white;">
			<thead>
				<tr>
					<td>번호</td><td>이름</td><td>날짜</td><td>조회수</td>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>${dto.num}</td>					
					<td>${dto.memberDto.name}</td>
					<td>${dto.regDate}</td>
					<td>${dto.hit}</td>
				</tr>
			</tbody>
		</table>
		<table class="table table-success table-sm"  style="--bs-table-bg: black; --bs-table-color: white;">
			<tr>
				<td>내용</td>
			</tr>
			<tr>
				<td>${dto.content}</td>
			</tr>
		</table>
		
		<div>
			<span style="color:white">첨부파일</span>
			<br>
			<c:forEach items="${dto.nfDto}" var="f">
				<a href="../resources/upload/${board}/${f.file_name}">${f.origin_name}</a>
				<br>
			</c:forEach>			
		</div>		

		<%-- <button id="update" data-val="${dto.num}" class="c1">수정</button>
		<button id="delete" data-val="${dto.num}" class="btn btn-outline-primary c1">삭제</button>
			 --%>
		<script src="/resources/js/board/detail.js"></script>
	</section>
<c:import url="../base/footer.jsp"></c:import>
</body>
</html>