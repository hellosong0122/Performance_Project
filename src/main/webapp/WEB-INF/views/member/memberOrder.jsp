<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <c:import url="../base/base.jsp"></c:import>   
<title>결제내역</title>
</head>
<body>
	 <c:import url="../base/header.jsp"></c:import> 
		<section class="container mt-5">

		
		<table class="table table-primary table-striped table-hover">
			<thead>
				<th>주문일자</th><th>주문 상품 정보</th><th>상품금액</th><th>배송비</th><th>주문상태</th>
			</thead>
			<tbody>
				<c:forEach items="${list}" var="a" varStatus="i"> 
					<tr>																
						<td> </td>	
						<td> </td>
						<td> </td>
						<td> </td>
						<td> </td>
					</tr>
				</c:forEach>	
			</tbody>
		</table>
		<div align="center">

		</div>			
	</section>
	 
</body>
</html>