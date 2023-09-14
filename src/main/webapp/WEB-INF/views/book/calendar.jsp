		<%@ page language="java" contentType="text/html; charset=UTF-8"
			pageEncoding="UTF-8"%>
			<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
			<!DOCTYPE html>
			<html>        
			<head>
				<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
				<title>달력</title>
		
				<!-- 로그인 여부 묻기  -->
				<c:if test="${empty sessionScope.member}">
					<script type="text/javascript">
						window.opener.location.href = "../member/userLogin	";
						alert("로그인하세요");
						window.close(); // 팝업 창 닫기
					</script>    
					</c:if>
				
				<style>
					@import url('https://fonts.googleapis.com/css?family=Questrial&display=swap');
			
					body { background-color : rgb(255, 241, 251);} 
				
					div {
						background-color : white; /*이거지우면 백그라운드색상과동일*/
						height: auto;
						width: 400px;
						margin: 0px;
						padding: 20px;
						margin: 0 auto;
						border-radius:5px;
						box-shadow:0px 40px 30px -20px rgba(0,0,0,0.3);
					}
			
					td {
						width: 50px;
						height: 50px;
					}
			
					.Calendar {
						text-align: center;
					}
			
					.Calendar>thead>tr:first-child>td {
						font-family: 'Questrial', sans-serif;
						font-size: 1.1em;
						font-weight: bold;
					}
			
					.Calendar>thead>tr:last-child>td {
						font-family: 'Questrial', sans-serif;
						font-weight: 600;     
					}
			
					.Calendar>tbody>tr>td>p {
						font-family: 'Montserrat', sans-serif;
						height: 45px;
						width: 45px;
						border-radius: 45px;
						transition-duration: .2s;
						line-height: 45px;
						margin: 2.5px;
						display: block;
						text-align: center;
					}        
			
					.pastDay {
						color: lightgray;
					}
			
					.today {
						background-color: null;     /*오늘날짜는 표시x*/
						color: dimgray;
						font-weight: 600;
						cursor: pointer;
					}
			
					.futureDay {
						background-color: #FFFFFF;
						cursor: pointer;
					}
					.futureDay:hover{
						background:#eee;
					}
			
					.futureDay.choiceDay,
					.today.choiceDay {
						background: #000000;
						color: #fff;
						font-weight: 600;
						cursor: pointer;
					}
					/* ---------------시간추가------------------ */
					/*.selectTime 는 div의 class*/
					.selectTime {
						text-align: center;
						margin-top: 20px;
						
					}
			
					.selectTime table {
						width: 100%;
						border-collapse: collapse;
					}
			
					.selectTime th,
					.selectTime td {
						padding: 10px;
						border: 1px solid #ccc;
					}
					
					/* 선택된 시간 */
					.choiceTime {
						background: #000000; 
						color: #fff;
						font-weight: 600;
						cursor: pointer;
					}

			/* 버튼 스타일 */
				#selectSeat {
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
					background-color: #000000;
					width: 125px; 
					height: 50px; 
					font-size: 17px;
				}
				</style>
			
			
				<script>
					window.onload = function () { buildCalendar(); }    // 웹 페이지가 로드되면 buildCalendar 실행
			
					let nowMonth = new Date();  // 현재 달을 페이지를 로드한 날의 달로 초기화
					let today = new Date();     // 페이지를 로드한 날짜를 저장
					today.setHours(0, 0, 0, 0);    // 비교 편의를 위해 today의 시간을 초기화

					let selectedStartDate = null; // 선택한 공연의 시작일
					let selectedEndDate = null;   // 선택한 공연의 종료일
			


					
					// URL에서 파라미터를 추출하는 함수, 참고함
					function getUrlParameter(name) {
					name = name.replace(/[\[]/, '\\[').replace(/[\]]/, '\\]');
					var regex = new RegExp('[\\?&]' + name + '=([^&#]*)');
					var results = regex.exec(location.search);
					return results === null ? '' : decodeURIComponent(results[1].replace(/\+/g, ' '));
				}



					// 달력 생성 : 해당 달에 맞춰 테이블을 만들고, 날짜를 채워 넣는다.
					function buildCalendar() {
			
						let firstDate = new Date(nowMonth.getFullYear(), nowMonth.getMonth(), 1);     // 이번달 1일
						let lastDate = new Date(nowMonth.getFullYear(), nowMonth.getMonth() + 1, 0);  // 이번달 마지막날
			
						let tbody_Calendar = document.querySelector(".Calendar > tbody");
						document.getElementById("calYear").innerText = nowMonth.getFullYear();             // 연도 숫자 갱신
						document.getElementById("calMonth").innerText = leftPad(nowMonth.getMonth() + 1);  // 월 숫자 갱신
			
						while (tbody_Calendar.rows.length > 0) {                        // 이전 출력결과가 남아있는 경우 초기화
							tbody_Calendar.deleteRow(tbody_Calendar.rows.length - 1);
						}
			
						let nowRow = tbody_Calendar.insertRow();        // 첫번째 행 추가           
			
						for (let j = 0; j < firstDate.getDay(); j++) {  // 이번달 1일의 요일만큼
							let nowColumn = nowRow.insertCell();        // 열 추가
						}
			
						for (let nowDay = firstDate; nowDay <= lastDate; nowDay.setDate(nowDay.getDate() + 1)) {   // day는 날짜를 저장하는 변수, 이번달 마지막날까지 증가시키며 반복  
							
							let nowColumn = nowRow.insertCell();        // 새 열을 추가하고
			
							//  newDIV : 각 날짜 셀을 나타내는 "p" 엘리먼트 , 셀을 만들고 아래처럼 날짜를 넣어줌
							let newDIV = document.createElement("p");
							newDIV.innerHTML = leftPad(nowDay.getDate());        // 추가한 열에 날짜 입력
							nowColumn.appendChild(newDIV);
						
							if (nowDay.getDay() == 6) {                 // 토요일인 경우
								nowRow = tbody_Calendar.insertRow();    // 새로운 행 추가
							}
							//공연이후클릭x 참고 
							if (nowDay.setHours(0,0,0,0) < today.setHours(0,0,0,0)) { 
								// 오늘 날짜 이전인 경우
								// 날짜로 하면 시작당일날 선택불가하여 시간으로 변경
								newDIV.className = "pastDay";
								newDIV.onclick = null; // 클릭 이벤트 제거
							} 
							else if (nowDay.setHours(0,0,0,0) > selectedEndDate.setHours(0,0,0,0)) { 
								// 공연 종료 날짜 이후인 경우	
								newDIV.className = "pastDay";
								newDIV.onclick = null; // 클릭 이벤트 제거
							} 
							else if (nowDay.setHours(0,0,0,0) < selectedStartDate.setHours(0,0,0,0)) { 
								// 공연 시작 날짜 이전인 경우
								newDIV.className = "pastDay";
								newDIV.onclick = null; // 클릭 이벤트 제거
							}
							else if (nowDay.setHours(0,0,0,0) === selectedStartDate.setHours(0,0,0,0)) { 
								// 공연 시작 날짜인 경우
								newDIV.className = "futureDay";
								newDIV.onclick = function () { choiceDate(this); }
							}
							else if (nowDay.setHours(0,0,0,0) === today.setHours(0,0,0,0)) { 
								// 오늘 날짜인 경우
								newDIV.className = "today";
								newDIV.onclick = function () { choiceDate(this); }
							} 
							else {  
								// 그 외의 경우 (공연 기간 중인 경우)
								newDIV.className = "futureDay";
								newDIV.onclick = function () { choiceDate(this); }
							}
							}
								}
			
					
							// URL 파라미터에서 시작일과 종료일 가져오기,참고함
							selectedStartDate = new Date(getUrlParameter("start"));
							selectedEndDate = new Date(getUrlParameter("end"));	
								
							// 선택된 날짜에 "choiceDay" class 추가 및 이벤트 처리
							let calendarDays = document.querySelectorAll(".Calendar .futureDay");
							for (let i = 0; i < calendarDays.length; i++) {
								let calendarDay = calendarDays[i];
								let calendarDate = new Date(nowMonth.getFullYear(), nowMonth.getMonth(), parseInt(calendarDay.innerText));
								if (calendarDate >= selectedStartDate && calendarDate <= selectedEndDate) {
									calendarDay.classList.add("choiceDay");
									calendarDay.onclick = function () { choiceDate(this); }
								} else {
									calendarDay.classList.remove("choiceDay"); // 선택 불가능한 날짜는 클래스 제거
									calendarDay.onclick = null; // 이벤트 제거
								}
							}

							// 시간표 div 표시,참고함
							let selectTimeDiv = document.getElementById("selectTime");
							if (selectTimeDiv) {
								selectTimeDiv.style.display = "none";
							}

											
						
						
						// 날짜 선택
						function choiceDate(newDIV) {
							
							if (document.getElementsByClassName("choiceDay")[0]) {  // 기존에 선택한 날짜가 있으면
								document.getElementsByClassName("choiceDay")[0].classList.remove("choiceDay");  // 해당 날짜의 "choiceDay" class 제거
							}
							newDIV.classList.add("choiceDay");
						// 선택된 날짜에 "choiceDay" class 추가
							
			
							// 선택된 날짜의 날짜 정보 가져오기
							// newDIV.innerHTML => innerhtml을 사용하여 newDIV내의 날짜를 문자열로 함/ 그래서 문자열로 숫자로 변환 
							let selectedDate = new Date(nowMonth.getFullYear(), nowMonth.getMonth(), parseInt(newDIV.innerHTML));
							let selectedYear= selectedDate.getFullYear();
							let selectedMonth = selectedDate.getMonth() + 1;
							let selectedDay = selectedDate.getDate();
							// div 시간표
							let selectTimeDiv = document.getElementById("selectTime");
					
							let selectedDateString = `${selectedMonth}월 ${selectedDay}일`; // 선택한 날짜를 원하는 형식으로 문자열로 저장	
							
							console.log("선택된 날짜:", selectedMonth + "월" + selectedDay + "일");
							console.log(selectedDate)

							//session
							let selectedAllDate = {
								year : selectedDate.getFullYear(),
								month: selectedDate.getMonth() + 1,
								day: selectedDate.getDate()
								};
								sessionStorage.setItem('selectedDate', JSON.stringify(selectedAllDate));
								console.log(selectedAllDate.month + "월" + selectedAllDate.day + "일");




							// 선택된 날짜를 해당 버튼의 data-date 속성에 저장
							document.getElementById("selectSeat").setAttribute("data-date", selectedDateString);
							

							
							
							
							
							
							// 시간표 div 표시
							selectTimeDiv.style.display = "block"; //display에서 block은 보이게 하는것
							// 날짜 선택 해제 시 시간표 숨김
							// newDIV는 각 셀
							newDIV.onclick = function () {
								selectTimeDiv.style.display = "none";
							};
							
							// 시간표 div의 내용 업데이트를 위해 선택된 날짜 정보 서버로 전송
							const data = { selectedDate: `${selectedMonth}월 ${selectedDay}일` };


							}
							
					
						// 이전달 버튼 클릭
						function prevCalendar() {
							nowMonth = new Date(nowMonth.getFullYear(), nowMonth.getMonth() - 1, nowMonth.getDate());  // 현재 달을 1 감소
						buildCalendar();    // 달력 다시 생성
							buildCalendar();
						}
			
						// 다음달 버튼 클릭
						function nextCalendar() {
							nowMonth = new Date(nowMonth.getFullYear(), nowMonth.getMonth() + 1, nowMonth.getDate());// 현재 달을 1 증가
							buildCalendar();// 달력 다시 생성
						}
			
						// input값이 한자리 숫자인 경우 앞에 '0' 붙혀주는 함수
						function leftPad(value) {
							if (value < 10) {
								value = "0" + value;
								return value;
							}
							return value;
						}	

						//시간선택
						function choiceTime(selectedTime) {
						if (document.getElementsByClassName("choiceTime")[0]) {  // 기존에 선택한 시간이 있으면
							document.getElementsByClassName("choiceTime")[0].classList.remove("choiceTime");  // 해당 시간의 choiceTime class 제거
						}
						selectedTime.classList.add("choiceTime"); // 선택된 시간에 "choiceTime" class 추가
							
						
						// 선택된 시간을 콘솔에 표시
						console.log("선택된 시간:", selectedTime.innerText);
				


						// 선택된 시간을 세션 저장
						sessionStorage.setItem('selectedTime', selectedTime.innerText);
						console.log("시간선택:", selectedTime.innerText);
						}


				
				</script>
				
			
			
			</head>
			
			<body>
				<div>
					<table class="Calendar">
						<thead>
							<tr>
								<td onClick="prevCalendar();" style="cursor:pointer;">◀</td>
								<td colspan="5">
									<span id="calYear"></span>년
									<span id="calMonth"></span>월
								</td>
								<td onClick="nextCalendar();" style="cursor:pointer;">▶</td>
							</tr>
							<tr>
								<td>일</td>
								<td>월</td>
								<td>화</td>
								<td>수</td>
								<td>목</td>
								<td>금</td>
								<td>토</td>
							</tr>
						</thead>
			
						<tbody>
						</tbody>
					</table>
				</div>
				<div id ="selectTime" class="selectTime" style="display:none">
					<table>
						<thead>
							<tr>
								<th>시간</th>
								
							</tr>
						</thead>
						<tbody>
							<tr>
								<td onClick="choiceTime(this);">10:00 AM</td>
								
							</tr>
							<tr>
								<td onClick="choiceTime(this);">12:00 PM</td>
			
							</tr>
					
						
						</tbody> 
					</table> 
				
				</div>
			
		
				<button type="button" id="selectSeat" data-name="${dto.performanceDTO.prfnm}"
				data-date="" data-time="">좌석 예약</button>  
				<!-- onclick="location.href='seat'" -->
				<script src="../resources/js/seatBefore.js"></script>
				
	<!-- 			
				<button type="button" id="selectSeat">버튼</button>
				<script src="/resources/js/seatBefore.js"></script>
				<script src="../resources/js/seatBefore.js"></script> -->
			</body>
			</html>
			