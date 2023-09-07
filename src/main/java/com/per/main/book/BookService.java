package com.per.main.book;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.per.main.per.PerformanceDAO;
import com.per.main.per.PerformanceDTO;
import com.per.main.per.PerformancePlaceDTO;
import com.per.main.per.PerformanceService;
import com.per.utils.Pager;

@Service
public class BookService {
	@Autowired
	private BookDAO bookDAO;
	@Autowired
	private PerformanceService performanceService;
	
	//listget
	public List<PerformanceDTO> getPerList()throws Exception{
		return bookDAO.getPerList();
	}

	
	
	//booking
	public List<PerformanceDTO> getPerTime() throws Exception{
		return bookDAO.getPerTime();
	}
	
	//seat
	public List<SeatDTO> getSeat() throws Exception {
		return bookDAO.getSeat();
	}



	public int setBook(BookDTO bookDTO)throws Exception {
		return bookDAO.setBook(bookDTO);
		
	}

	
}

