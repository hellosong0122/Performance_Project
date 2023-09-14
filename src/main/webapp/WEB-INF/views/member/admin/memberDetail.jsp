<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../../base/adminBase.jsp"></c:import>
</head>
<body>
	<c:import url="../../base/adminLeft.jsp"></c:import>
	<main
		class="main-content position-relative max-height-vh-100 h-100 mt-1 border-radius-lg ">
		<section class="container mt-5">
			<h1 class="mb-5 text-center">Member Detail</h1>

			<div class="container-fluid py-4">
				<div class="row">
					<div class="col-12">
						<div class="card mb-4">
							<div class="card-header pb-0">
								<h6>회원 관리</h6>
							</div>
							<div class="card-body px-0 pt-0 pb-2">
								<div class="table-responsive p-0">
									<table class="mb-3 table table-hover">
										<tbody>
											<tr>
												<td>Name</td>
												<td>${dto.name}</td>
											</tr>
											<tr>
												<td>Id</td>
												<td>${dto.id}</td>
											</tr>

											<tr>
												<td>Email</td>
												<td>${dto.email}</td>
											</tr>
											<tr>
												<td>Phone</td>
												<td>${dto.phone}</td>
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
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div align="center">
				<a class="btn" href="./memberUpdate?member_num=${dto.member_num}">수정</a>
				<a class="btn" href="./memberDelete?member_num=${dto.member_num}"
					onclick="return confirm('정말로 삭제하시겠습니까?');">삭제</a>
			</div>
			<c:import url="../../base/adminFooter.jsp"></c:import>
		</section>
	</main>
</body>
</html>