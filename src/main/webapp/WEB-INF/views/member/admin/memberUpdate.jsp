<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> 
<%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Insert title here</title>
    <c:import url="../../base/adminBase.jsp"></c:import>
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
  	<c:import url="../../base/adminLeft.jsp"></c:import>	
	<main class="main-content position-relative max-height-vh-100 h-100 mt-1 border-radius-lg ">
    <section class="container mt-5"> 

      <form action="./memberUpdate" method="post" id="frm">
        <div class="mb-3">
          <label for="id" class="form-label">아이디</label>
          <input
            type="text"
            name="id"
            class="form-control"
            id="id" 
            value="${dto.id}"        
            readonly
          />
  
        </div>

        <div class="mb-3">
          <label for="pw" class="form-label">비밀번호</label>
          <input
            type="password"
            name="pw"
            class="form-control"
            id="pw"
            value="${dto.pw}"        
          />
  
        </div>

        <div class="mb-3">
          <label for="name" class="form-label">이름</label>
          <input
            type="text"
            name="name"
            class="form-control"
            id="name"
            value="${dto.name}"  
            placeholder=""
          />       
        </div>


        <div class="form-group email-form">
          <label for="email" class="form-label">Email</label>
          <input
            type="text"
            name="email"
            class="form-control"
            id="email"
            value="${dto.email}"  
            placeholder="name@example.com"
          />

          <div id="emailResult"></div>
    

        <div class="mb-3">
          <label for="phone" class="form-label">휴대폰</label>
          <input
            type="text"
            name="phone"
            class="form-control"
            id="phone"
            value="${dto.phone}"  
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
            placeholder="19970102"
            value="${dto.birth}"  
          />
          <div id="birthResult"></div>
        </div>

          <div class="mb-3">
          <label for="address" class="form-label">주소</label>
          <input
            type="text"
            name="address"
            class="form-control"
            id="address"
            value="${dto.address}"  
            placeholder="주소"
          />
          </div>

          <div id="addressResult"></div>
        </div>

        <div class="mb-3">
          <div class="my-3">
			<button type="submit" class="btn">등록</button>
		</div>
         
          </button>
        </div>
      </form>
    </section>
    </main>
  </body>
</html>
