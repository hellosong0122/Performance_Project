<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8"> 	
    <title>공연 목록</title>
</head>
<body>


<section class="container mt-5">
    <table>
        <thead>
            <tr>
                <th>공연명</th>
                <th>공연시작일</th>
                <th>공연종료일</th>
                <th>공연장르</th>
            </tr>
        </thead>
        
        <tbody>
           <form action="list2.jsp" name="perList">
   			<!--어떤페이지로이동할지  -->
          
           <c:forEach var="p" items="${list}">   
                <tr>
                    <td><button name="selectPerf" id="selectPerBtn" data-num="${p.performance_num}" data-name="${p.prfnm}" 
                        data-start="${p.prfpdfrom}" data-end="${p.prfpdto}">${p.prfnm}</button></td>
                    <!--name은 ? 뒤 이름  -->
                    <td>${p.prfpdfrom}</td>
                    <td>${p.prfpdto}</td>
                    <td>${p.genrenm}</td>
                </tr>
            </c:forEach>
           </form>



      <!-- <c:forEach var="performance" items="${list}">
                <tr>
                    <td><button class="performance_button" id="date_btn">${performance.prfnm}</button></td>
                   
                    <td>${performance.prfpdfrom}</td>
                    <td>${performance.prfpdto}</td>
                    <td>${performance.genrenm}</td>
                </tr>
            </c:forEach> -->
        </tbody>
    </table> 
 		<nav aria-label="Page navigation example">
			<ul class="pagination">
				<li class="page-item ${pager.pre?'':'disabled'}"><a
					class="page-link move" href="./perList?page=${pager.startNum-1}"
					aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
				</a></li>
				<c:forEach begin="${pager.startNum}" end="${pager.lastNum}" var="i">
					<li class="page-item"><a class="page-link move"
						href="./perList?page=${i}">${i}</a></li>
				</c:forEach>
				<li class="page-item ${pager.next?'':'disabled'}"><a
					class="page-link move" href="./perList?page=${pager.lastNum+1}"
					aria-label="Next"> <span aria-hidden="true">&raquo;</span>
				</a></li>
			</ul>
		</nav>

	</section>

</body>
</html>