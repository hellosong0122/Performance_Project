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
	<section class="container mt-5">
	<h1 class="mb-3 text-center">login page</h1>

	
	<form action="./login" method="post">
	
	<div class="mb-3">
 	 <label for="id" class="form-label">ID</label>
 	 <input type="text" name="id" class="form-control" id="id" placeholder="ID">
	</div>
	<div class="mb-3">
 	 <label for="pw" class="form-label">PASSWORD</label>
 	 <input type="password" name="pw" class="form-control" id="pw" placeholder="패스워드">
	</div>
	

	<div class="mb-3">
		<button class="btn btn-primary">로그인</button>
	</div>	

</form>	
</section>
</body>
</html>