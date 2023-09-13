<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
              <h6>공연 관리</h6>
            </div>
            <div class="card-body px-0 pt-0 pb-2">
              <div class="table-responsive p-0">
                <table class="table align-items-center mb-0">
                  <thead>
                    <tr>
                      <th class="text-center text-secondary opacity-7">공연명</th>
                      <th class="text-center text-secondary opacity-7">공연장르</th>
                      <th class="text-secondary opacity-7">공연시작일</th>
                      <th class="text-secondary opacity-7">공연종료일</th>
                      
                    </tr>
                  </thead>
                  <tbody>
                  <c:forEach items="${list}" var="d" varStatus="i"> 
                    <tr>
                      <td class="align-middle text-center text-sm">
                        <span class="text-secondary text-xs font-weight-bold"><a href="/admin/perDetail?performance_num=${d.performance_num}" class="text-decoration-none text-dark">${d.prfnm}</a></span>
                      </td>
                      <td class="align-middle text-center">
                        <span class="text-secondary text-xs font-weight-bold">${d.genrenm}</span>
                      </td>
                      <td class="align-middle">
						<span class="badge badge-sm bg-gradient-success">                        
 							${d.prfpdfrom}
                        </span>
                      </td>
                       <td class="align-middle">
						<span class="badge badge-sm bg-gradient-success">                        
 							${d.prfpdto}
                        </span>
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
    
    <div class="input-group my-3">
            <form action="./perList" method="get" id="frm" class="d-flex w-50">
                <input type="hidden" value="${pager.page}" name="page" id="page">
                <select name="kind" id="k" data-kind="${pager.kind}" class="form-select w-25" aria-label="Default select example">
                    <option class="kind" value="title">Title</option>
                    <option class="kind" value="cast">Cast</option>
                </select>
                <input type="text" name="search" value="${pager.search}" placeholder="검색어를 입력하세요" class="form-control me-2 w-75" aria-label="Search">
                  <div class="col-auto">
                      <button type="submit" class="btn">검색</button>
                  </div>
            </form>
        </div>
    
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
    	<c:import url="../base/adminFooter.jsp"></c:import>	
    
  </main>
	<script src="/resources/js/list.js"></script>
	
	
</body>
</html>

<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../base/base.jsp"></c:import>
</head>
<body>
	<c:import url="../base/header.jsp"></c:import>
    <section class="container mt-5 mx-auto" style="width: 70%;">
        <h2 class="mb-5 text-center">공연 관리</h2>

        <div class="input-group my-3">
            <form action="./perList" method="get" id="frm" class="d-flex w-50">
                <input type="hidden" value="${pager.page}" name="page" id="page">
                <select name="kind" id="k" data-kind="${pager.kind}" class="form-select w-25" aria-label="Default select example">
                    <option class="kind" value="title">Title</option>
                    <option class="kind" value="cast">Cast</option>
                </select>
                <input type="text" name="search" value="${pager.search}" placeholder="검색어를 입력하세요" class="form-control me-2 w-75" aria-label="Search">
                  <div class="col-auto">
                      <button type="submit" class="btn btn-dark">검색</button>
                  </div>
            </form>
        </div>

        <table class="table table-hover mb-5">
            <thead>
                <tr class="table-dark">
                    <th>공연명</th>
                    <th>공연장르</th>
                    <th>공연시작일</th>
                    <th>공연종료일</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${list}" var="d">
                    <tr>
                        <td><a href="/performance/perDetail?performance_num=${d.performance_num}" class="text-decoration-none text-dark">${d.prfnm}</a></td>
                        <td>${d.genrenm}</td>
                        <td>${d.prfpdfrom}</td>
                        <td>${d.prfpdto}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>

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
          
        <div class="d-flex justify-content-end mb-5">
          <button type="button" class="btn btn-dark" id="btn">공연 업데이트</button>
        </div>

    </section>

    <script src="/resources/js/list.js"></script>
    
    <script>
        const btn = document.getElementById('btn');
        btn.addEventListener('click', function(){
            location.href='/performance/perUpdate';
        })
    </script>
</body>
</html> --%>