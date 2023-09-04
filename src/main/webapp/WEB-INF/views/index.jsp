<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Home</title>
<c:import url="./base/base.jsp"></c:import>
</head>
<body>
	 <c:import url="./base/header.jsp"></c:import>

	
	<c:if test="${not empty member}">
	      			<li><a href="/member/logout">로그아웃</a></li>
	      			<li><a href="/member/mypage">mypage</a></li>
	  </c:if>
  	<c:if test="${empty member}">
		      		<li ><a href="/member/login">로그인</a></li>
		      		<li ><a href="/member/join">회원가입</a></li>
	  </c:if>
</body>
</html>
