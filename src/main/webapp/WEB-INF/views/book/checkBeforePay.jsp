<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<script>
    //로컬스토리지에서 공연정보가져오기
    let showPerInfo = localStorage.getItem('selectedPerformance');
    //showPerInfo에 저장된json형식의 문자열을 자바스크립트 객체로 변환, ? 삼항연산자
    let selectedPerformance = showPerInfo ? JSON.parse(showPerInfo) : null;
</script>
<body>
	<h1>확인</h1>
    <!-- 공연정보 가져오기 -->
    <div>
        <p>공연명: <span id="prfnm"></span></p>
        <p>공연 번호: <span id="performance_num"></span></p>
    </div>
    <script>
        // 선택한 공연 정보를 HTML에 출력
        if (selectedPerformance) {
            document.getElementById('prfnm').textContent = selectedPerformance.prfnm;
            document.getElementById('performance_num').textContent = selectedPerformance.performance_num;
        }
    </script>
    
</body>
</html>