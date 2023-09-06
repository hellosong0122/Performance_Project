 const selectSeat = document.getElementById("selectSeat");

selectSeat.addEventListener("click", function() {
    const selDate = document.querySelector(".choiceDay"); // 선택한 날짜
    const selTime = document.querySelector(".choiceTime"); // 선택한 시간
  

    console.log("선택한 날짜:", selDate.innerText);
    console.log("선택한 시간:", selTime.innerText);


    if(selDate && selTime) {
        const date = selDate.innerText; // 선택한 날짜
        const time = selTime.innerText; // 선택한 시간
        const seatUrl = `../book/seat?date=${date}&time=${time}`;

        console.log("선택한 날짜:", date);
        console.log("선택한 시간:", time);
     

       window.location.href = seatUrl;
    } else {
        alert("날짜 또는 시간을 선택하세요");
    }
});