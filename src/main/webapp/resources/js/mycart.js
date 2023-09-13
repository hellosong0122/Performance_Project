let sum_price = 0;
let total_sum = 0;

let length = $('#size').attr('data-length')
let member_num = ""
let p_Num =""
console.log("length" + length);
$('#totalprice').text(total_sum);
for (let i = 0; i < length; i++) {
  let price = $('#data' + i).attr('data-price');
  let count = $('#data' + i).attr('data-count');
  let sum = price * 1 * count;
  $('#total' + i).text(sum);
  total_sum += sum;

  $('#item' + i).on('click', function () {

    let p_num = $('#data' + i).attr('data-pnum');
    console.log('click2');
    location.replace('/product/giftDetail?p_Num=' + p_num);

  });


  $('#close'+i).on('click', function () {
    console.log('close'+i);
      $('#items'+i).css('display','none');
      p_Num = $('#data'+i).attr('data-pnum') //p_Num
       member_num = $('#size').attr('data-user'); //member_num
       console.log('removeclick'+ p_Num);
       deleteItem(p_Num,member_num)

  });
}


$('buy_btn').on('click',function(){

})

$('#back_btn').on('click',function(){
  history.back();
})

function buyGift(){
  $.ajax({
    type: "POST",
    url: '/pay/buycart',
    data: {
        "p_Num": p_Num,
        "member_num": member_num
    },
    success: function () {
        alert('delete data')
    },
    error : function(){
        console.log("error");
    }
});
}


function deleteItem(p_Num,member_num){
  $.ajax({
    type: "POST",
    url: '/cart/remove',
    data: {
        "p_Num": p_Num,
        "member_num": member_num
    },
    success: function () {
        alert('delete data')
    },
    error : function(){
        console.log("error");
    }
});
} 