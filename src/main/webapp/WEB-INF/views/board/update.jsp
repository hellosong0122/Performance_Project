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
	      <form action="./update" method="post" enctype="multipart/form-data">
	      	<input type="hidden" id="num" name="num" value="${dto.num}">
			<input type="hidden" id="board" name="board" value="${board}">
	        <div class="mb-3">
	          <label for="id" class="form-label">작성자</label>
	          <input class="form-control" type="text" name="name" readonly value="${dto.memberDto.name}" id="writer"/>
	        </div>
	
	        <div class="mb-3">
	          <label for="pw" class="form-label">제목</label>
	          <input class="form-control type="text" name="title" value="${dto.title}" id="title" placeholder="제목 입력""/>
	        </div>
	
	        <div class="mb-3">
	          <label for="name" class="form-label">내용</label>
	          <textarea name="content" class="form-control" id="content" placeholder="내용 입력" rows="7">${dto.content}</textarea>     
	        </div>
	
			<div class="mb-3">
				<button type="button" class="btn" id="add">File추가</button>
			</div>
			
			<div id="fileList" class="my-5">
					

			</div>

			<div>
				<c:forEach items="${dto.nfDto}" var="f">
					<div role="alert">
						${f.origin_name}
					</div>
					<c:if test="${board == 'notice'}">
						<span class="delets" data-delete-num="${f.notice_file_num}">X</span>
					</c:if>
					<c:if test="${board == 'banner'}">
						<span class="delets" data-delete-num="${f.banner_file_num}">X</span>
					</c:if>
					<c:if test="${board == 'video'}">
						<span class="delets" data-delete-num="${f.video_file_num}">X</span>
					</c:if>
					<c:if test="${board == 'faq'}">
						<span class="delets" data-delete-num="${f.faq_file_num}">X</span>
					</c:if>
					<c:if test="${board == 'ticket_open'}">
						<span class="delets" data-delete-num="${f.ticket_open_file_num}">X</span>
					</c:if>
				</c:forEach>	

			</div>
						
			<div class="mb-3">
				<div class="my-3">
					<button class="btn" type="submit">수정</button>
				</div>
			</div>
	      </form>
	    </section>
	</main>
	<script src="/resources/js/file.js"></script>
	<script src="/resources/js/board/update.js"></script>
</body>
</html>