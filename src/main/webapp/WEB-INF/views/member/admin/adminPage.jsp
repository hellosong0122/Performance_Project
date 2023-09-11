<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
		<h1 class="mb-3 text-center">Admin List</h1>

		<table class="table table-primary table-striped table-hover">
			<thead>				
				<th>아이디</th>
				<th>삭제여부</th>
			</thead>
			<tbody>
				<c:forEach items="${list}" var="a" varStatus="i">
					<tr>						
						<td><a href="./adminDetail?member_num=${a.member_num}">${a.id}</a></td>
						<td>
							<c:if test="${a.deleteType eq 1}">
							 활동중
							</c:if>
							<c:if test="${a.deleteType eq 0}">
							  탈퇴
							</c:if>
						</td>
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