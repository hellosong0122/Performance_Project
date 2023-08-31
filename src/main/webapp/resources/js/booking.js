let getPerTime = document.getElementById("getPerTime");



        $(document).ready(function() {
            $('#getPerTime').click(function() {
                // JSON 데이터를 불러와서 테이블에 표시하는 함수
                $.ajax({
                    type: 'GET',
                    url: '/booking',
                    dataType: 'json',
                    success: function(data) { //데이터를 가져왔을 때 동작. 매개변수로 data 입력
                        console.log("성공");
                        let tablebody = $(".table_body"); // tbody id
                        tablebody.empty(); // 초기화?

                        $.each(data, function(index, performance) {
                            let row = $("<tr>");
                            row.append("<td>" + performance.PRFNM + "</td>");
                            row.append("<td>" + performance.PRFPDFROM + "</td>");
                            row.append("<td>" + performance.PRFPDTO + "</td>");
                            row.append("<td>" + performance.GENRENM + "</td>");
                            row.append('<td><button class="showTimeBtn" data-time="' + performance.DTGUIDANCE + '">공연 시간 보기</button></td>');
                            tablebody.append(row);
                        });
                        // 공연시간보기
                        $(".showTimeBtn").click(function() {
                            let time = $(this).data("time");
                            alert("공연시간" + time);
                        });
                    },
                    error: function() {
                        console.log("실패");
                    }
                });
            });
        });

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
    </table>
   
</body>
