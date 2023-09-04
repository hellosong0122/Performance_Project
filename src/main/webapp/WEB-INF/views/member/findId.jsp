<%@ page language="java" contentType="text/html; charset=UTF-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Insert title here</title>
    <c:import url="../temp/bootStrap.jsp"></c:import>
  </head>
  <body>
    <c:import url="../temp/header.jsp"></c:import>
    <section class="container mt-5">
      <h1 class="mb-3 text-center">findId page</h1>

      <form action="./findId" method="post" name="frm" style="width: 470px">
        <div class="mb-3">
          <label for="name" class="form-label">이름</label>
          <input
            type="text"
            name="name"
            class="form-control"
            id="name"
            placeholder="이름"
          />
        </div>
        <!-- 	DTO의 SETTER이름과 동일해야함 NAME -->
        <div class="mb-3">
          <label for="email" class="form-label">EMAIL</label>
          <input
            type="text"
            name="email"
            class="form-control"
            id="email"
            placeholder="name@example.com"
          />
        </div>

        <button>아이디확인</button>
        <h1>${dto.id}</h1>

        <!-- <button
          class="btn btn-primary"
          data-bs-toggle="modal"
          data-bs-target="#accountModal"
        >
          아이디확인
        </button> -->

        <!-- <div
          class="modal fade"
          id="accountModal"
          tabindex="-1"
          aria-labelledby="exampleModalLabel"
          aria-hidden="true"
        >
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <h1 class="modal-title fs-5" id="exampleModalLabel">
                  아이디 확인
                </h1>
                <button
                  type="button"
                  class="btn-close"
                  data-bs-dismiss="modal"
                  aria-label="Close"
                ></button>
              </div>
              <div class="modal-body">
                <p>${dto.id}</p>
              </div>
              <div class="modal-footer">
                <button
                  type="button"
                  id="close"
                  class="btn btn-secondary"
                  data-bs-dismiss="modal"
                >
                  Close
                </button>
              </div>
            </div>
          </div>
        </div> -->
      </form>
    </section>
  </body>
</html>
