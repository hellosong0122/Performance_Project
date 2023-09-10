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
	<h1 class="mb-3 text-center">findId page</h1>


	<form action="./findId" method="post" id="frm">
		<div class="mb-3">
			<label for="name" class="form-label">이름</label> <input type="text"
				name="name" class="form-control" id="name" placeholder="이름">
		</div>
		<div class="mb-3">
			<label for="email" class="form-label">EMAIL</label> <input
				type="text" name="email" class="form-control" id="email"
				placeholder="name@example.com">
		</div>

		<div id="root">
			<button class="btn btn-primary" id="idcheck">아이디찾기</button>
			<a class="btn btn-primary" href="./login">로그인</a>
	</form>


	</section>

</body>
</html>
