let length  = $('#listdata').attr('data-length');
let member_num = $("#payBtn").attr("data-usernum");
let sumprice = 0;
let tempprice = 0;
let pname = "";
let pnum = "";

let user = $("#payBtn").attr("data-user");
let email = $("#payBtn").attr("data-email");
let tel = $("#payBtn").attr("data-tel");
let addr_full = $("#payBtn").attr("data-addr");
let addr = addr_full.substring(addr_full.indexOf(',') + 1, addr_full.length);
let postcode = addr_full.substring(0, addr_full.indexOf(',') - 1);

for (let i = 0; i < length; i++) {
    pnum  = $('#pname'+i).attr('data-pnum');
    console.log("pnum"+pnum);
    pname = $('#pname'+i).attr('data-pname');
    let price = $('#price'+i).attr('data-price');
    let count = $('#counter'+i).attr('data-count');
    tempprice = price * count;
    $('#price'+i).attr('data-temprice',tempprice)
    $('#price'+i).text(tempprice)
    sumprice +=  tempprice*1;
    console.log("price : "+price);
    console.log("count : "+count);
    console.log("sumprice : "+sumprice);
        
}
$('#totalPrice1').text(sumprice);
$('#totalPrice2').text(sumprice);

$("#payBtn").on("click", function() {

    if(length>1){
        pname = pname+" 외"+(length*1-1)+"건"
    }
 
    iamport(pname, sumprice, email, user, tel, addr, postcode);
})
function iamport(p_name, price, email, user, tel, addr, postcode) {
    let uid = "";
    IMP.init('imp22750372');
    IMP.request_pay({
        pg: 'nice.iamport00m',
        pay_method: 'card',
        merchant_uid: createOrderNum(),
        name: p_name,
        amount: price,
        buyer_email: email,
        buyer_name: user,
        buyer_tel: tel,
        buyer_addr: addr,
        buyer_postcode: postcode

    }, function (rsp) { // callback
        console.log(rsp);
        console.log(rsp.paid_amount);
        if (rsp.success) {
            uid = rsp.imp_uid;
            console.log("rsp.merchant_uid "+rsp.merchant_uid);
            

            for (let i = 0; i < length; i++) {
                $.ajax({
                    anyne: true,
                    type: "POST",
                    url: '/pay/done',
                    data: {
                        "orderNum": rsp.merchant_uid,
                        "imp_uid": rsp.imp_uid,
                        "p_Num": $('#pname'+i).attr('data-pnum'), //상품번호
                        "p_Name": $('#pname'+i).attr('data-pname'),
                        "p_Count": $('#counter'+i).attr('data-count'),
                        "member_num": member_num,// 회원번호 ,
                        "totalPrice": $('#price'+i).attr('data-temprice')
                    },
                    success: function () {
                        console.log("answkduf dkanrjsk");
                        if ( i == length-1) {
                            location.replace('/pay/buygiftinfo?orderNum='+rsp.merchant_uid);    
                        }
                        
                    }
                });
            }
            
        } else {
            console.log(orderNum);
            console.log("fail to pay process : " + rsp);
            console.log("fail to pay process : " + rsp.error_msg);
        }
    });
}


function createOrderNum() {
    const date = new Date();
    const year = date.getFullYear();
    const month = String(date.getMonth() + 1).padStart(2, "0");
    const day = String(date.getDate()).padStart(2, "0");

    let orderNum = year + month + day;
    for (let i = 0; i < 10; i++) {
        orderNum += Math.floor(Math.random() * 8);
    }
    return 'pp'+orderNum;
}
