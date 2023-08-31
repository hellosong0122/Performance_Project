package com.per.main.pay.product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.per.utils.Pager;



@Service
public class ProductService {
	
	@Autowired	
	private ProductDAO productDAO;
	
	public List<ProductDTO> getGiftList(Pager pager) throws Exception{
		pager.makeRowNum();
		Long total = productDAO.getGiftTotal();
		pager.makePageNum(total);
		
		
		return productDAO.getGiftList(pager);
	}

	public ProductDTO getGiftDetail(ProductDTO productDTO) throws Exception {
		
		return productDAO.getGiftDetail(productDTO);
	}
}
