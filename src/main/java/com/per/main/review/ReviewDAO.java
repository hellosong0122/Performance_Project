package com.per.main.review;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.per.utils.Pager;

@Repository
public class ReviewDAO {
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE = "com.per.main.review.ReviewDAO.";
	
	public int setAddGood(ReviewDTO reviewDTO) throws Exception {
		return sqlSession.insert(NAMESPACE+"setAddGood", reviewDTO);
	}

	public int setDeleteGood(ReviewDTO reviewDTO) throws Exception {
		return sqlSession.delete(NAMESPACE+"setDeleteGood", reviewDTO);
	}
	
	public int goodCheck(ReviewDTO reviewDTO) throws Exception {
		return sqlSession.selectOne(NAMESPACE+"goodCheck", reviewDTO);
	}
	
	public int setUpdateGood(ReviewDTO reviewDTO) throws Exception {
		return sqlSession.update(NAMESPACE+"setUpdateGood", reviewDTO);
	}
	
	public int setCancelGood(ReviewDTO reviewDTO) throws Exception {
		return sqlSession.update(NAMESPACE+"setCancelGood", reviewDTO);
	}
	
	
	//----------------
	
	public List<ReviewDTO> getList(Map<String, Object> map) throws Exception {
		return sqlSession.selectList(NAMESPACE+"getList", map);
	}
	
	public int setAdd(ReviewDTO reviewDTO) throws Exception {
		return sqlSession.insert(NAMESPACE+"setAdd", reviewDTO);
	}
	
	public int setDelete(ReviewDTO reviewDTO) throws Exception {
		return sqlSession.delete(NAMESPACE+"setDelete", reviewDTO);
	}
	
	public Long getTotal(ReviewDTO reviewDTO) throws Exception {
		return sqlSession.selectOne(NAMESPACE+"getTotal", reviewDTO);
	}
	
	public int setUpdate(ReviewDTO reviewDTO) throws Exception {
		return sqlSession.update(NAMESPACE+"setUpdate", reviewDTO);
	}
}
