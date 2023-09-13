<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../base/adminBase.jsp"></c:import>
</head>
	<c:import url="../base/adminLeft.jsp"></c:import>	
	<main class="main-content position-relative max-height-vh-100 h-100 mt-1 border-radius-lg ">
		<section class="container mt-5">
			<h1 class="mb-5 text-center">${board} DETAIL</h1> 
		
		<div class="container-fluid py-4">
      <div class="row">
        <div class="col-12">
          <div class="card mb-4">
            <div class="card-header pb-0">
              <h6>${board} 관리</h6>
            </div>
            <div class="card-body px-0 pt-0 pb-2">
              <div class="table-responsive p-0">
		<table class="mb-3 table table-hover">	
				<tbody>				
						<tr>
							<td>번호</td>
							<td>${dto.num}</td>
						</tr>					
						<tr>
							<td>제목</td>
							<td>${requestScope.dto.title}</td>
						</tr>
						<tr>
							<td>내용</td>
							<td>${dto.content}</td>
						</tr>
						<tr>
							<td>작성자</td>
							<td>${dto.memberDto.name}</td>
						</tr>
						<tr>
							<td>조회수</td>
							<td>${dto.hit}</td>
						</tr>
						<c:forEach items="${dto.nfDto}" var="f" varStatus="i">
							<tr>
								<td>첨부파일 ${i.index+1}</td>
								<td>
									<a href="/resources/upload/${board}/${f.file_name}">${f.origin_name}</a>
									<br>
								</td>
							</tr>	
						</c:forEach>
						<tr>
							<td>등록일</td>
							<td>${dto.regDate}</td>
						</tr>											
				</tbody>
			</table>
		</div>
            </div>
          </div>
        </div>
      </div>
    </div>
		<div align="center">
			<button id="update" data-val="${dto.num}" class="btn">수정</button>
			<button id="delete" data-val="${dto.num}" class="btn">삭제</button>
		</div>
		<script src="/resources/js/board/detail.js"></script>
		<c:import url="../base/adminFooter.jsp"></c:import>	
	</section>
	</main>
</body>
</html>