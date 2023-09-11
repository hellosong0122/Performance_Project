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
		<h1 class="mb-3 text-center">Member List</h1>
		
		<table class="table table-primary table-striped table-hover">
			<thead>
				<th>이름</th>
				<th>아이디</th>
				<th>삭제여부</th>
			</thead>
			<tbody>
				<c:forEach items="${list}" var="a" varStatus="i"> 
					<tr>																
						<td> ${a.name}</td>	
						<td><a href="./memberDetail?member_num=${a.member_num}">${a.id}</a></td>
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
		<a class="btn btn-outline-primary" href="./memberAdd">회원등록</a>
		</div>
		
		<nav aria-label="Page navigation example">
			  <ul class="pagination">  	
			    <li class="page-item ${pager.pre?'':'disabled'}">
			      <a class="page-link" href="./list?page=${pager.startNum-1}" aria-label="Previous">
			        <span aria-hidden="true">&laquo;</span>
			      </a>
			    </li> 
			    <c:forEach begin="${pager.startNum}" end="${pager.lastNum}" var="i">		
			    <li class="page-item"><a class="page-link" href="./list?page=${i}&kind=${pager.kind}&search=${pager.search}">${i}</a></li>
			    </c:forEach>
			    <c:if test="${pager.next}">
			    <li class="page-item">
			      <a class="page-link" href="./list?page=${pager.lastNum+1}&kind=${pager.kind}&search=${pager.search}" aria-label="Next">
			        <span aria-hidden="true">&raquo;</span>
			      </a>
			    </li>
			    </c:if>
			  </ul>
		</nav>
		
		<div class="input-group mb-3">
			<form action="./list" method="get">
			  <select name="kind" class="form-select" aria-label="Default select example">
				  <option value="name">Name</option>
				  <option value="id">Id</option>
			  </select>
			  <input type="text" name="search" class="form-control" aria-label="Amount (to the nearest dollar)">
			  <div class="col-auto">
	    		<button type="submit" class="btn btn-primary">검색</button>
	 		  </div>
 		  </form>
		</div>			
	
					
	</section>	
</body>
</html>