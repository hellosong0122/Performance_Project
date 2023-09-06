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

      <form action="./join" method="post" id="frm">
        
      </form>
    </section>
  
  </body>
</html>
