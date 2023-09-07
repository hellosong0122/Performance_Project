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
	<h1>My page</h1>
	
	<a class="btn btn-primary" href="./memberUpdate">회원수정</a>
	<a href="./memberOrder">주문내역</a>
	
</body>
</html>