<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../base/base.jsp"></c:import>
<style>
    #price {
        list-style-type: none; 
        padding-left: 0;
    }

    #price li {margin-bottom: 10px;}
</style>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
            $(document).ready(function() {
                $('#selectPerBtn').click(function() {
                                      
                // data- 속성에서 멤버 데이터 가져오기
                let memberNum = $('#selectPerBtn').data('membernum');
                let memberId = $('#selectPerBtn').data('id');
                let memberName = $('#selectPerBtn').data('username');
                let memberEmail = $('#selectPerBtn').data('email');
                

                    let data = {
                        prfnm: $(this).data('name'), // 공연명
                        performance_num: $(this).data('num'), //선택한 공연의 번호
                        pcseguidance : $(this).data('price'),//선택한 공연의 가격
                        member_num : memberNum,
                        member_id: memberId,      // 로그인한 사용자의 아이디 
                        member_name: memberName, //로그인한 사용자 성함(결제창에서 씌일거임)
                        member_email: memberEmail   // 로그인한 사용자의 이메일 
                    };
                     // localStorage에 데이터 저장, 공연정보 json문자로 변환
                    localStorage.setItem('selectedPerformance', JSON.stringify(data));

                    console.log("선택공연:"+localStorage.getItem('selectedPerformance'));
                    
                    $.ajax({
                        url: '/book/checkBeforePay',
                        type: 'GET',
                        data: {
                            prfnm: data.prfnm, 
                            performance_num: data.performance_num, 
                            pcseguidance: data.pcseguidance, 
                            member_num : data.member_num,
                            member_id: data.member_id, 
                            member_name : data.member_name,
                            member_email: data.member_email
                        },
                        success: function(success) {
                            console.log('Success:');
                            console.log('Member ID:', data.member_id);
                            console.log('Member Email:', data.member_email);
                            console.log('Member Name:', data.member_name);
                            console.log('pcseguidance price: ', data.pcseguidance)
                        },
                        error: function(error) {
                            console.log('Error:');
                        }
                    });
                });
            });
</script>
</head>

<body>
	<c:import url="../base/header.jsp"></c:import>

    
            <section class="container my-5 mx-auto" style="width: 70%;">
        <div class="d-flex flex py-5 my-5">
            <div>
                <img src="${dto.performanceDTO.poster}" width="400">
            </div>
            <div class="ms-5 flex-fill">
                <div class="border-4 border-bottom border-dark-subtle">
                    <h3>${dto.performanceDTO.genrenm} <${dto.performanceDTO.prfnm}></h3>
                </div>
                <div class="mt-5">
                    <table class="table table-borderless"> 
                        <tr>
                            <th class="pb-3">공연장소</th>
                            <td class="ps-3">${dto.fcltynm}</td>
                        </tr>
                        <tr>
                            <th class="pb-3">공연기간</th>
                            <td class="ps-3">${dto.performanceDTO.prfpdfrom} ~ ${dto.performanceDTO.prfpdto}</td>
                        </tr>
                        <tr>
                            <th class="pb-3">공연시간</th>
                            <td class="ps-3">${dto.performanceDTO.prfruntime}</td>
                        </tr>
                        <tr>
                            <th class="pb-3">출연진</th>
                            <td class="ps-3">${dto.performanceDTO.prfcast}</td>
                        </tr>
                        <tr>
                            <th class="pb-3">티켓가격</th>
                            <td class="ps-3">
                                <ul id="price">
                                    <li>VIP석 <b>${dto.performanceDTO.pcseguidance+80000}원</b></li>
                                    <li>R석 <b>${dto.performanceDTO.pcseguidance+60000}원</b></li>
                                    <li>S석 <b>${dto.performanceDTO.pcseguidance+40000}원</b></li>
                                    <li>A석 <b>${dto.performanceDTO.pcseguidance}원</b></li> 
                                </ul>
                            </td>
                        </tr>
                    </table>
                </div>
                <!-- 선택한 공연의 정보 보내기
                <input type="hidden" name="performance_num" value="${dto.performanceDTO.performance_num}">
                <input type="hidden" name="prfnm" value="${dto.performanceDTO.prfnm}">
               -->
                <div class="d-flex justify-content-end mt-3">
                    <!-- <button class="btn btn-dark btn-lg">예매하기</button>  -->
                    <!-- 아래버튼은 내가 임의로 추가 -->>
                    <button  type="submit" id="selectPerBtn" data-name="${dto.performanceDTO.prfnm}" 
                        data-start="${dto.performanceDTO.prfpdfrom}" data-end="${dto.performanceDTO.prfpdto}" 
                        data-num="${dto.performanceDTO.performance_num}" 
                        data-perId="${dto.performanceDTO.mt20id}" data-membernum = "${member.member_num}"
                         data-id = "${member.id}"  data-price="${dto.performanceDTO.pcseguidance}"
                        data-username="${member.name}"
                        data-email="${member.email}" >예매하기</button>
                        
                </div>
            </div>
        </div>


   
        <div class="mb-3 border-bottom">
            <ul class="nav nav-underline">
                <li class="nav-item">
                    <a class="nav-link active fs-5" id="review" data-target="review" aria-current="page" href="#">댓글</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link fs-5" id="map" data-target="map" href="#">오시는 길</a>
                </li>
            </ul>
        </div>

        

        <div id="reviewInfo" class="mb-5">
            <div class="d-flex mb-5 pt-3">
                <div class="col-sm-8">
                    <textarea name="contents" id="contents" class="form-control" placeholder="기대평이나 관람후기를 작성해주세요"></textarea>
                </div>
                <div class="ms-3">
                    <button type="button" id="reviewAdd" class="btn btn-dark h-100" 
                    data-add-num="${dto.performanceDTO.performance_num}" 
                    data-id = "${member.id}">등록</button>
                </div>
            </div>
            <div id="reviewList">

            </div>
        </div>

    </section>

    <c:import url="../base/footer.jsp"></c:import>

    <script src="/resources/js/detail.js"></script>
    <!-- 팝업창 js 받아오기 -->
    <script src="/resources/js/popopen.js" type="text/javascript"></script>
</body>

</html>