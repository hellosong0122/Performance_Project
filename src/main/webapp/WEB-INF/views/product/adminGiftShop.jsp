<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<title>Product 4 Grid - Bootdey.com</title>
	<c:import url="../base/adminBase.jsp"></c:import>
</head>

<body>
	<c:import url="../base/adminLeft.jsp"></c:import>	
	<main class="main-content position-relative max-height-vh-100 h-100 mt-1 border-radius-lg ">
		<div class="container-fluid py-4">
	      <div class="row">
	        <div class="col-12">
	          <div class="card mb-4">
	            <div class="card-header pb-0">
	              <h6>상품 관리</h6>
	            </div>
	            <div class="card-body px-0 pt-0 pb-2">
	              <div class="table-responsive p-0">
	                <table class="table align-items-center mb-0">
	                  <thead>
	                    <tr>
	                      <th class="text-center text-secondary opacity-7">No</th>
	                      <th class="text-center text-secondary opacity-7">상품명</th>
	                      <th class="text-center text-secondary opacity-7">상품금액</th>
	                      <th class="text-center text-secondary opacity-7">등록일</th>
	                    </tr>
	                  </thead>
	                  <tbody>
				
	                  <c:forEach items="${giftList}" var="d" varStatus="i">
	                    <tr>
	                      <td class="align-middle text-center text-sm">
	                        <span class="text-secondary text-xs font-weight-bold">${d.p_Num}</span>
	                      </td>
	                      <td class="align-middle text-center">
	                        <span class="text-secondary text-xs font-weight-bold"><a href="/admin/product/giftDetail?p_Num=${d.p_Num}">${d.p_Name}</a></span>
	                      </td>
	                      <td class="align-middle text-center text-sm">
	                        <span class="text-secondary text-xs font-weight-bold">${d.p_Price}원</span>
	                      </td>
	                      <td class="align-middle text-center text-sm">
	                        <span class="text-secondary text-xs font-weight-bold">${d.p_Regdate}</span>
	                      </td>
	                    </tr>
	                    </c:forEach>
	                  </tbody>
	                </table>
	              </div>
	            </div>
	          </div>
	        </div>
	      </div>
	    </div>
		
		<c:if test="${not empty giftList}"> 
			<div>
			    <nav aria-label="Page navigation example">
			        <ul class="pagination justify-content-center">
			          <li class="page-item ${pager.pre?'':'disabled'}">
			            <a class="page-link move" href="javascript:return false;" data-num="${pager.startNum-1}" aria-label="Previous">
			              <span aria-hidden="true">&laquo;</span>
			            </a>
			          </li>
			          <c:forEach begin="${pager.startNum}" end="${pager.lastNum}" var="i" >
			              <li class="page-item"><a class="page-link move" href="javascript:return false;" data-num="${i}">${i}</a></li>
			          </c:forEach>
			          <li class="page-item ${pager.next?'':'disabled'}">
			            <a class="page-link move" href="javascript:return false;" data-num="${pager.lastNum+1}" aria-label="Next">
			                <span aria-hidden="true">&raquo;</span>
			            </a>
			          </li>
			        </ul>
			    </nav>
			</div>
		</c:if>
			<form action="./giftShop" method="get" id="frm">
				<input type="hidden" name="page" id="page" value="${pager.page}">		
			</form>
		<c:import url="../base/adminFooter.jsp"></c:import>
	</main>
	<script>

	const move = document.getElementsByClassName('move');
	const page = document.getElementById('page');
	const frm = document.getElementById('frm');

	for(m of move){
	    m.addEventListener('click', function(){
	        page.value = this.getAttribute('data-num');
	        frm.submit();
	    })
	}
	
	</script>
</body>

</html>