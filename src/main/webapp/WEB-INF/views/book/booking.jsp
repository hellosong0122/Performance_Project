<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script type="text/javascript"> 
    
    </script>
    <title>Document</title>
   
</head>
<body>
	<h1>날짜선택</h1>
	<ul>
		<li>공연명</li>
		<li>공연시작일</li>
		<li>공연종료일</li>
	</ul>
    <table>
        <thead>
            <tr>
                <td>공연명</td> 	
                <td>공연 시간</td>
            </tr>
        </thead>
        <tbody>
    	<c:forEach var="performanceTime" items="${booking}">
                <tr>
                    <td>${performanceTime.prfnm}</td>
                    <td>${performanceTime.dtguidance}</td>
                </tr>
            </c:forEach>
		</tbody>			

    </table> --%>
        <button type="button">click</button>
</body>
</html>