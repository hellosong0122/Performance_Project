

const popbutton = document.getElementById("selectPerBtn")
const selectedPer = document.querySelector(".selectedPer");




popbutton.addEventListener("click", function() {
    
     
        
    
    // 데이터 가져오기
    const prfName = popbutton.getAttribute("data-name");
    const prfStart = popbutton.getAttribute("data-start");
    const prfEnd = popbutton.getAttribute("data-end");
    const prNum = popbutton.getAttribute("data-num");
    const prPrice = popbutton.getAttribute("data-price")
    const fcltynm = popbutton.getAttribute("data-fcltynm")
    // 데이터 확인을 위해 출력
    console.log("공연명:", prfName);
    console.log("공연명:", fcltynm);
    console.log("공연시작일:", prfStart);
    console.log("공연종료일:", prfEnd);
    console.log("공연번호:", prNum);
    console.log("공연가격:",prPrice)
    

    
    //섹션1 구간에 선택영화 이름과 포스터 넣기
    // selectedPer.innerHTML =  `
    // <h3>${prfName}</h3>
    // <img src="${prPost}" width="400">
    // `;
    
    //`<h3>${prfName}</h3>
    //<img src="${prPost}" width="400">`;
        
    const popUrl = `../book/calendar?start=${encodeURIComponent(prfStart)}&end=${encodeURIComponent(prfEnd)}&name=${encodeURIComponent(prfName)}`;
   //encodeURIComponent : URI로 데이터를 전달하기 위해서 문자열을 인코딩
    //const popUrl = `../book/calendar?start=${prfStart}&end=${prfEnd}&end=${prfName}`;
    const popOption = "width=1000, height=1000, left=200, top=0, scrollbars=yes";
    window.open(popUrl, "예약", popOption);
})
