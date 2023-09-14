<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
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
			<h1 class="mb-5 text-center">PRODUCT DETAIL</h1>
		
			<div class="container-fluid py-4">
		      <div class="row">
		        <div class="col-12">
		          <div class="card mb-4">
		            <div class="card-header pb-0">
		              <h6>상품 관리</h6>
		            </div>
		            <div class="card-body px-0 pt-0 pb-2">
		              <div class="table-responsive p-0">
						<table class="mb-3 table table-hover">	
								<tbody>
									<tr>
										<td>번호</td>
										<td>${giftDetail.p_Num}</td>
									</tr>
									<tr>
										<td>이미지 경로</td>
										<td>${giftDetail.p_Image}</td>
									</tr>
									<tr>
										<td>상품명</td>
										<td>${giftDetail.p_Name}</td>
									</tr>
									<tr>
										<td>상품금액</td>
										<td>${giftDetail.p_Price}</td>
									</tr>
									<tr>
										<td>설명</td>
										<td>${giftDetail.p_Description}</td>
									</tr>
									<tr>
										<td>수량</td>
										<td>${giftDetail.p_Count}</td>
									</tr>
									<tr>
										<td>등록일</td>
										<td>${giftDetail.p_Regdate}</td>
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
				<button id="update" data-val="${giftDetail.p_Num}" class="btn">수정</button>
				<%-- <button id="delete" data-val="${giftDetail.p_Num}" class="btn">삭제</button> --%>
			</div>
			<script>
				$("#update").on("click", function(){
				    location.replace("/admin/product/update?p_Num="+$(this).attr('data-val'));
				    return false;
				});
	
				/* $("#delete").on("click", function(){
				    location.replace("./delete?p_Num="+$(this).attr('data-val'));
				    return false;
				}); */
			</script>
			<c:import url="../base/adminFooter.jsp"></c:import>	
		</section>
	</main>
    <script src="../../../resources/js/gift.js"></script>
    </body>
</html>