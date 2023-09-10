<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700&display=swap" rel="stylesheet">
   <script src="https://kit.fontawesome.com/53a8c415f1.js" crossorigin="anonymous"></script>
   <link rel="stylesheet" href="./login.css">
<title>Insert title here</title>
<c:import url="../base/base.jsp"></c:import>
<link rel="stylesheet" type="text/css" href="/resources/css/findId.css">

</head>
<body>
	<c:import url="../base/header.jsp"></c:import>

	<form action="./findPw" method="post" id="frm">
	
	    
	<div class="wrap">
        <div class="find_idpw">
     		
           		<h2>FIND PASSWORD</h2>
			
            <div class="find">
                <h4>ID</h4>
                <input type="text" name="id" id="id" placeholder="ID">
            </div>
            <div class="find_email">
                <h4>EMAIL</h4>
                <input type="email" name="email" id="email" placeholder="EMAIL@EXAMPLE.COM">
            </div>  
           
           <div class="etc">            
               <a href="/member/findId">Forgot your id?</a> 
               <a href="/member/login">login!</a>         
           </div>          
                   
         
            <div class="submit">
                <input type="submit" value="FIND PASSWORD">               
            </div>
        </div>
    </div>
</form>
	
	
	
</body>
</html>