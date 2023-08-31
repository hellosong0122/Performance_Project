
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Home</title>
<c:import url="./temp/bootStrap.jsp"></c:import>
</head>
<body>
	 <c:import url="./temp/header.jsp"></c:import>
	<h1>PerFormance</h1>
	<P>PerFormance</P>	
	
	<c:if test="${not empty member}">
	      			<li><a href="/member/logout">로그아웃</a></li>
	      			<li><a href="/member/mypage">mypage</a></li>
	  </c:if>
  	<c:if test="${empty member}">
		      		<li ><a href="/member/login">로그인</a></li>
		      		<li ><a href="/member/join">회원가입</a></li>
	  </c:if>
=======

<meta name="description" content="">
<meta name="author" content="">

<title>Festava Live</title>

<c:import url="./base/base.jsp"></c:import>
</head>
<body>
	<c:import url="./base/header.jsp"></c:import>


	<c:import url="./base/footer.jsp"></c:import>

	<!-- JAVASCRIPT FILES -->
	<script src="../../resources/js/jquery.min.js"></script>
	<script src="../../resources/js/bootstrap.min.js"></script>
	<script src="../../resources/js/jquery.sticky.js"></script>
	<script src="../../resources/js/click-scroll.js"></script>
	<script src="../../resources/js/custom.js"></script>

</body>
</html>