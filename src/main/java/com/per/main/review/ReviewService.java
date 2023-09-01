package com.per.main.review;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ReviewService {
	@Autowired
	private ReviewDAO reviewDAO;
	
	public int setAdd(ReviewDTO reviewDTO) throws Exception {
		return reviewDAO.setAdd(reviewDTO);
	}
}
