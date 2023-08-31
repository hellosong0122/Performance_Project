<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../base/base.jsp"></c:import>
</head>
<body>
    <c:import url="../base/header.jsp"></c:import>

    <section class="container my-5 mx-auto" style="width: 70%;">
    <h2 class="text-center">공연시설 상세정보</h2>
    <div class="mt-5">
        <table class="table my-3">
            <tr>
                <th>공연시설명</th>
                <td>${dto.fcltynm}</td>
            </tr>
            <tr>
                <th>전화번호</th>
                <td>${dto.telno}</td>
            </tr>
            <tr>
                <th>주소</th>
                <td>${dto.adres}</td>
            </tr>
            <tr>
                <th>위도</th>
                <td>${dto.la}</td>
            </tr>
            <tr>
                <th>경도</th>
                <td>${dto.lo}</td>
            </tr>
        </table>
    </div>
    <form id="frm" action="">
        <input type="hidden" name="mt10id" value="${dto.mt10id}">
    </form>
    <div class="d-flex justify-content-end my-5">
        <button type="button" class="btn btn-dark" id="delBtn" data-url="placeDelete">삭제</button>
    </div>
</section>

<script src="/resources/js/delete.js"></script>
</body>
</html>