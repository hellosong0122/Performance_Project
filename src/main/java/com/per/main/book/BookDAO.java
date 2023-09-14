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
	 //mapper : reservationPer, db에 넣기
	 public void reservationPer(PerformanceOrderDTO orderDTO) throws Exception {
	     System.out.println(orderDTO.toString());   
		 sqlSession.insert("resevationPer", orderDTO);
	    }
	
	 public PerformanceOrderDTO getBook(PerformanceOrderDTO orderDTO) throws Exception {
		    return sqlSession.selectOne(NAMESPACE+"getBook", orderDTO);
		}
	 //adminlist
//	 public List<PerformanceOrderDTO> getBookList(Pager pager)throws Exception{
//		 return sqlSession.selectList(NAMESPACE+"getBookList", pager);
//	 } 
//	 
	 public List<PerformanceOrderDTO> getBookList(Pager pager) throws Exception {
		    pager.makeRowNum();
		    Long total = getBookTotal(pager); // 수정
		    pager.makePageNum(total);
		    return sqlSession.selectList(NAMESPACE + "getBookList", pager); // 수정
		}
	 public Long getBookTotal(Pager pager)throws Exception{
		return sqlSession.selectOne(NAMESPACE+"getBookTotal",pager); 
	 }
	 //bookdetail
	 public PerformanceDTO getPerDetail(PerformanceDTO performanceDTO) throws Exception {
			return sqlSession.selectOne(NAMESPACE+"getPerDetail", performanceDTO);
		}
	 public PerformanceOrderDTO getBookDetail(PerformanceOrderDTO performanceOrderDTO)throws Exception{
		 return sqlSession.selectOne(NAMESPACE+"getBookDetail", performanceOrderDTO);
	 }
	 //관리자 예매내역 삭제
	 public int setPerDelete(PerformanceDTO performanceDTO) throws Exception {
			return sqlSession.delete(NAMESPACE+"setPerDelete", performanceDTO);
		}
	 public int adminBookDelete(PerformanceOrderDTO performanceOrderDTO)throws Exception{
		 return sqlSession.delete(NAMESPACE+"adminBookDelete", performanceOrderDTO);
	 }
	 
}



