package com.per.main.header;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.per.utils.Pager;

@Repository
public class HeaderDAO {

	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE = "com.per.main.header.HeaderDAO.";

	public List<HeaderDTO> getList(Pager pager) throws Exception {
		return sqlSession.selectList(NAMESPACE+"getList", pager);
	}
	
	public Long getTotal(Pager pager) throws Exception {
		return sqlSession.selectOne(NAMESPACE+"getTotal", pager);
	}	

	public int setDelete(HeaderDTO headerDTO) throws Exception {
		return sqlSession.update(NAMESPACE+"setDelete", headerDTO);
	}	

	public int setUpdate(HeaderDTO headerDTO) throws Exception {
		return sqlSession.update(NAMESPACE + "setHeaderUpdate", headerDTO);
	}

	public HeaderDTO getDetail(HeaderDTO headerDTO) throws Exception {
		return sqlSession.selectOne(NAMESPACE+"getDetail", headerDTO);
	}

	public int setAdd(HeaderDTO headerDTO) throws Exception {
		return sqlSession.insert(NAMESPACE+"setAdd", headerDTO);
	}

	
}
