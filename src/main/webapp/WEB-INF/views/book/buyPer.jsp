<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>결제내역</title>
</head>
<body>
    <h1>결제내역입니다</h1>
    
    <table>
        <tr>
            <td>주문번호:</td>
            <td>${productOrderDTO.orderNum}</td>
        </tr>
        <tr>
            <td>상품번호:</td>
            <td>${productOrderDTO.P_Num}</td>
        </tr>
        <tr>
            <td>상품이름:</td>
            <td>${productOrderDTO.P_Name}</td>
        </tr>
        <tr>
            <td>수량:</td>
            <td>${productOrderDTO.P_Count}</td>
        </tr>
        <tr>
            <td>회원번호:</td>
            <td>${productOrderDTO.memberNum}</td>
        </tr>
        <tr>
            <td>주문일자:</td>
            <td>${productOrderDTO.orderDate}</td>
        </tr>
        <tr>
            <td>총 가격:</td>
            <td>${productOrderDTO.totalPrice}</td>
        </tr>
    </table>
</body>
</html>
