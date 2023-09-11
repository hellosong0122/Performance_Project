const checkAll = document.getElementById("checkAll");
const check = document.getElementsByClassName("check");
const check2 = document.getElementsByClassName("check2");
const btn = document.getElementById("btn");

checkAll.addEventListener("click", function(){
    for(c of check) {
        c.checked = checkAll.checked;        	
    }
    $("#btn").attr('disabled', false);
})

// 선택동의
for(c of check) {
    c.addEventListener("click", function(){

        let result = true;

        for(ch of check2) {
            if(!ch.checked) {
                result = ch.checked;              
                break;
            }
        }
        checkAll.checked = result;
        console.log("result");
    })
}

function getCheckboxValue(event)  {
  let rst= '';
  if(event.target.checked)  {
    rst = event.target.value;
  }else {
    rst = '';
  }

}

// 버튼
btn.addEventListener("click", function(){
    if(checkAll.checked){
       alert("회원가입을 진행합니다.");       
       location.replace="/member/join";       
    } else {
        alert("필수약관에 동의해야 합니다.");
    }
});




