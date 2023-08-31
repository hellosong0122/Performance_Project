package com.per.main.calendar;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class CalendarDAO {

	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE="com.per.main.calendar.CalendarDAO.";

	public int selectedInfoDate(CalendarDTO calendarDTO) throws Exception{
		return sqlSession.insert(NAMESPACE+"selectedInfoDate", calendarDTO);
	}
}

//공연이름 공연시작 끝 등을 담은 날짜선택데이터를 어떻게 처리해야하지?