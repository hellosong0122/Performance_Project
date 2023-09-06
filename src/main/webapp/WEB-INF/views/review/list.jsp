<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<ul style="list-style-type: none; padding-left: 0">
    <c:forEach items="${list}" var="re">
        <li class="border-bottom border-secondary-subtle mb-3">
            <div class="mb-3"> 
                ${re.contents} 
            </div>
            <div class="d-flex">
                <div class="flex-grow-1" style="color: rgb(132, 132, 132);">
                    ${re.id} | ${re.regDate} | 좋아요 ${re.good}
                   
                    <button class="good" data-id="${member.id}" data-num="${re.review_num}" data-page="${pager.page}" type="button" style="border-style: none; background-color: white;">
                        <img src="/resources/img/good.png" alt="" class="pb-3">
                    </button> 
                  
                </div>
                <div class="justify-content-end">
                    <c:if test="${member.id eq re.id}">
                        <button data-num="${re.review_num}" class="reviewDel btn btn-dark btn-sm" type="button">삭제</button>
                    </c:if>
                </div>
   			</div>
        </li>
    </c:forEach>
</ul>

<c:if test="${not empty list}"> 
<div>
    <nav aria-label="Page navigation example">
        <ul class="pagination justify-content-center">
          <li class="page-item ${pager.pre?'':'disabled'}">
            <a class="page-link move" href=# data-num="${pager.startNum-1}" aria-label="Previous">
              <span aria-hidden="true">&laquo;</span>
            </a>
          </li>
          <c:forEach begin="${pager.startNum}" end="${pager.lastNum}" var="i">
              <li class="page-item"><a class="page-link move" href=# data-num="${i}">${i}</a></li>
          </c:forEach>
          <li class="page-item ${pager.next?'':'disabled'}">
            <a class="page-link move" href=# data-num="${pager.lastNum+1}" aria-label="Next">
                <span aria-hidden="true">&raquo;</span>
            </a>
          </li>
        </ul>
    </nav>
</div>
</c:if>