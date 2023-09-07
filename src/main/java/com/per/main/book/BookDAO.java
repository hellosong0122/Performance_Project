package com.per.main.book;



import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.per.main.per.PerformanceDTO;
import com.per.main.per.PerformancePlaceDTO;
import com.per.utils.Pager;




@Repository		
public class BookDAO {
	
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE="com.per.main.per.BookDAO.";
	
	//list
	public List<PerformanceDTO> getPerList()throws Exception{
		return sqlSession.selectList(NAMESPACE+"getPerList");
	}
//	//placelist
//	public List<PerformancePlaceDTO> getPlaceList() throws Exception{
//		return sqlSession.selectList(NAMESPACE+"getPlaceList");
//	}
	//booking
	public List<PerformanceDTO> getPerTime()throws Exception{
		return sqlSession.selectList(NAMESPACE+"getPerTime");
	}
	//공연가격정보
	 public PerformanceDTO getPerformancePrice(Long performance_num) throws Exception {
	        return sqlSession.selectOne(NAMESPACE + "getPerformancePrice", performance_num);
	    }
	 
	 //seat
	 public List<SeatDTO> getSeat() throws Exception {
		 return sqlSession.selectList(NAMESPACE+"getSeat");
	 }
	 //setbook
	 public int setBook(BookDTO bookDTO)throws Exception{
		 return sqlSession.insert(NAMESPACE+"setBook",bookDTO);
	 }
	

}



