<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.container {
    width: 100%;
    padding-right: 15px;
    padding-left: 15px;
    margin-right: auto;
    margin-left: auto;
	}

	.heading_container.heading_center {
    -webkit-box-align: center;
    -ms-flex-align: center;
    align-items: center;
    text-align: center;
	}

	.heading_container {
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    -webkit-box-orient: vertical;
    -webkit-box-direction: normal;
    -ms-flex-direction: column;
    flex-direction: column;
    -webkit-box-align: start;
    -ms-flex-align: start;
    align-items: flex-start;
	}

	.food_section .filters_menu {
    padding: 0;
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    -ms-flex-wrap: wrap;
    flex-wrap: wrap;
    -webkit-box-pack: center;
    -ms-flex-pack: center;
    justify-content: center;
    list-style-type: none;
    margin: 45px 0 20px 0;
	}

	.food_section .filters_menu li {
    padding: 7px 25px;
    cursor: pointer;
    border-radius: 25px;
	}
	li {
    display: list-item;
    text-align: -webkit-match-parent;
	}
	
	a{
		text-decoration-line:none;
		color:white;
	}


	.layout_padding {
    padding: 90px 0;
	
}  
</style>

<c:import url="../base/base.jsp"></c:import>


</head>
<body>
<c:import url="../base/header.jsp"></c:import>
	<section class="food_section layout_padding">
		<div class="container">
			<!-- //헤딩 -->
		  <div class="heading_container heading_center">
			<h2>
			  My page
			</h2>
		  </div>
	
		  <ul class="filters_menu">			
			<li><a href="./memberUpdate">회원수정</a></li>
			<li><a href="./memberOrder">주문내역</a></li>
			<li><a href="./memberBook">예매내역</a></li>			
		  </ul>
	
		  <div class="filters-content">
			<form action="./memberUpdate" method="post">
	
				<div class="mb-3">
			 	 <label for="id" class="form-label">ID</label>
			 	 <input type="text" value="${member.id}" name="id" class="form-control" id="id" disabled>
				</div>
				
				<div class="mb-3">
			 	 <label for="pw" class="form-label">PASSWORD</label>
			 	 <input type="password" value="${member.pw}" name="pw" class="form-control" id="pw" placeholder="패스워드 입력하세요">
				</div>
				
				<div class="mb-3">
			 	 <label for="name" class="form-label">이름</label>
			 	 <input type="text" name="name" value="${member.name}" class="form-control" id="name" readonly>
				</div>	
			
				<div class="mb-3">
			 	 <label for="email" class="form-label">Email</label>
			 	 <input type="text" name="email" value="${member.email}"class="form-control" id="email" placeholder="name@example.com">
				</div>
				
				<div class="mb-3">
			 	 <label for="phone" class="form-label">Phone</label>
			 	 <input type="text" name="phone" value="${member.phone}"class="form-control" id="phone" placeholder="01012345678">
				</div>
				
				<div class="mb-3">
			 	 <label for="birth" class="form-label">생년월일</label>
			 	 <input type="date" name="birth" value="${member.birth}" class="form-control" id="birth" >
				</div>
				  
			
			    <div class="mb-3">
			      <label for="address" class="form-label">주소</label>
			          <input type="text" name="address" class="form-control" id="address" value="${member.address}" placeholder="주소"/>
			     </div>	
				
				<div class="mb-3">
					<button class="btn btn-primary">회원수정</button>
				</div>			
			</form>			
		
		</div>
	  </section>
	
</body>
</html>