let orderNum = $('#cacelgift').attr('data-ordernum');
$('cacelgift').on('click',function(){
    console.log('click');
    window.location.href="/pay/deleteorder?orderNum="+orderNum;
});

function cacelgift(){
    console.log('click');
    location.href="/pay/deleteorder?orderNum="+orderNum;
}