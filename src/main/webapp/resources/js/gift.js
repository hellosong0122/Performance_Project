

let count = 1;
let user = $('user').attr('data-user');
let price = $('#p_Price').text();
    $('#buy_btn').on('click',function(){

    if (member_num == "") {
        alert("로그인 후 이용해주세요");
    }

})
console.log(price);
console.log((count * 1));
$("#p_Total").text((count * 1) * price);
console.log($("#p_Total").text((count * 1) * price));
$('#h_p_Price').attr('value', price);
console.log($('#h_p_Price').attr('value', price));

$("#p_Price").text($("#h_p_Price").val() + "원");

let p_Num = $('#h_p_Num').attr('value')
console.log(p_Num);

let p_counter = $('#h_p_Counter').attr('value');
console.log("p_counter : " + p_counter);



let member_num = $('#h_member_num').attr('value');
console.log(member_num);
$


$('#add_cart').on('click', function () {
    if (member_num != "") {
        addToCart();
    } else {
        alert("로그인 후 이용해주세요");
    }


});

function addToCart() {
    console.log("counter : " + count);
    console.log("click");
    $.ajax({
        anyne: true,
        type: "POST",
        url: '/cart/add',
        data: {
            "p_Num": p_Num,
            "cart_Count": count,
            "member_num": member_num
        },
        success: function () {
            alert('insert data')
        },
        error: function () {
            console.log("error");
        }
    });
}


function increment() {

    count++;
    console.log(count);
    let total = (count * 1) * price;

    $("#counter").text(count);

    $("#p_Total").text((count * 1) * price);
    $('#h_p_Total').attr('value', total);

    let totalvalue = $('#h_p_Total').attr('value');
    console.log(totalvalue);

    $("#p_Counter").html(count);
    $('#h_p_Counter').attr('value', count);


    return false;
}


function decrement() {

    console.log("minus click");

    if (count > 0) {
        count--;
        console.log(count);
        let total = (count * 1) * price;

        $("#counter").text(count)

        $("#p_Total").text((count * 1) * price);
        $('#h_p_Total').attr('value', total);

        let totalvalue = $('#h_p_Total').attr('value');
        console.log(totalvalue);

        $("#p_Counter").html(count);
        $('#h_p_Counter').attr('value', count);
    }

    return false;
}
