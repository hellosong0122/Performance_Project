<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
 	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Insert title here</title>

	<c:import url="../base/adminBase.jsp"></c:import>

	<!-- include summernote css/js-->
   <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css" rel="stylesheet">
   <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.js"></script>
</head>
<body>
	<c:import url="../base/adminLeft.jsp"></c:import>	
	<main class="main-content position-relative max-height-vh-100 h-100 mt-1 border-radius-lg ">
		<section class="container mt-5"> 
	      <form action="./update" method="post">
	      	<input type="hidden" id="num" name="p_Num" value="${giftDetail.p_Num}">	
	        <div class="mb-3">
	          <label for="pw" class="form-label">상품명</label>
	          <input class="form-control" type="text" name="p_Name" value="${giftDetail.p_Name}"/>
	        </div>
	        <div class="mb-3">
	          <label for="pw" class="form-label">상품금액</label>
	          <input class="form-control" type="number" name="p_Price" value="${giftDetail.p_Price}"/>
	        </div>
	        <div class="mb-3">
	          <label for="pw" class="form-label">설명</label>
	          <input class="form-control" type="text" name="p_Description" value="${giftDetail.p_Description}"/>
	        </div>
	        <div class="mb-3">
	          <label for="pw" class="form-label">이미지 경로</label>
	          <input class="form-control" type="text" name="p_Image" value="${giftDetail.p_Image}"/>
	        </div>
	        <div class="mb-3">
	          <label for="pw" class="form-label">수량</label>
	          <input class="form-control" type="number" name="p_Count" value="${giftDetail.p_Count}"/>
	        </div>
			<div class="mb-3">
				<div class="my-3">
					<button class="btn" type="submit">수정</button>
				</div>
			</div>
	      </form>
	    </section>
	</main>
</body>
</html>