<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../temp/bootStrap.jsp"></c:import>
</head>
<body>
	<c:import url="../temp/header.jsp"></c:import>
	<section class="container mt-5">
	<h1 class="mb-3 text-center">Update page</h1>

	
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
</section>
</body>
</html>