<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
  <!doctype html>
  <html>
  <head>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <meta charset="utf-8">
    <title>결제내역보기 </title>
    <style>
       div {
        border-style: hidden;
      background-color: rgb(255, 255, 255);
        }
      #top{
      width:100%;
      height: 50px;
      margin-bottom: 10px;
      background-color: white;
          border-style: hidden;
          border-bottom: 10px solid blanchedalmond;
      }
        #footer{
      width:100%;
      height: 90px;
      margin-bottom: 10px;
      background-color: white;
      border-style: hidden;
      }
      

      #table-main{
      width:70%;
      height: 470px;
      margin-bottom: 10px;
      margin-left: 20px;
      }

        
      #table-right{
      width:30%;
      height: 470px;
      margin-bottom: 10px;
      }

        #table-right-up{
      width:100%;
      height: 300px;
      padding-bottom: 20px
          /* box-sizing: border-box; 테두리와 패딩이 너비 및 높이에 포함되도록 설정 */
       
      }
      #table-right-down{
        width:100%;
      height: 170px;
      margin-top: 50px;
      }

       #table-right-up img{
        width: 100%;
        height: 100%; 
    
      }
      
        #table-right-up {
      border-bottom: 1px solid #bcbcbc; /* 하단 경계선 추가 */
      }

        .mainline, .middleline {
          display: table;
          width: 100%;
      margin-bottom: 10px;
        }
        .table-row {
          display: table-row;
        }
        .table-cell {
          display: table-cell;
          vertical-align: top; 
          /* padding: 0px 20px; */
          height: 150px;
        }

        /* .md-middle {
          vertical-align: middle;
        } */
        #continueBtn{
        background-color: coral;
        color:white;
        border:none;
        border-radius: 5px;
        width: 100px;
        height: 50px;
        margin-top: 10px;
        box-shadow: 1px 1px 1px #bcbcbc;
        /* transition-duration: 0.1s; */
        }
        #continueBtn:active{
          margin-left: 5px;
          margin-top: 5px;
          box-shadow: none;
        }

        

        #homeBtn{
          background-color: coral;
        color:white;
        border:none;
        border-radius: 5px;
        width: 100px;
        height: 50px;
        margin-top: 10px;
        box-shadow: 1px 1px 1px #bcbcbc;
        /* transition-duration: 0.1s; */
        }
        #homeBtn:active{
          margin-left: 5px;
          margin-top: 5px;
          box-shadow: none;
        }
    </style>
  </head>
  <body>
    <div id="top">
      <p align="right" style="font-size: 15px; font-weight: bold; color: black; padding-right: 50px;"> 
        공연예매> 주문 · 결제 > <span style="font-weight: bolder; color: crimson; display: inline;">예매완료</span>
          </p>
    </div>
    <div class="mainline">
      <div class="table-row">
        <div id="table-main" class="table-cell">
          <p style="font-size: xx-large; font-weight: bold; margin-left: 20px;">예매가 완료되었습니다.</p>
          <p>공연예매가 완료되었습니다</p>
          <p>티켓은 현장에서 발권해주세요.</p>
          <br>
              <p>티켓번호 : ${dto.orderNum} </p>  <!--컬럼명 orderNum--> 
              <p>공연명 : ${dto.prfnm}</p>
              <P>공연시설 : ${dto.fcltynm}</P>
              <p>예매날짜 : ${dto.performanceDate} </p> 
              <p>예매시간 : ${dto.performanceTime} </p>
              <P>예매좌석 : ${dto.perSeat}</P>
              <p>총 가격 : ${dto.totalPrice}</p>
          
          </div>
          <div id="table-right" class="table-cell">
            <div id="table-right-up">
              <p><img src="${dto.poster}" alt="Performance Poster" style="width: 95%; height: 100%; margin-bottom: 20px;"/></p>
             <br><br><br>
            </div>
            <div id="table-right-down">
              <p>공연명 : ${dto.prfnm} </p>
              <p>공연번호 : ${dto.performance_num}</p>  
              <p>회원아이디 : ${dto.id}</p>   
            
            </div>
          </div>
        
          
          </div>
        </div>
          
      </div>


    <div id="footer">
      <p align="center" style="font-size: 10px;">
              <button id="continueBtn" type="button">
              예매계속하기 <!--detail로이동-->
          </button>&nbsp;&nbsp;
          <button id="homeBtn" type="button">
              홈으로
          </button></p>
    </div>
    <script>
      let performanceNum = "${dto.performance_num}"
      $(document).ready(function() {
          $('#continueBtn').click(function() {
              window.opener.location.href = '../performance/detail?performance_num=' +  performanceNum;  
            window.close();
          });
      });

      $(document).ready(function() {
          $('#homeBtn').click(function() {
            window.opener.location.href = '/'    
            window.close();
          });
      });
  </script> 
  </body>
  </html>