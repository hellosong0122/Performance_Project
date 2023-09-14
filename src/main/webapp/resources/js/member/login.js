
$("#loginBtn").on("click", function(){

   let id= $("#id").val();
   let pw= $("#pw").val();
   
   console.log(id);
   console.log(pw);

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
       url: "/member/userLogin",
	    data : {
	       id : $("#id").val(),
	       pw : $("#pw").val()
	    },
       success: function (rst) {
          console.log(rst);
          if (rst.type == "성공"){
             alert(rst.msg);
             if(rst.role==1){
             	location.replace("/admin/list");
             }else{
              	location.replace("/");
             }
          } else {
             alert(rst.msg);
          } 
    }
  });
  
   return false;
});