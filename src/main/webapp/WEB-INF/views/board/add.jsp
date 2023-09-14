<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
 	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Insert title here</title>
<c:if test="${empty member}">
	<script type="text/javascript">
		alert("로그인하세요");
		location.href="../member/userLogin";
	</script>	
</c:if>    

	<c:import url="../temp/bootStrap.jsp"></c:import>
	
	<!-- include summernote css/js-->
   <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css" rel="stylesheet">
   <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.js"></script>


</head>
<body>
	<c:import url="../temp/header.jsp"></c:import>
	<div class="container-fluid">
	
		<div class="row justify-content-center my-4">
			<h1 class="col-md-7 text-center">${board} Add Page</h1>
		</div>
		
		<div class="row justify-content-center my-4">
			<form class="col-md-7" action="./add" method="post" id="frm" enctype="multipart/form-data">
				<input type="hidden" id="member_num" name="member_num" value="${member.member_num}">
				<div class="mb-3">
				  <label for="writer" class="form-label">작성자</label>
				  <input type="text" name="name" readonly value="${member.id}" class="form-control" id="name">
				</div>
				
				<div class="mb-3">
				  <label for="title" class="form-label">제목</label>
				  <input type="text" name="title" class="form-control" id="title" placeholder="제목 입력">
				</div>
		
				<div class="mb-3">
				  <label for="contents" class="form-label">내용</label>
				  <textarea name="content" class="form-control" id="content" placeholder="내용 입력" rows="7"></textarea>
				</div>
				
				<div class="mb-3">
					<button type="button" class="btn btn-primary" id="add">File추가</button>
				</div>
				
				<div id="fileList" class="my-5"></div>
							
				<div class="mb-3">
					<button class="my btn btn-danger" type="button" id="btn">글쓰기</button>
				</div>
			
			</form>
		</div>
	</div>
	<script src="../resources/js/file.js"></script>
	<script>
		const btn = document.getElementById("btn");
		const title = document.getElementById("title");
		const frm = document.getElementById("frm");
		
		$("#content").summernote({
			height:400,
			callbacks:{
				onImageUpload:function(files){
					alert('이미지 업로드');
					//이미지를 server로 전송하고
					//응답으로 이미지경로와 파일명을 받아서
					//img 태그를 만들어서 src속성에 이미지경로는 넣는것
					let formData = new FormData();//<form></form>
					formData.append("files", files[0]);// <input type="file" name="files">

					$.ajax({
						type:'post',
						url:'setContentsImg',
						data:formData,
						enctype: 'multipart/form-data',
						cache: false,   // multipart/form-data에서 필수
						contentType : false,// multipart/form-data에서 필수
						processData : false,// multipart/form-data에서 필수
						success:function(result){
							$("#content").summernote('insertImage', result.trim());
						},
						error:function(){
							console.log('error');
						}
					});
				},
				onMediaDelete:function(files){
					let path = $(files[0]).attr("src");// /resources/upload/notice/파일명

					$.ajax({
						type:'post',
						url:'./setContentsImgDelete',
						data:{
							path:path
						},
						success:function(result){
							console.log(result);
						},
						error:function(){
							console.log('error');
						}
					})
				}
			}
		});

		btn.addEventListener("click", function(){
			console.log(title.value=="");
			console.log(title.value.length == 0);
			if(title.value==""){
				alert('제목은 필수 입니다.');
				title.focus();
			}else {
				frm.submit();
			}
		});

	</script>

</body>
</html>