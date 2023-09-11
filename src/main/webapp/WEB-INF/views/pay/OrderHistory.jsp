<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
 	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Insert title here</title>

	<c:import url="../base/bootStrap.jsp"></c:import>


</head>
<body>
	<c:import url="../base/header.jsp"></c:import>
	<section class="container mt-5">
		<h1 class="mb-3 text-center"></h1>
		
		<table class="table table-success table-sm">
		<!-- Latest compiled and minified CSS -->
			<thead>
				<th>주문번호</th><th>상품이름</th><th>주문수량</th><th>총가격</th><th>구매날짜</th>
			</thead>
			<tbody>
				<c:forEach items="${requestScope.list}" var="d" varStatus="i"> 
					<tr>
						<td><a href="./detail?num=${d.num}">${d.num}</a></td>
						<td><a href="./detail?num=${d.num}">
						
						<c:catch>
						<c:forEach begin="1" end="${d.depth}">--</c:forEach>
						</c:catch>
						${d.subject}</a></td>
						<td>${d.name}</td>
						<td>${d.createDate}</td>
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
				  <option class="kind" value="subject">Subject</option>
				  <option class="kind" value="contents">Contents</option>
				  <option class="kind" value="name">Name</option>
			  </select>
			  <input type="text" name="search" value="${pager.search}" class="form-control" aria-label="Amount (to the nearest dollar)">
			   <div class="col-auto">
			    <button type="submit" class="btn btn-primary">검색</button>
			  </div>
		  </form>
		</div>
		
		<!-- <c:if test="${not empty member}">
		<a class="btn btn-outline-primary" for="btn-check-outlined" href="./add">글쓰기</a>
		</c:if> -->
	
	</section>
	<c:import url="../base/footer.jsp"></c:import>
	<script src="/resources/js/list.js"></script>
	<script>
		//setData('${pager.kind}');
	</script>
</body>
</html>