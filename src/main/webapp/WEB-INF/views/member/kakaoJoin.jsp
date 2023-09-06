<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
 <head>
    <meta charset="UTF-8" />
    <title>Insert title here</title>
    <c:import url="../temp/bootStrap.jsp"></c:import>   
    
    <style>
      .f {
        color: red;
      }

      .s {
        color: blue;
      }      
   
    </style>
  </head>
  <body>
    <c:import url="../temp/header.jsp"></c:import>
    <section class="container mt-5">
      <h1 class="mb-3 text-center">회원가입</h1>
		<script>alert("회원가입을 진행해주세요!")</script>
      <form action="./kakaoJoin" method="post" id="frm">
        <div class="mb-3">
          <label for="id" class="form-label">아이디</label>
          <input
            type="text"
            name="id"
            class="form-control"
            id="id"
            placeholder="6~15 영문,숫자 입력해주세요"
          />
          <div id="idResult"></div>
        </div>

        <div class="mb-3">
          <label for="pw" class="form-label">비밀번호</label>
          <input
            type="password"
            name="pw"
            class="form-control"
            id="pw"
            placeholder="8~12 영문,숫자 입력해주세요"
          />
          <div id="pwResult"></div>
        </div>

        <div class="mb-3">
          <label for="pw2" class="form-label">비밀번호확인</label>
          <input
            type="password"
            name="pw2"
            class="form-control"
            id="pw2"
            placeholder="8~12 영문,숫자 입력해주세요"
          />
          <div id="pw2Result"></div>
        </div>

        <div class="mb-3">
          <label for="name" class="form-label">이름</label>
          <input
            type="text"
            name="name"
            class="form-control"
            id="name"        
            value="${name}"
            readonly
          />
          <div id="nameResult"></div>
        </div>

        <!-- 	<div class="row mb-3">
    <label for="inputEmail3" class="col-sm-2 col-form-label">Email</label>
	    <div class="col-sm-5">
	      <input type="text" name="email" class="form-control" id="email" placeholder="name@example.com">
	    </div>
  	 </div> -->

        <div class="form-group email-form">
          <label for="email" class="form-label">Email</label>
          <input
            type="text"
            name="email"
            class="form-control"
            id="email"
        	value="${email}"
            readonly
          />

          <div id="emailResult"></div>       

        <div class="mb-3">
          <label for="phone" class="form-label">휴대폰</label>
          <input
            type="text"
            name="phone"
            class="form-control"
            id="phone"
            placeholder="01012341234"
          />
          <div id="phoneResult"></div>
        </div>

        <div class="mb-3">
          <label for="birth" class="form-label">생년월일</label>
          <input
            type="date"
            name="birth"
            class="form-control"
            id="birth"           
          />
          <div id="birthResult"></div>
        </div>

        <div class="mb-3">
          <label for="postcode" class="form-label"></label>
          <input
            type="text"
            name="address"
            class="form-control"
            id="postcode"
            placeholder="우편번호"
          />

          <div class="mb-3">
          <button class="btn btn-primary" id="addrSearch" type="button">
            우편번호찾기
          </button>
          </div>

          <div class="mb-3">
          <label for="address" class="form-label"></label>
          <input
            type="text"
            name="address"
            class="form-control"
            id="address"
            placeholder="주소"
          />
          </div>
 
          <label for="detailAddress" class="form-label"></label>
          <input
            type="text"
            name="address"
            class="form-control"
            id="detailAddress"
            placeholder="상세주소입력"
          />

          <div id="addressResult"></div>
        </div>

        <div class="mb-3">
          <button class="btn btn-primary" id="btn" type="button">
            회원가입
          </button>
        </div>
      </form>
    </section>
   <script src="/resources/js/kakaoMember.js"></script>

    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    
  </body>
</html>