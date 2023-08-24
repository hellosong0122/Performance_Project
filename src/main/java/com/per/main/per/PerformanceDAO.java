package com.per.main.per;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.per.utils.Pager;

@Repository
public class PerformanceDAO {
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE = "com.per.main.per.PerformanceDAO.";
	
	public int setPerAdd(PerformanceDTO performanceDTO) throws Exception {
		return sqlSession.insert(NAMESPACE+"setPerAdd", performanceDTO);
	}
	
	public List<PerformanceDTO> getPerList(Pager pager) throws Exception {
		return sqlSession.selectList(NAMESPACE+"getPerList", pager);
	}
	
	public int setPlaceAdd(PerformancePlaceDTO placeDTO) throws Exception {
		return sqlSession.insert(NAMESPACE+"setPlaceAdd", placeDTO);
	}
	
	public List<PerformancePlaceDTO> getPlaceList(Pager pager) throws Exception {
		return sqlSession.selectList(NAMESPACE+"getPlaceList", pager);
	}
	
	public Long getPerTotal() throws Exception {
		return sqlSession.selectOne(NAMESPACE+"getPerTotal");	
	}
	
	public Long getPlaceTotal() throws Exception {
		return sqlSession.selectOne(NAMESPACE+"getPlaceTotal");	
	}
}
