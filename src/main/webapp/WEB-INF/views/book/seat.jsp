<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE html>
    <html>
        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>Document</title>
            <style>
                
                .seat{
                    width: 50px;
                    height: 50px;
                  
                }
                
                
                /*좌석 등급마다 색을 다르게 하기*/
                .VIP{
                    background-color: gold;
                    color: white;
                    
                }
    
                /* .VIP.selected{
                    background-color: red;
                    color: white;
                } */
    
              
                .R{
                    background-color: skyblue;
                    color: white;
                }
                .S{
                    background-color: pink;
                    color: white;
                }
                .A{
                    background-color: green;
                   color: white;
                }
                
                .clicked  {
                    background-color: red;
                    color: white;
                } 
                
                /*좌석별가격표*/
                .price {
                position: relative;
                margin-left: 800px;
                bottom: 570px;
                }
                .priceTable {
                    width: 20%;
                    border-collapse: separate;
                    text-align: center;
                }
                .priceTable td {
                    border: 1px;
                }
                #VIP {
                    color: gold;
                }
                #R {
                    color: skyblue;
                }
                #S {
                    color: pink;
                }
                #A {
                    color: green;
                }

                /*선택좌석*/
                .list {
                    position: relative;
                    margin-left: 1000px;
                    bottom: 350px;

                }
                .seatTable {
                    width: 20%; /*테이블크기*/
                    border-collapse: separate;
                }
                .seatTable td {
                    border: 1px;
                }
                
                /* 버튼 스타일 */
                    #goToPay {
                    position: fixed;
                    float: right;
                    bottom: 20px;
                    left: auto; /*left 속성 제거*/
                    right: 20px;
                    color: white; /* 글자색 설정 */
                    padding: 10px 20px; /* 내용과 버튼 간 여백 설정 */
                    border: none; /* 테두리 제거 */
                    border-radius: 5px; /* 모서리둥글게 */
                    cursor: pointer;
                    }
    
    
                
            </style>
    </head>
    <body>
        <div class="seat-wrapper"></div>
        <!-- 전체좌석-->
        
        
        <div class="seatlist">
            <table class="seatTable">
                <thead>
                    <tr>
                        <td>선택한 좌석</td>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td><!--좌석출력-->
                        <div class="selectedseats"></div>
                    </td>
                </tr>
            </tbody>
        </table>  
        </div>
        
          <div class="price">
            <table class="priceTable" border="5" width="100px">
              <thead>
                <tr>
                  <td>좌석금액</td>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td id="VIP">VIP : 140000원</td>
                </tr>
                <tr>
                  <td id="R">R석 : 120000원</td>
                </tr>
                <tr>
                  <td id="S">S석 : 100000원</td>
                </tr>
                <tr>
                  <td id="A">A석 : 60000원</td>
                </tr>
                <div>
                    <td id="All">총 금액 : </td>
                </div>
              </tbody>
            </table>
          </div>
           
          <button type="button" id="goToPay" onclick="location='checkBeforePay'">좌석 예약</button> 
          
        </body>
  
  <script>

        let test = [];
        let selectedSeats = new Array();
        let selectedSeatsMap = [];
        const seatWrapper = document.querySelector(".seat-wrapper");
        let clicked = "";
        let div = ""; 
        //선택좌석
        const seatDiv = document.querySelector(".selectedseats");

        // 세션에 저장
        const selSeat = []; 

        // 로컬 스토리지에 선택한 좌석 정보 저장
        localStorage.setItem("selSeat", JSON.stringify(selSeat));
        console.log("선택좌석:"+localStorage.getItem('selSeat'));

        
        //좌석별 가격 정보
        const seatPrices = {VIP : 140000, R: 120000, S:100000, A:60000};
    
        for (let i = 0; i < 10; i++) {
            //위에는 행갯수 정하기
            div = document.createElement("div");
            seatWrapper.append(div); //추가
            for (let j = 1; j < 16; j++) {
                const input = document.createElement('input');
                input.type = "button";
                input.name = "seats"
                input.classList = "seat"; //버튼으로 seat추가
                
                //좌석별 등급 구하기, class 추가 
                let seatClass = '';
                if (i === 0) {
                    seatClass = 'VIP';
                } else if (i >= 1 && i <= 2) {
                    seatClass = 'R';
                } else if (i >= 3 && i <= 5) {
                    seatClass = 'S';
                } else if (i >= 6 && i <= 9) {
                    seatClass = 'A';
                }

                
                input.classList.add(seatClass);
                input.dataset.price = seatPrices[seatClass]; // 좌석 가격 데이터 설정
                
                //3중포문을 사용하지 않기위해 
                mapping(input, i, j);
                div.append(input);
                input.addEventListener('click', function(e) {
                    
                    const selectedSeat = e.target.value 
                    const seatPrice = e.target.dataset.price; // 선택좌석가격    
            
                    console.log(selectedSeat + "의 가격은 " + seatPrice + "원입니다.");
                    
                    //중복방지 함수
                    selectedSeats = selectedSeats.filter((element, index) => selectedSeats.indexOf(element) != index);
    
                    //click class가 존재할때(제거해주는 toggle)
               
                    if (input.classList.contains("clicked")) {
                        input.classList.remove("clicked");
                        clicked = document.querySelectorAll(".clicked");
                        selectedSeats.splice(selectedSeats.indexOf(e.target.value), 1);
                        clicked.forEach((data) => {
                            selectedSeats.push(data.value);
                        });
                        //click class가 존재하지 않을때 (추가해주는 toggle)
                        // 선택한 좌석 정보를 세션 스토리지에 업데이트
                        sessionStorage.setItem("selSeat", JSON.stringify(selectedSeats));
                    
                    } else {
                        input.classList.add("clicked");
                        clicked = document.querySelectorAll(".clicked");
                        clicked.forEach((data) => {
                            selectedSeats.push(data.value);
                        })
                        // 선택한 좌석 정보를 세션 스토리지에 업데이트
                        sessionStorage.setItem("selSeat", JSON.stringify(selectedSeats));
                        console.log("세션좌석:"+ sessionStorage.getItem('selSeat'));

                    };
                
    
                     // 선택된 좌석들을 div에 표시
                    seatDiv.innerHTML = selectedSeats.join(", ");    
                    console.log(seatDiv); // 선택된 좌석들 출력
                    
                    //updateTotalPrice();//총가격 업데이트
                })
            }
        }
    
        function mapping(input, i, j) {
            if (i === 0) {
                input.value = "A" + j;
                
            } else if (i === 1) {
                input.value = "B" + j;
            } else if (i === 2) {
                input.value = "C" + j;
            } else if (i === 3) {
                input.value = "D" + j;
            } else if (i === 4) {
                input.value = "E" + j;
            } else if (i === 5) {
                input.value = "F" + j;
            } else if (i === 6) {
                input.value = "G" + j;
            } else if (i === 7) {
                input.value = "H" + j;
            } else if (i === 8) {
                input.value = "I" + j;
            } else if (i === 9) {
                input.value = "J" + j;
            } else if (i === 10) {
                input.value = "K" + j;
            } 
        }

        // function updateTotalPrice() { // 참고
        // let totalPrice = 0; // 초기화
        // for (const seat of selectedSeats) {
        //     const seatProperty = document.querySelector(`input[value="${seat}"]`); // 선택한 좌석
        //     const seatClass = seatProperty.classList[1]; // 해당 좌석의 등급 클래스
        //     const seatPrice = seatPrices[seatClass]; // 해당 좌석의 가격
        //     totalPrice += seatPrice;

        // }

       // 총 가격 업데이트
            //     const  updateTotalPrice = document.querySelector("#All");
            //     updateTotalPrice.textContent = "총 가격 : " + totalPrice + "원";
        
            // }
        
    </script>
  
    </html>
