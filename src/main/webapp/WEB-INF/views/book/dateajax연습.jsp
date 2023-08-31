<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- 예매하기 버튼 누르면 공연명과 공연날짜가 출력되고 날짜 선택후 시간선택 가능 -->
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript"> 

        let acti

        $(document).ready(function(){
            $('#date').on('click',function(){
                datemove(); //날짜선택이동함수
            })
            function datemove(){
                $.ajax({
                    type:"GET",// 데이터를 가져오는 방식
                    url:"",// 데이터를 가져올 경로 설정
                    data:"json",
                    success:function(data){
                        let row = $("<tr>");
                            
                            console.log("성공");
                            let tablebody = $(".table_body") // tbody id
                            tablebody.empty();//초기화?
                            
                            $.each(data, function(i){
                                row.append("<td>" + performance.prfnm + "</td>");
                                row.append("<td>" + performance.prfpdfrom + "</td>");
                                row.append("<td>" + performance.prfpdto + "</td>");
                               tablebody.append(row); 
                            })
                            
                    },
                    error:function(data){
                        console.log("실패");
                    }
                });
            }
       })
    </script>
</head>
<body>
        <form>
            <div>
                <label>공연명</label>
                <input type=""/>
            </div>

        </form>
        

</body>
</html>