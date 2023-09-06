<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>가로 3분할</title>
        <style>
            /* 전체 화면을 가로로 3분할하는 스타일 */
            body {
                display: flex;
                height: 100vh;
                margin: 0;
               
            }
    
            /* 각 섹션의 스타일 */
            /* .selectedPer {
                flex: 1;
                border: 1px solid #000;
                padding: 10px;
                text-align: center;
            } */
            .seletDateTime {
                flex: 1;
                border: 1px solid #000;
                padding: 10px;
                text-align: center;
            }
            .selectSeat     {
                flex: 1;
                border: 1px solid #000;
                padding: 10px;
                text-align: center;
            }
        </style>
        <!-- datetimepicker script -->
            <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
            <link rel="stylesheet" type="text/css" media="screen" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-datetimepicker/2.5.20/jquery.datetimepicker.min.css">
            <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-datetimepicker/2.5.20/jquery.datetimepicker.full.min.js"></script>
        <!-- datetimepicker -->
            <script type="text/javascript">
                $(function() {
                    $("#datepicker").datetimepicker({ 
                        format: "Y-m-d H:i",
                        inline: true, // 달력을 인라인 모드로 표시
                        allowTimes: ['10:00', '19:00'], // 선택 가능한 시간 목록
                    });
                });
            </script>
        
      
        
        </head>
    <body>
        <!-- 가로 3분할 영역 -->
        <!-- <div class="selectedPer">
        <h2>선택공연</h2>
        </div> -->
        <div class="seletDateTime" >
        <h2>날짜선택</h2>
            <div id="datepicker"></div>
        </div>
        <div class="selectSeat">
            <h2>공연 정보</h2>
            <ul id="performanceInfoList"></ul>
        </div>
    </body>
    </html>