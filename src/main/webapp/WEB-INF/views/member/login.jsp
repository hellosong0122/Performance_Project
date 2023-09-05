<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html  PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../temp/bootStrap.jsp"></c:import>
</head>
<body>
	<c:import url="../temp/header.jsp"></c:import>
	<section class="container mt-5">
	<h1 class="mb-3 text-center">login page</h1>



	<!-- <c:choose>
			<c:when test="${member != null}">
				<h2> 네이버 아이디 로그인 성공하셨습니다!! </h2>
				<h3>'${member}' 님 환영합니다! </h3>
					<h3><a href="logout">로그아웃</a></h3>	 
			</c:when>
			<c:otherwise> -->
	<form action="./login" method="post" name="frm" style="width: 470px;">

		<div class="mb-3">
			<label for="id" class="form-label">ID</label> <input type="text"
				name="id" class="form-control" id="id" placeholder="ID">
		</div>
		<!-- 	DTO의 SETTER이름과 동일해야함 NAME -->
		<div class="mb-3">
			<label for="pw" class="form-label">PASSWORD</label> <input
				type="password" name="pw" class="form-control" id="pw"
				placeholder="패스워드">
		</div>

		<div class="mb-3" s>
			<button class="btn btn-primary">로그인</button>
		</div>

		<a class="btn btn-primary" href="/member/findId">아이디찾기</a> <a
			class="btn btn-primary" href="">비밀번호찾기</a>
	</form>
	<br>

	<!-- 네이버 로그인 창으로 이동 -->
	<div id="naver_id_login">
		<a href="${url}"> <img width="223"
			src="/resources/img/naverlogo.png" /></a>
	</div>
	<br>

	<!-- </c:otherwise>
		</c:choose> --> <!-- <form action="./login" method="post">
	
		<div class="mb-3">
		<label for="id" class="form-label">ID</label>
		<input type="text" name="id" class="form-control" id="id" placeholder="ID">
		</div>
		<-- 	DTO의 SETTER이름과 동일해야함 NAME --> <!-- <div class="mb-3">
		<label for="pw" class="form-label">PASSWORD</label>
		<input type="password" name="pw" class="form-control" id="pw" placeholder="패스워드">
		</div>
		

		<div class="mb-3" style="text-align:center">
			<button class="btn btn-primary" >로그인</button>
		</div>
		
		<div id="naver_id_login" style="text-align:center"><a href="${url}"><img width="223" src="${pageContext.request.contextPath}/resources/img/naverlogo.png"/></a></div>

</form>	 --> </section>
</body>
</html>