<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

  <!-- ======= Header ======= -->


<header class="site-header">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
	<div class="container">
		<div class="row">

			<div class="col-lg-12 col-12 d-flex flex-wrap">
				<p class="d-flex me-4 mb-0">
					<i class="material-icons">favorite</i> 
					<strong	class="text-dark">Welcome to Performance Ticket!</strong>
				</p>
			</div>

		</div>
	</div>
	<nav class="navbar navbar-expand-lg">
		<div class="container">
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarNav"
				aria-controls="navbarNav" aria-expanded="true"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarNav">
				<ul class="navbar-nav align-items-lg-center ms-auto me-lg-5">
					<li class="nav-item"><a class="nav-link click-scroll"
						href="/">Home</a></li>

					<li class="nav-item"><a class="nav-link click-scroll"
						href="#section_2">연극</a></li>

					<li class="nav-item"><a class="nav-link click-scroll"
						href="#section_3">musical</a></li>	

					<li class="nav-item"><a class="nav-link click-scroll"
						href="../product/giftShop">Pricing</a></li>

				
					
					<c:if test="${not empty member}">
	      				<li><a class = "nav-link click-scroll" href="/member/logout" >로그아웃</a></li>
	      				<li><a class = "nav-link click-scroll" href="/member/mypage">mypage</a></li>
	 				 </c:if>
  					<c:if test="${empty member}">
		      			<li ><a class = "nav-link click-scroll" href="/member/login">로그인</a></li>
		      			<li ><a class = "nav-link click-scroll" href="/member/join">회원가입</a></li>
					 </c:if>
						
				</ul>
			</div>
		</div>
	</nav>
</header>
