<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
 	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Insert title here</title>

	<c:import url="../temp/bootStrap.jsp"></c:import>


</head>
<body>
	<c:import url="../temp/header.jsp"></c:import>
	<section class="container mt-5">
		<h1 class="mb-3 text-center">${board} List</h1>
		
		<table class="table table-success table-sm">
		<!-- Latest compiled and minified CSS -->
			<thead>
				<th>NO</th>
				<th>TITLE</th>
				<th>CONTENT</th>
				<th>WRITER</th>
				<th>DATE</th>
				<th>HIT</th>
			</thead>
			<tbody>
				<c:forEach items="${requestScope.list}" var="d" varStatus="i">
					<tr>
						<td>${d.num}</td>
						<td><a href="./detail?num=${d.num}">${d.title}</a></td>
						<td><a href="./detail?num=${d.num}">${d.content}</a></td>
						<td>${d.memberDto.name}</td>
						<td>${d.regDate}</td>
						<td>${d.hit}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
			
			<nav aria-label="Page navigation example">
			  <ul class="pagination">
			  	<c:if test="${pager.pre}">
				    <li class="page-item">
				      <a class="page-link move" href="#" data-num="${pager.startNum-1}" aria-label="Previous">
				        <span aria-hidden="true">&laquo;</span>
				      </a>
				    </li>
			    </c:if>
			    <c:forEach begin="${pager.startNum}" end="${pager.lastNum}" var="i">
			    	<li class="page-item"><a class="page-link move" href="#" data-num="${i}">${i}</a></li>
			    </c:forEach>
			    <c:if test="${pager.next}">
				    <li class="page-item">
				      <a class="page-link move" href="#" data-num="${pager.lastNum+1}" aria-label="Next">
				        <span aria-hidden="true">&raquo;</span>
				      </a>
				    </li>
			    </c:if>
			  </ul>
			</nav>
		
		<div class="input-group mb-3">
		 <form action="./list" method="get" id="frm">
		 	  <input type="hidden" value="${pager.page}" id="page" name="page">
		 	  	
			  <select name="kind" id="k" class="form-select" data-kind="${pager.kind}" aria-label="Default select example">
				  <option class="kind" value="title">TITLE</option>
				  <option class="kind" value="content">CONTENT</option>
			  </select>
			  <input type="text" name="search" value="${pager.search}" class="form-control" aria-label="Amount (to the nearest dollar)">
			   <div class="col-auto">
			    <button type="submit" class="btn btn-primary">검색</button>
			  </div>
		  </form>
		</div>
		
		<c:if test="${not empty member}">
		<a class="btn btn-outline-primary" for="btn-check-outlined" href="./add">글쓰기</a>
		</c:if>
	
	</section>

	<script src="/resources/js/board/list.js"></script>
	<script>
		//setData('${pager.kind}');
	</script>
</body>
</html>