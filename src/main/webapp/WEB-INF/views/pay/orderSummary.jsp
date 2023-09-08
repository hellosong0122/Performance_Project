<!doctype html>
<html>
<head>
	<meta charset="utf-8">
	<title>table display 연습</title>
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
            장바구니> 주문 · 결제 > 결제완료
        </p>
	</div>

    <div class="mainline">

      <div class="table-row">
        <div id="table-main" class="table-cell">
          <p style="font-size: xx-large; font-weight: bold;">주문이 완료되었습니다.</p>
          <p>상품주문이 완료되었습니다</p>
          <p>상품 배송은 주문날로부터 1~3일 정도 소요됩니다.</p>
          <br>
          <p>주문번호 : </p> 
          <p>주문수량 : </p>
          <p>구매자명 : </p> <!--로그인한사람 이름-->
          <p>배송주소 : </p> <!--회원가입때 주소 넣기-->
          <p>주문날짜 : </p>
        </div>
        
        <div id="table-right" class="table-cell">
            <div id="table-right-up">
              <p>상품포스터 : 넣을수있음넣고아님빼기</p>
              <br>
                <p>상품내용 : 상품한줄설명정도</p>
            </div>
            <div id="table-right-down">
             <p>상품명 : </p>
             <p>상품번호 : </p>       
             <p>구매가격 :</p>
            </div>
          </div>
          
        
        </div>
    </div>
        
    </div>


	<div id="footer">
		<p align="center" style="font-size: 10px;">
            <button id=shopBtn>
            쇼핑계속하기
        </button>&nbsp;&nbsp;
        <button id="homeBtn">홈으로

        </button></p>
	</div>
</body>
</html>