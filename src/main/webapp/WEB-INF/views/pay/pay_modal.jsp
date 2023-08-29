<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
</head>iamport test
<script type="text/javascript">

$("#payBtn").click(function(){
    iamport();
})
function iamport(){
    IMP.init('imp22750372');   //가맹점 식별코드
    IMP.request_pay({
        pg : 'kicc',           // pg사
        pay_method : 'card',
        merchant_uid : 'merchant_' + new Date().getTime(),
        name : '상품1' ,     //결제창에서 보여질 이름
        amount : 1,        //실제 결제되는 가격
        buyer_email : 'kss111112@naver.com',
        buyer_name : '구매자',
        buyer_tel : '010-4701-0052',
        buyer_addr : '서울 강남구 도곡동',
        buyer_postcode : '123-456'
    }, function(rsp) {
        console.log(rsp);
        // 결제검증
        $.ajax({
            type : "POST",
            url : "/verifyIamport/" + rsp.imp_uid 
        }).done(function(data) {
            console.log(data);
            // 위의 rsp.paid_amount 와 data.response.amount를 비교한후 import 서버검증
            if(rsp.paid_amount == data.response.amount){
                alert("결제 및 결제검증완료");
            } else {
                alert("결제 실패");
            }
        });
    });
}

</script>
<body>
	<!-- ********************************모달 시작****************************** -->
	<button id="payBtn" onclick="iamport()">결제하기</button><br>
    <button id="cancelBtn" onclick="iamport()">취소하기</button>
	
</body>
</html>