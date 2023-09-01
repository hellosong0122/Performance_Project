//  const btn = document.querySelector('.selectPerBtn');
//  //아마 버튼이 name으로 되어있어서 querySelector인듯..?

//  btn.addEventListener("click",function(){
//      let popUrl = "Calendar.jsp";
//      let popOption = "width = 650px, height=550px, top=300px, left=300px, scrollbars=yes";
//      //팝업창오픈(url,이름,옵션)     
//      window.open(popUrl,"예매하기",popOption);
//  })

const popbutton = document.getElementById("button")

popbutton.addEventListener("click",function(){
    window.open("practicepopup.html", "팝업연습", "width=300, height=400, left=0, top=0")
})