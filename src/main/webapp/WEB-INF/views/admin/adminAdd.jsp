<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> 
<%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core"%>
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

      <form action="./adminAdd" method="post" id="frm">
        <div class="mb-3">
          <label for="id" class="form-label">아이디</label>
          <input
            type="text"
            name="id"
            class="form-control"
            id="id" 
          />
  
        </div>

        <div class="mb-3">
          <label for="pw" class="form-label">비밀번호</label>
          <input
            type="password"
            name="pw"
            class="form-control"
            id="pw"        
          />
  
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
        </div>

        <div class="mb-3">
          <div class="my-3">
			<button type="submit" class="btn btn-outline-success">등록</button>
		</div>
         
          </button>
        </div>
      </form>
    </section>

   
  </body>
</html>
