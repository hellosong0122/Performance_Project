const id = document.getElementById("id");
const pw = document.getElementById("pw");
const pw2 = document.getElementById("pw2");
const nameadd = document.getElementById("name");
const email = document.getElementById("email");
const birth = document.getElementById("birth");
const phone = document.getElementById("phone");
const mailCheckBtn = document.getElementById("mailCheckBtn");


const frm = document.getElementById("frm");
const btn = document.getElementById("btn");
const addrSearch = document.getElementById("addrSearch");

//idcheck결과
let idCheckResult = false;
let pwCheckResult = false;
let pw2CheckResult = false;
let nameCheckResult = false;
let emailCheckResult = false;
let phoneCheckResult = false;

let checkResults = [false, false, false, false, false];



id.addEventListener("blur", function () {
  const idResult = document.getElementById(id.id + "Result");


  fetch("idCheck?id=" + id.value, { method: "get" })
    .then((response) => {
      return response.text();
    })
    .then((r) => {
      //alert(r.trim());
      if (r.trim() == "1") {
        if (id.value == "" || id.value.length < 6 || id.value.length > 15) {
          idResult.innerHTML = "6~15글자 ID입력해주세요";
          idResult.className = "f";
          checkResults[0] = false;
          checkResults[5] = false;
        } else {
          idResult.innerHTML = "가능한 ID입니다.";
          idResult.className = "s";
          checkResults[0] = true;
          checkResults[5] = true;
        }
      } else {
        idResult.innerHTML = "이미 사용중인 ID입니다.";
        idResult.className = "f";
        checkResults[0] = false;
        checkResults[5] = false;
      }
    });
});

pw.addEventListener("blur", function () {
  const pwResult = document.getElementById(pw.id + "Result");
  if (pw.value.length > 7 && pw.value.length < 13) {
    pwResult.innerHTML = "올바른 비밀번호입니다.";
    pwResult.className = "s";
    checkResults[1] = true;
  } else {
    pwResult.innerHTML = "8~12 글자 입력해주세요.";
    pwResult.className = "f";
    checkResults[1] = false;
  }
});

pw.addEventListener("change", function () {
  pw2.value = "";
  checkResults[2] = false;
  pw2Result.innerHTML = "";
});

pw2.addEventListener("keyup", function () {
  const pw2Result = document.getElementById("pw2Result");
  if (pw.value == pw2.value) {
    pw2Result.innerHTML = "비밀번호가 맞습니다.";
    pw2Result.className = "s";
    checkResults[2] = true;
  } else {
    pw2Result.innerHTML = "비밀번호가 다릅니다.";
    pw2Result.className = "f";
    checkResults[2] = false;
  }
});


phone.addEventListener("blur", function () {
  let check = emptyCheck(phone);
  const nameout = document.getElementById("phoneResult");
  nameout.innerHTML = "핸드폰번호를 입력해주세요";
  nameout.className = "f";
  checkResults[3] = false;
  if (!check) {
    nameout.innerHTML = "";
    checkResults[3] = true;
  }
});

birth.addEventListener("change", function () {
  let check = emptyCheck(birth);
  const birthout = document.getElementById("birthResult");
  birthout.innereHTML = "생일을 입력해주세요";
  birthout.className = "f";
  checkResults[4] = false;

  if (!check) {
    birthout.innerHTML = "";
    birthout.className = "s";
    checkResults[4] = true;
  }
});

// address.addEventListener("blur", function () {
//   let check = emptyCheck(address);
//   const addressResult = document.getElementById("addressResult");
//   addressResult.innereHTML = "주소를 입력해주세요";
//   addressResult.className = "f";
//   checkResults[7] = false;

//   if (!check) {
//     birthout.innerHTML = "";
//     birthout.className = "s";
//     checkResults[7] = true;
//   }
// });

//비어있는지 체크하는 함수
function emptyCheck(element) {
  if (element.value == null || element.value.length == 0) {
    return true;
  } else {
    return false;
  }
}

//주소찾기버튼 클릭했을때
addrSearch.addEventListener("click", function () {
  console.log("ok");
  new daum.Postcode({
    oncomplete: function (data) {
      var addr = "";
      var extraAddr = "";

      if (data.userSelectedType === "R") {
        addr = data.roadAddress;
      } else {
        addr = data.jibunAddress;
      }
      if (data.userSelectedType === "R") {
        if (data.bname !== "" && /[동|로|가]$/g.test(data.bname))
          extraAddr += data.bname;

        if (data.buildingName !== "" && data.apartment === "Y")
          extraAddr +=
            extraAddr !== "" ? ", " + data.buildingName : data.buildingName;

        if (extraAddr !== "") extraAddr = " (" + extraAddr + ")";

        document.getElementById("address").value = extraAddr;
      } else {
        document.getElementById("address").value = "";
      }
      document.getElementById("postcode").value = data.zonecode;
      document.getElementById("address").value = addr;

      document.getElementById("detailAddress").focus();
    },
  }).open();
});



btn.addEventListener("click", function () {
  let c = checkResults.includes(false);
  if (!c) {
    frm.submit();
  } else {
    alert("필수 항목을 입력해주세요");
  }
});