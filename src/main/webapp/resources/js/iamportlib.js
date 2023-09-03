let price = $("#payBtn").attr("data-price");
let p_name = $("#payBtn").attr("data-name");
let user = $("#payBtn").attr("data-user");
let email = $("#payBtn").attr("data-email");
let tel = $("#payBtn").attr("data-tel");
let addr_full = $("#payBtn").attr("data-addr");
let addr = addr_full.substring(addr_full.indexOf(',') + 1, addr_full.length);
let postcode = addr_full.substring(0, addr_full.indexOf(',') - 1);

$("#payBtn").click(function () {
    console.log(price);
    iamport(p_name,price,email,user,tel,addr,postcode);
})
function iamport(p_name,price,email,user,tel,addr,postcode) {
    IMP.init('imp22750372');   //가맹점 식별코드
    IMP.request_pay({
        pg: 'kicc',           // pg사
        pay_method: 'card',
        merchant_uid: 'merchant_' + new Date().getTime(),
        name: p_name,     //결제창에서 보여질 이름
        amount: price,        //실제 결제되는 가격
        buyer_email: email,
        buyer_name: user,
        buyer_tel: tel,
        buyer_addr: addr,
        buyer_postcode: postcode
    }, function (rsp) {
        console.log(rsp);
        // 결제검증
        $.ajax({
            type: "POST",
            url: "/verifyIamport/" + rsp.imp_uid
        }).done(function (data) {
            console.log(data);
            // 위의 rsp.paid_amount 와 data.response.amount를 비교한후 import 서버검증
            if (rsp.paid_amount == data.response.amount) {
                alert("결제 및 결제검증완료");
            } else {
                alert("결제 실패");
            }
        });
    });
}
