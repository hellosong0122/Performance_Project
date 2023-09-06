package com.per.main.review;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.per.utils.Pager;

@Service
public class ReviewService {
	@Autowired
	private ReviewDAO reviewDAO;
	
	
	//댓글 좋아요 업데이트
	public int setUpdateGood(ReviewDTO reviewDTO) throws Exception {
		int check = reviewDAO.goodCheck(reviewDTO);
		int result = 1;
		
		if(check==0) { //좋아요 처음으로 누를 때 
			reviewDAO.setUpdateGood(reviewDTO); //REVIEW 테이블 +1
			reviewDAO.setAddGood(reviewDTO); //GOOD 테이블에 insert
		}else {
			reviewDAO.setDeleteGood(reviewDTO); //GOOD 테이블에 delete
			reviewDAO.setCancelGood(reviewDTO); //REVIEW 테이블 -1
			result = 0;
		}
		
		return result;
	}
	
	//댓글 리스트
	public List<ReviewDTO> getList(ReviewDTO reviewDTO, Pager pager) throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();
		
		pager.makeRowNum();
		Long total = reviewDAO.getTotal(reviewDTO);
		pager.makePageNum(total);
		
		map.put("review", reviewDTO);
		map.put("pager", pager);
		
		return reviewDAO.getList(map); 
	}
	
	//댓글 등록
	public int setAdd(ReviewDTO reviewDTO) throws Exception {
		return reviewDAO.setAdd(reviewDTO);
	}
	
	//댓글 삭제
	public int setDelete(ReviewDTO reviewDTO) throws Exception {
		return reviewDAO.setDelete(reviewDTO);
	}
}
