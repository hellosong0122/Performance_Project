<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../../temp/bootStrap.jsp"></c:import>
</head>
<body>
	<c:import url="../../temp/header.jsp"></c:import>
	<section class="container mt-5">
		<h1 class="mb-5 text-center">Member Detail</h1> 
	

	<table class="mb-3 table table-danger table-hover" >	
			<tbody>				
					<tr>
						<td>Name</td>
						<td>${dto.name} </td>
					</tr>					
					<tr>
						<td>Id</td>
						<td>${dto.id} </td>
					</tr>
					
					<tr>
						<td>Email</td>
						<td>${dto.email}</td>
					</tr>
					<tr>
						<td>Phone</td>
						<td>${dto.phone} </td>
					</tr>
					<tr>
						<td>Birth</td>
						<td>${dto.birth}</td>
					</tr>
					<tr>
						<td>address</td>
						<td>${dto.address}</td>
					</tr>												
							
			</tbody>
		</table>
	<div align="center">
		<a class="btn btn-outline-warning" href="./memberUpdate?member_num=${dto.member_num}">수정</a>
		<a class="btn btn-outline-danger" href="./memberDelete?member_num=${dto.member_num}" onclick="return confirm('정말로 삭제하시겠습니까?');">삭제</a>	
	</div>
</section>
</body>
</html>