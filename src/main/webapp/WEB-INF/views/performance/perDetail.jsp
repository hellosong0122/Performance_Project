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
<body>
    <c:import url="../base/adminLeft.jsp"></c:import>
	<main class="main-content position-relative max-height-vh-100 h-100 mt-1 border-radius-lg " style="margin-left: 3.125rem;">

    <section class="container my-5 mx-auto" style="width: 70%;">
        <h2 class="text-center">공연 상세정보</h2>
        
        <div class="mt-5">
            <table class="table">
                <tr>
                    <td rowspan="8" width="20%"><img src="${dto.poster}" width="300"></td>
                    <th width="10%">공연명</th>
                    <td>${dto.prfnm}</td>
                </tr>
                <tr>
                    <th>장르</th>
                    <td>${dto.genrenm}</td>
                </tr>
                <tr>
                    <th>공연시작일</th>
                    <td>${dto.prfpdfrom}</td>
                </tr>
                <tr>
                    <th>공연종료일</th>
                    <td>${dto.prfpdto}</td>
                </tr>
                <tr>
                    <th>공연시간</th>
                    <td>${dto.dtguidance}</td>
                </tr> 
                <tr>
                    <th>런타임</th>
                    <td>${dto.prfruntime}</td>
                </tr>
                <tr>
                    <th>출연진</th>
                    <td>${dto.prfcast}</td>
                </tr>
                <tr>
                    <th>티켓가격</th>
                    <td>
                        <li>VIP석 ${dto.pcseguidance+80000}원</li>
                        <li>R석 ${dto.pcseguidance+60000}원</li>
                        <li>S석 ${dto.pcseguidance+40000}원</li>
                        <li>A석 ${dto.pcseguidance}원</li>
                    </td>
                </tr>
            </table>
        </div>

        <form id="frm" action="">
            <input type="hidden" name="performance_num" value="${dto.performance_num}">
        </form>
        <div class="d-flex justify-content-end my-5">
            <button type="button" class="btn" id="delBtn" data-url="perDelete">삭제</button>
        </div>
    </section>
    <script src="/resources/js/delete.js"></script>
    
        <c:import url="../base/adminFooter.jsp"></c:import>
        </main>
    
</body>
</html>