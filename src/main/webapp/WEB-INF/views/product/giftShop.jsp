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
	<section>
		<div class="container">
			<div class="row">
			
				<c:forEach items="${giftList}" var="d" varStatus="i">
					<div class="col-sm-6 col-lg-3 mb-2-6">
						<div class="card-wrapper mb-4">
							<div class="card-img">
								<img src="${d.p_Image}"
									alt="...">
							</div>
							<div class="card-body">
								<div>
									<a href="#"><i
										class="bg-white p-3 rounded-circle ti-shopping-cart font-weight-600"></i></a>
								</div>
							</div>
						</div>
						<div class="text-center">
							<h4 class="h5 mb-2">
								<a href="../" class="text-secondary">${d.p_Name}</a>
							</h4>
							<h5 class="mb-0 text-primary">${d.p_Price}</h5>
						</div>
						<br>
					</div>
				</c:forEach>
			</div>
		</div>
	</section>
	<br>
	<br>
	<c:import url="../base/footer.jsp"></c:import>
	<script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.0/dist/js/bootstrap.bundle.min.js"></script>
	<script type="text/javascript">
		
	</script>
</body>

</html>