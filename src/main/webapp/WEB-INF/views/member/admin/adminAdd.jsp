<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> 
<%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Insert title here</title>
    <c:import url="../../temp/bootStrap.jsp"></c:import>
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
    <c:import url="../../temp/header.jsp"></c:import>
    <section class="container mt-5"> 

      <form action="./adminAdd" method="post" id="frm">
          <div class="mb-3">
          <label for="id" class="form-label">아이디</label>
          <input
            type="text"
            name="id"
            class="form-control"
            id="id"           
            placeholder="6~12 영문,숫자 입력해주세요"            
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
            placeholder="4~8 영문,숫자 입력해주세요"
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
            placeholder=""
          />
          <div id="nameResult"></div>
        </div>
        
        <div class="mb-3">
          <label for="phone" class="form-label">휴대폰</label>
          <input
            type="text"
            oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*?)\..*/g, '$1');"
            name="phone"
            class="form-control"
            id="phone"
            placeholder="01012341234" 
            maxlength="11"                     
          />
          <div id="phoneResult"></div>
        </div>

        <div class="mb-3">
          <div class="my-3">
			<button type="submit" class="btn btn-outline-success">등록</button>
		</div>
         
  
        </div>
      </form>
    </section>

   
  </body>
</html>
