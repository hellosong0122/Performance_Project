<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8"> 	
    <title>공연 목록</title>
  
    <!-- <script>
        $('selectPerBtn').on("click", function(e){
            e.preventDefault();
            //팝업창 설정
            let popUrl = "Calendar.jsp";
            let popOption = "width = 650px, height=550px, top=300px, left=300px, scrollbars=yes";
            //팝업창오픈(url,이름,옵션)     
            window.open(popUrl,"예매하기",popOption);
        })
   

    </script>  -->
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
           <form action="calendar" name="perList">
   			<!--어떤페이지로이동할지  -->
          
           <c:forEach var="p" items="${list}">   
                <tr>
                    <td>${p.prfnm}</td>
                    <td>${p.prfpdfrom}</td>
                    <td>${p.prfpdto}</td>
                    <td>${p.genrenm}</td>
                    <td><button  type="button" id="selectPerBtn" data-num="${p.performance_num}" data-name="${p.prfnm}" 
                        data-start="${p.prfpdfrom}" data-end="${p.prfpdto}">예매하기</button></td>
                    <!--name은 ? 뒤 이름  -->
                </tr>
            </c:forEach>
           </form>

    

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
            <script src="/resources/js/popopen.js" type="text/javascript"></script>
</body>
</html>