<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
  <!doctype html>
  <html>
  <head>
    <meta charset="utf-8">
    <title>결제내역보기 </title>
    <style>
        div {
          border: 1px solid #bcbcbc;
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
          border: 1px solid #1900ff;
      }
      

      #table-main{
      width:80%;
      height: 470px;
      margin-bottom: 10px;
      }

        
      #table-right{
      width:20%;
      height: 470px;
      margin-bottom: 10px;
      }

        #table-right-up, #table-right-down{
      width:100%;
      height: 235px;
          /* box-sizing: border-box; 테두리와 패딩이 너비 및 높이에 포함되도록 설정 */
          box-sizing: ;
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
          /* padding: 0px 20px; */
          height: 150px;
        }

        .md-middle {
          vertical-align: middle;
        }
        #shopBtn{
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
        #shopBtn:active{
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
      <p align="right" style="font-size: 15px; font-weight: bold; color: crimson;"> 
              공연예매> 주문 · 결제 > 예매완료
          </p>
    </div>
    <div class="mainline">
      <div class="table-row">
        <div id="table-main" class="table-cell">
          <p style="font-size: xx-large; font-weight: bold;">에매가 완료되었습니다.</p>
          <p>공연예매가 완료되었습니다</p>
          <p>티켓은 현장에서 발권해주세요.</p>
          <br>
          <c:forEach var="dto" items="${perList}">
            <p>티켓번호 :${dto.orderNum} </p>  <!--컬럼명 orderNum--> 
            <p>공연명 : ${dto.prfnm}</p>
            <p>공연번호 : ${dto.performance_num}</p>
            <P>공연시설 :${dto.performancePlaceDTO.fcltynm}</P>
            <p>예매날짜 :${dto.performanceDate} </p>
            <p>예매시간 :${dto.performanceTime} </p>
            <P>예매좌석 :${dto.perSeat}</P>
            <p>총 가격 :${dto.totalPrice}</p>
          </div>
          
          <div id="table-right" class="table-cell">
            <div id="table-right-up">
              <p>공연포스터 :${dto.performanceDTO.poster}</p>
              <br>
            </div>
            <div id="table-right-down">
              <p>공연명 : ${dto.prfnm} </p>
              <p>티켓번호 :${dto.orderNum}</p>       
              <p>구매가격 : ${dto.totalPrice}</p>
            </div>
          </div>
          </c:forEach>
          
          </div>
        </div>
          
      </div>


    <div id="footer">
      <p align="center" style="font-size: 10px;">
              <button id=shopBtn>
              예매계속하기 <!--detail로이동-->
          </button>&nbsp;&nbsp;
          <button id="homeBtn">
              홈으로
          </button></p>
    </div>
  </body>
  </html>