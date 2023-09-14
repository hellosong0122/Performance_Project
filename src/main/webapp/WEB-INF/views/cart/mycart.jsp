<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
		<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
			<!DOCTYPE html>
			<html>

			<head>
				<meta charset="UTF-8">
				<title>Insert title here</title>
				<c:import url="../base/base.jsp"></c:import>
				<!-- font css -->
				<link href="../../../resources/css/gift-detail-font.css" rel="stylesheet">
				<!-- gift-detail-style.css -->
				<link href="../../../resources/css/gift-detail-style.css" rel="stylesheet">
				<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
				<link rel="stylesheet" type="text/css" href="/resources/css/mycart.css">
			</head>

			<body>
				<c:import url="../base/header.jsp"></c:import>

				<div class="wrapper">
					<form action="../pay/buycart" method="post" class="w3pvt-newsletter subscribe-sec">
					<div id="table" class="bg-white rounded">
						<div class="d-md-flex align-items-md-center px-3 pt-3">
							<div class="d-flex flex-column">
								<div class="h4 font-weight-bold">Wish lists</div>
							</div>
						</div>
						<hr>
						<div class="table-responsive" id="size" data-length="${fn:length(list)}"
							data-user="${member.member_num}">
							<table class="table activitites">
								<thead>
									<tr>
										<th scope="col" class="text-uppercase header"></th>
										<th scope="col" class="text-uppercase">상품이름</th>
										<th scope="col" class="text-uppercase">수량</th>
										<th scope="col" class="text-uppercase"> 가격 </th>
										<th scope="col" class="text-uppercase">총가격</th>
										<th scope="col" class="text-uppercase"></th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${list}" var="d" varStatus="i">
										<tr id="items${i.index}">
											<td class="item">
												<div class="d-flex">
													<img src="${d.p_Image}" alt="">
													<div class="pl-2">
														<div class="d-flex flex-column justify-content-center">
															<div>
																<a href="#"><span class="red text-uppercase"><span
																			class="fas fa-comment pr-1"></a>
															</div>
														</div>
													</div>
											</td>
											<td id="item${i.index}">${d.p_Name}</td>
											<td>${d.cart_Count}</td>
											<td class="flex-column"><span class="red">${d.p_Price}</span></td>
											<td class="font-weight-bold" id="total${i.index}"></td> <!-- this-->
											<td>
												<div class="close" id="close${i.index}">&times;</div>
											</td>
										</tr>
										<input id="data${i.index}" type="hidden" data-count="${d.cart_Count}"
											data-cartnum="${d.cart_Num}" data-price="${d.p_Price}"
											data-count="${d.cart_Count}" data-pnum="${d.p_Num}">
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
					<div class="d-flex justify-content-between">
						<div class="text-muted">
							<div class="btn" data-toggle="collapse" data-target="#table" aria-expanded="false"
								aria-controls="table">
								<span class="fas fa-minus"></span>

							</div>
						</div>
						<div class="d-flex flex-column justify-content-end align-items-end">
							<div class="d-flex px-3 pr-md-5 py-1 subtotal">
								<div class="px-4">Subtotal</div>
								<div class="h5 font-weight-bold px-md-2" id="totalprice">$1,340</div>
							</div>
						</div>
					</div>
					<input type="hidden" id="member_num" name="member_num" value="${member.member_num}">
					<button type="submit" class="btn submit" id="buy_btn">Buy</button>
					</form>
					<button type="button" id="back_btn" class="btn submit">뒤로가기</button>
				</div>
				<script src="../../../resources/js/mycart.js"></script>
			</body>

			</html>