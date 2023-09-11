// ID check
$("#id").on("keyup", function(){
    const rst = isId(id.value)

    if (rst == true) {
        $.ajax({
          type:'get',
          url:'./idCheck',
          data:{
            id: $("#id").val()
          },
          success:function(result){
            if (result.trim() == "1" ) {          
              $("#idResult").html("가능한 ID입니다.");
              $("#idResult").addClass("s");     
            } else {
              $("#idResult").html("이미 사용중인 ID입니다.");
              $("#idResult").addClass("f");     
            }
          },
          error:function(){
            console.log('error');
          }
        })

    } else {
          $("#idResult").html("ID는 4~8자 영대소문자 또는 숫자이어야 합니다.");
          $("#idResult").addClass("f");     
    }
});

// ID 정규식 체크 메서드
function isId(asValue) {
 
	var regExp = /^[A-Za-z0-9]{4,8}$/;
 
	return regExp.test(asValue); //맞는 경우 true리턴
}

//pw check
$("#pw").on("keyup", function(){
  const rst = isPw(pw.value)

  if (rst == true) {    
    $("#pwResult").html("올바른 비밀번호입니다.");
    $("#pwResult").addClass("s");
  } else {
    $("#pwResult").html("비밀번호는 4~8자 영대소문자 또는 숫자이어야 합니다.");
    $("#pwResult").addClass("f");
  }
});

$("#pw").on("change", function(){
    $("#pw2").val();
    $("#pw2Result").html("");
});

//pw2 check
$("#pw2").on("keyup", function(){
  if ($("#pw").val() == $("#pw2").val()) {
      $("#pw2Result").html("비밀번호가 맞습니다.");
      $("#pw2Result").addClass("s");
  } else {
      $("#pw2Result").html("비밀번호가 틀렸습니다.");
      $("#pw2Result").addClass("f");
  }
});


// PW 정규식 체크 메서드
function isPw(asValue) {
 
	var regExp = /^[A-Za-z0-9]{4,8}$/;
 
	return regExp.test(asValue); //맞는 경우 true리턴
}

//name check
$("#name").on("keyup", function(){
    let check = emptyCheck($("#name").val());
    console.log(check);
    $("#nameResult").html("이름을 입력해주세요.");
    $("#nameResult").addClass("f");
    if (!check) {
        $("#nameResult").html("");
    }
});

//핸드폰번호
$("#phone").on("keyup", function(){
  let check = emptyCheck($("#phone").val());
  console.log(check);
  $("#phoneResult").html("핸드폰번호를 입력해주세요.");
  $("#phoneResult").addClass("f");
  if (!check) {
      $("#phoneResult").html("");
  }
});

//비어있는지 체크하는 함수
function emptyCheck(val) {
    if (val == null || val.length == 0) {
        return true;
    } else {
        return false;
    }
}

//등록버튼
$("#addBtn").on("click", function(){
  //아이디
  if ($("#id").val() == "") {
    alert("[안내] 아이디를 입력해주세요.");
    $("#id").focus();
    return false;
  }
  //비밀번호
  if ($("#pw").val() == "") {
    alert("[안내] 비밀번호를 입력해주세요.");
    $("#pw").focus();
    return false;
  }
  //비밀번호 확인
  if ($("#pw2").val() == "") {
    alert("[안내] 비밀번호 확인을 입력해주세요.");
    $("#pw2").focus();
    return false;
  }
  // 이름
  if ($("#name").val() == "") {
    alert("[안내] 이름을 입력해주세요.");
    $("#name").focus();
    return false;
  } 
  //휴대폰
  if ($("#phone").val() == "") {
    alert("[안내] 휴대폰 번호를 입력해주세요.");
    $("#phone").focus();
    return false;
  }  

  $("#frm").submit();
  return false;
});