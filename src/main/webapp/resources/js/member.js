const id = document.getElementById("id");
const pw = document.getElementById("pw");
const pw2 = document.getElementById("pw2");
const nameadd = document.getElementById("name");
const email = document.getElementById("email");
const birth = document.getElementById("birth");
const btn = document.getElementById("btn");

//idcheck결과
let idCheckResult = false;
let pwCheckResult = false;
let pw2CheckResult = false;
let nameCheckResult = false;
let emailCheckResult = false;

let checkResults = [false, false, false, false, false, false];

id.addEventListener("blur", function () {
  const idResult = document.getElementById(id.id + "Result");

  fetch("idCheck?id=" + id.value, { method: "get" })
    .then((response) => {
      return response.text();
    })
    .then((r) => {
      alert(r.trim());
      if (r.trim() == "1") {
        if (id.value == "" || id.value.length > 10) {
          idResult.innerHTML = "ID는 비어있으면 x, 10글자 이상 입력해주세요";
          idResult.className = "f";
          checkResults[0] = false;
          checkResults[6] = false;
        } else {
          idResult.innerHTML = "가능한 ID입니다.";
          idResult.className = "s";
          checkResults[0] = true;
          checkResults[6] = true;
        }
      } else {
        idResult.innerHTML = "이미 사용중인 ID입니다.";
        idResult.className = "f";
        checkResults[0] = false;
        checkResults[6] = false;
      }
    });
});

pw.addEventListener("blur", function () {
  const pwResult = document.getElementById(pw.id + "Result");
  if (pw.value.length > 5 && pw.value.length < 12) {
    pwResult.innerHTML = "올바른 비밀번호입니다.";
    pwResult.className = "s";
    checkResults[1] = true;
  } else {
    pwResult.innerHTML = "6글자 이상 12글자 미만이어야 합니다.";
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

nameadd.addEventListener("blur", function () {
  let check = emptyCheck(nameadd);
  const nameout = document.getElementById("nameResult");
  nameout.innerHTML = "이름을 입력해주세요";
  nameout.className = "f";
  checkResults[3] = false;
  if (!check) {
    nameout.innerHTML = "";
    checkResults[3] = true;
  }
});

email.addEventListener("blur", function () {
  let check = emptyCheck(email);
  const emailout = document.getElementById("emailResult");
  emailout.innereHTML = "이메일 입력해주세요";
  emailout.className = "f";
  checkResults[4] = false;

  if (!check) {
    emailout.innerHTML = "";
    checkResults[4] = true;
  }
});

birth.addEventListener("blur", function () {
  let check = emptyCheck(birth);
  const birthout = document.getElementById("birthResult");
  birthout.innereHTML = "생일을 입력해주세요";
  birthout.className = "f";
  checkResults[5] = false;

  if (!check) {
    birthout.innerHTML = "OK";
    birthout.className = "s";
    checkResults[5] = true;
  }
});

//비어있는지 체크하는 함수
function emptyCheck(element) {
  if (element.value == null || element.value.length == 0) {
    return true;
  } else {
    return false;
  }
}

btn.addEventListener("click", function () {
  let c = checkResults.includes(false);
  if (!c) {
    //form전송
    console.log("form전송");
  } else {
    alert("필수 항목은 입력해");
  }
});
