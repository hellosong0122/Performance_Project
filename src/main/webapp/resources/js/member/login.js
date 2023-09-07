
$("#loginBtn").on("click", function(){

   let id= $("#id").val();
   let pw= $("#pw").val();

   if(id==""){
      alert("[안내]id를 입력해주세요.");
      return false;
   }
   if(pw==""){
       alert("[안내]pw를 입력해주세요.");
       return false;
   }   
   
    $.ajax({
       type: 'post',
       url: "/member/login",
	    data : {
	       id : $("#id").val(),
	       pw : $("#pw").val()
	    },
       success: function (rst) {
          console.log(rst);
          if (rst.type == "성공"){
             alert(rst.msg);
              location.replace("/");
          } else {
             alert(rst.msg);
          } 
    }
  });
  
   return false;
});