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
	<h1>admin만 접근가능한 page</h1>
	<section class="container mt-5">
		<h1 class="mb-3 text-center">Admin List</h1>
		
		<table class="table table-primary table-striped table-hover">
			<thead>
				<th>이름</th><th>아이디</th>
			</thead>
			<tbody>
				<c:forEach items="${list}" var="a" varStatus="i"> 
					<tr>																
						<td> ${a.name}</td>	
						<td><a href="./adminDetail?id=${a.id}">${a.id}</a></td>
					</tr>
				</c:forEach>	
			</tbody>
		</table>
		<div align="center">
		<a class="btn btn-outline-primary" href="./adminAdd">관리자등록</a>
		</div>			
	</section>
	
</body>
</html>