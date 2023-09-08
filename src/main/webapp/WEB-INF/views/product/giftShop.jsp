<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">


<title>Product 4 Grid - Bootdey.com</title>


<c:import url="../base/base.jsp"></c:import>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.0/dist/css/bootstrap.min.css"
	rel="stylesheet">


<link href="../../../resources/css/product.css" rel="stylesheet">


</head>

<body>
	<main>
		<c:import url="../base/header.jsp"></c:import>
	</main>
	<link rel="stylesheet"
		href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.1/css/all.min.css"
		integrity="sha256-2XFplPlrFClt0bIdPgpz8H7ojnk10H69xRqd9+uTShA="
		crossorigin="anonymous" />

	<br>
		<br>
	<section class="py-5">
		<div class="container px-4 px-lg-5 mt-5">
			<div
				class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
				<c:forEach items="${giftList}" var="d" varStatus="i">
				<div class="col mb-5">
					<div class="card h-100" style=" cursor: pointer;" onclick="location.href='./giftDetail?p_Num=${d.p_Num}';" > 
						<img class="card-img-top"
							src="${d.p_Image}"  />
						<div class="card-body p-4">
							<div class="text-center">
								
								<h5 class="fw-bolder">${d.p_Name}</h5>
								
								<h6>${d.p_Price}</h6>
							</div>
						</div>
						
						<div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
							<div class="text-center">
								<a class="btn btn-outline-dark mt-auto" href="#">Add Cart</a>
							</div>
						</div>
					</div>
				</div>
			</c:forEach>

			</div>
		</div>
	</section>
	<br>
	<c:import url="../base/footer.jsp"></c:import>
	<script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.0/dist/js/bootstrap.bundle.min.js"></script>
	<script type="text/javascript">
		
	</script>
</body>

</html>