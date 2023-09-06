<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../temp/bootStrap.jsp"></c:import>
</head>
<body>
<c:import url="../temp/header.jsp"></c:import>
	<h1>Detail Page</h1>
	
	<section class="container mt-5">
		<h1 class="mb-3 text-center">Detail Page</h1>
		
		<h1>Title : ${requestScope.dto.title}</h1>
		<table class="table table-success table-sm">
				
			<thead>
				<tr>
					<td>번호</td><td>제목</td><td>이름</td><td>날짜</td><td>조회수</td>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>${dto.num}</td>
					<td>${dto.title}</td>
					<td>${dto.memberDto.name}</td>
					<td>${dto.regDate}</td>
					<td>${dto.hit}</td>
				</tr>
			</tbody>
		</table>
		<table class="table table-success table-sm">
			<tr>
				<td>내용</td>
			</tr>
			<tr>
				<td>${dto.content}</td>
			</tr>
		</table>
		
		<div>
			<c:forEach items="${dto.nfDto}" var="f">
				<a href="../resources/upload/${board}/${f.file_name}">${f.origin_name}</a>
			</c:forEach>
		</div>
		
		<c:if test="${board ne 'notice'}">
		<!-- <a class="btn btn-outline-primary" for="btn-check-outlined" href="./reply?num=${dto.num}">답글</a> -->
		<button id="reply" class="c1" data-url="reply"></button>
		</c:if>
		<button id="update" data-val="${dto.num}" class="c1">수정</button>
		<button id="delete" data-val="${dto.num}" class="btn btn-outline-primary c1">삭제</button>
			
		<script src="/resources/js/board/detail.js"></script>
	</section>
</body>
</html>