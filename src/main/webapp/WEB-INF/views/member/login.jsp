<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html  PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
 <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700&display=swap" rel="stylesheet">
   <script src="https://kit.fontawesome.com/53a8c415f1.js" crossorigin="anonymous"></script>
   <link rel="stylesheet" href="./login.css">
<title>Insert title here</title>
<c:import url="../base/base.jsp"></c:import>
<link rel="stylesheet" type="text/css" href="/resources/css/login.css">

</head>
<body>
	<c:import url="../base/header.jsp"></c:import>


	 <div class="wrap">
        <div class="login">
     
            <h2>Log-in</h2>

            <div class="login_id">
                <h4>ID</h4>
                <input type="text" name="id" id="id" placeholder="Id">
            </div>
            <div class="login_pw">
                <h4>Password</h4>
                <input type="password" name="pw" id="pw" placeholder="Password">
            </div>
            
            	
               <div class="login_etc">
            
               	 	 <a href="/member/findId">Forgot your id?</a>
               		 <a href="/member/findPw">Forgot your password?</a>
            	</div>  
            	<!-- 네이버 로그인 버튼 -->
            <div class="login_sns">
				<a id="naver_id_login" href="${urlNaver}">
				 <img width="150px"
						src="/resources/img/naverlogo.png" /></a>
			</div>	
			<br>
					<!--카카오 로그인 버튼-->
			<div>	
					<a id="kakao-login-btn" href="${urlKakao}"> <img
						src="https://k.kakaocdn.net/14/dn/btroDszwNrM/I6efHub1SN5KCJqLm1Ovx1/o.jpg"
						width="150px" alt="카카오 로그인 버튼" />
					</a>
            </div>         
                    	
            	
           
            <div class="submit">
                <input type="submit" value="Login!" id="loginBtn">
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
