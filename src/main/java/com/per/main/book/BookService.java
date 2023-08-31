package com.per.main.book;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.per.main.per.PerformanceDAO;
import com.per.main.per.PerformanceDTO;
import com.per.main.per.PerformancePlaceDTO;
import com.per.utils.Pager;

@Service
public class BookService {
	@Autowired
	private BookDAO bookDAO;
	
	//listget
	public List<PerformanceDTO> getPerList()throws Exception{
		return bookDAO.getPerList();
	}

	
	
	//booking
	public List<PerformanceDTO> getPerTime() throws Exception{
		return bookDAO.getPerTime();
	}
	
	
//	
//	//placelist
//	public List<PerformancePlaceDTO> getPlaceList() throws Exception{
//		return bookDAO.getPlaceList();
//	}


//    // placedetails
//    public List<PerformancePlaceDTO> getPlaceDetails(String mt10id) throws Exception {
//        return bookDAO.getPlaceDetails(mt10id);
//    }
	

	//공연선택후 date로 이동
//	public PerformanceDTO getPerformanceByNum(Integer performance_Num) throws Exception {
//	
//		return bookDAO.getPerformanceByNum;
//	}
	
}

