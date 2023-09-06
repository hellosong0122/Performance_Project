<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html  PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../temp/bootStrap.jsp"></c:import>

<style>
#modal {
	display: none;
	position: relative;
	width: 100%;
	height: 100%;
	z-index: 1;
}

#modal h2 {
	margin: 0;
}

#modal button {
	display: inline-block;
	width: 100px;
	margin-left: calc(100% - 100px - 10px);
}

#modal .modal_content {
	width: 300px;
	margin: 100px auto;
	padding: 20px 10px;
	background: #fff;
	border: 2px solid #666;
}

#modal .modal_layer {
	position: fixed;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background: rgba(0, 0, 0, 0.5);
	z-index: -1;
}
</style>

	
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
			<button class="btn btn-primary" id="idcheck">아이디확인</button>
		
	

		 <c:if test="${not empty successMessage}">
			<div role="alert">${successMessage}</div>
		</c:if>

		<c:if test="${not empty errorMessage}">
			<div role="alert">${errorMessage}</div>
		</c:if> 

		
	</form>


	</section>

</body>
</html>
