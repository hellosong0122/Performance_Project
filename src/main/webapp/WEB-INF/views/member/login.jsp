<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html  PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../base/base.jsp"></c:import>
<!-- <script src="https://t1.kakaocdn.net/kakao_js_sdk/2.3.0/kakao.min.js"></script>
<script>kakao.init('181870ae8ca79eab9cb7800e2fd175cf')
 </script> -->
<link rel="stylesheet" type="text/css" href="/resources/css/login.css">

</head>
<body>
	<c:import url="../base/header.jsp"></c:import>


	<div class="wrapper">
		<div class="container">
			<div class="sign-up-container">
				<form>
					<h1>Create Account</h1>
					<div class="social-links">
						<div>
							<a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
						</div>
						<div>
							<a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
						</div>
						<div>
							<a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a>
						</div>
					</div>
					<span>or use your email for registration</span> <input type="text"
						placeholder="Name"> <input type="password"
						placeholder="Password">
					<button class="form_btn">Sign Up</button>
				</form>
			</div>
			<div class="sign-in-container">
				<form name="frm">				
					<div class="social-links">
						<div>
							<a href=""><i class="fa fa-facebook" aria-hidden="true"></i></a>
						</div>
						<div>
							<a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
						</div>
						<div>
							<a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a>
						</div>
					</div>
					<span>or use your account</span> <input type="text" name="id"
						id="id" placeholder="ID"> <input type="password" name="pw"
						id="pw" placeholder="PASSWORD">
					<button class="form_btn" id="loginBtn">Sign In</button>

					<!-- 네이버 로그인 창으로 이동 -->
					<a id="naver_id_login" href="${urlNaver}"> <img width="100"
						src="/resources/img/naverlogo.png" /></a>


					<!--카카오 로그인 버튼-->
					<a id="kakao-login-btn" href="${urlKakao}"> <img
						src="https://k.kakaocdn.net/14/dn/btroDszwNrM/I6efHub1SN5KCJqLm1Ovx1/o.jpg"
						width="100" alt="카카오 로그인 버튼" />
					</a>
					<div></div>
					<a href="/member/findId">Forgot your id?</a> <a
						href="/member/findPw">Forgot your password?</a>


				</form>
			</div>
			<div class="overlay-container">
				<div class="overlay-left">
					<h1>Welcome Back</h1>
					<p>To keep connected with us please login with your personal
						info</p>
					<button id="signIn" class="overlay_btn">Sign In</button>


				</div>
				<div class="overlay-right">
					<h1>Hello, Friend</h1>
					<p>Enter your personal details and start journey with us</p>
					<a class="btn overlay_btn" href="./join">Sign Up</a>
				</div>
			</div>
		</div>
	</div>

	<c:if test="${not empty fail}">
		<script>
			alert("${fail}")
		</script>
	</c:if>



	</section>
	<script src="/resources/js/member/login.js"></script>
</body>
</html>
