<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../temp/bootStrap.jsp"></c:import>
</head>
<body>
	<c:import url="../temp/header.jsp"></c:import>
	<section class="container mt-5">
	<h1 class="mb-3 text-center">findPassword page</h1>
			
		
			<form action="./findPw" method="post" id="frm">
				<div class="mb-3" >
					<label for="id" class="form-label">ID</label>
					<input type="text" name="id" class="form-control" id="id" placeholder="id">
				</div>
		
				<div class="mb-3" >
					<label for="email" class="form-label">EMAIL</label>
					<input type="text" name="email" class="form-control" id="email" placeholder="name@example.com">
				</div>
				
				<div>
                <button class="btn btn-primary" type="submit" id="findPw">비밀번호찾기</button>
				<a href="./login" class="btn btn-primary">로그인</a>
				</div>
            </div>	
		
			
		</form>
</section>	

	<script src="/resources/js/findPw.js"></script>
</body>
</html>