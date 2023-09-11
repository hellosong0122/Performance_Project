let prfnmVal = $('#prfnm_input').attr('value');
let performance_numVal = $('#performance_num_input').attr('value');
let member_numVal = $('#member_num_input').attr('value');
let member_idVal = $('#member_id_input').attr('value');
let member_emailVal = $('#member_email_input').attr('value');
let member_name = $('#member_name_input').attr('value');
let selectedDateVal = $('#selectedDate_input').attr('value');
let selectedTimeVal = $('#selectedTime_input').attr('value');
let selectedSeatsVal = $('#selectedSeats_input').attr('value');

console.log(selectedSeatsVal);
//4 6 8
let seatA = selectedSeatsVal.split("A").length - 1;
let seatS = selectedSeatsVal.split("S").length - 1;
let seatR = selectedSeatsVal.split("R").length - 1;
let seatV = selectedSeatsVal.split("VIP").length - 1;

console.log(basePrice);

let sumPrice = (basePrice * seatA) + (basePrice + 40000) * seatS + (basePrice + 60000) * seatR + (basePrice + 80000) * seatV;
$('#priceValue').text(sumPrice + " 원");



$('#payBtn').click(function () {
    console.log( "year : "+selectedDate.month);
    console.log("click");
    console.log(member_emailVal);
    iamport();
})

function createOrderNum() {
    const date = new Date();
    const year = date.getFullYear();
    const month = String(date.getMonth() + 1).padStart(2, "0");
    const day = String(date.getDate()).padStart(2, "0");

    let orderNum = year + month + day;
    for (let i = 0; i < 10; i++) {
        orderNum += Math.floor(Math.random() * 8);
    }
    return orderNum;
}
function iamport() {
    IMP.init('imp22750372');   //가맹점 식별코드
    console.log(member_name);
    IMP.request_pay({
        pg: 'nice.iamport00m',           // pg사
        pay_method: 'card',
        merchant_uid: 'pt' + createOrderNum(),
        name: prfnmVal,     //결제창에서 보여질 공연 이름???
        amount: 100,
        buyer_name: member_name,       //실제 결제되는 가격
        buyer_email: member_emailVal,
    }, function (rsp) {
        if (rsp.success) {
            console.log(rsp);
            $.ajax({
                url: "/book/done",
                type: "POST",
                data: {
                    "orderNum" : rsp.merchant_uid,
                    "imp_uid" : rsp.imp_uid,
                    "performance_num" : performance_numVal,
                    "prfnm" : prfnmVal,
                    "performanceDate" : selectedDateVal,
                    "performanceTime" : selectedTimeVal,
                    "perSeat" : selectedSeatsVal,
                    "memberNum" : member_numVal,
                    "totalPrice" : sumPrice,
                }
            }).done(function (data) {
                console.log(data);
            // window.location.href = "/book/done"; 
               location.replace('/book/bookDone');
              
              
            });
        } else {
            console.log("fail to pay process : " + rsp);
            console.log("fail to pay process : " + rsp.error_msg);
        }

        // 결제검증


         //const bookUrl = '/book/done';
         //window.location.replace = bookUrl;
    });
}

