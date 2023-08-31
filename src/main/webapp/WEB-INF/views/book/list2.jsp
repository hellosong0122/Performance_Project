<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <title>Document</title>
   
    <script>
        //seletPerbtn아이디를 가진 버튼을 클릭했을때.
        $(document).ready(function() {
        $('#seletPerbtn').click(function(){
    // JSON 데이터를 불러와서 테이블에 표시하는 함수
            let perNum = $(this).data(num);
            let perName = $(this).data(name);
            let perStart = $(this).data(start);
            let perEnd = $(this).data(end);
       

    
    $.ajax({
        type:'GET',
        url:'',
        dataType:'json',
        success :function(data){ //데이터를 가져왔을떄 동작. 매개변수로 data입력
                console.log("성공")
                let tablebody = $(".table_body") // tbody id
                tablebody.empty();//초기화?

                $.each(data, function(index, performance){
                    let row = $("<tr>");
                            row.append("<td>" + performance.PRFNM + "</td>");
                            row.append("<td>" + performance.PRFPDFROM + "</td>");
                            row.append("<td>" + performance.PRFPDTO + "</td>");
                            row.append("<td>" + performance.GENRENM + "</td>");
                            row.append('<td><button class="showTimeBtn" data-time="' + performance.DTGUIDANCE + '">공연 시간 보기</button></td>');
                            tableBody.append(row);
                        });
                        //공연시간보기
                        $(".showTimeBtn").click(function(){
                            let time = $(this).data("time");
                            alert("공연시간"+time);
                            data(t)
                        })
            
                                                    
            },          
         error : function(){
                 console.log("실패")
             }   
        })         
    })
        })
      


    </script>
</head>
<body>
    <table>
        <thead>
            <tr>
                <td>공연명</td>
                <td>시작날짜</td>
                <td>종료날짜</td>
                <td>장르</td>
                <td>공연 시간</td>
            </tr>
        </thead>
        <tbody class="table_body">
        </tbody>
      <!-- <button type="button" id="getPerTime">json 불러오는 버튼</button> -->

    </table>
</body>
</html>     