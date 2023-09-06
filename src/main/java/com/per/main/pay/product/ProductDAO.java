package com.per.main.pay.product;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.per.utils.Pager;



@Repository
public class ProductDAO {

	@Autowired
	private SqlSession sqlSession;

	private final String NAMESPACE = "com.per.main.pay.product.ProductDAO.";

	public List<ProductDTO> getGiftList(Pager pager) throws Exception{
		return sqlSession.selectList(NAMESPACE+"getGiftList",pager);
	}
	
	public Long getGiftTotal() throws Exception {
		return sqlSession.selectOne(NAMESPACE+"getGiftTotal");	
	}


	public ProductDTO getGiftDetail(ProductDTO productDTO) throws Exception{
		return sqlSession.selectOne(NAMESPACE+"getGiftDetail",productDTO);
	}

}
