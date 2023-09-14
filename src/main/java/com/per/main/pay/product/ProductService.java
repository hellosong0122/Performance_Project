package com.per.main.pay.product;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.per.main.board.BoardDTO;
import com.per.main.board.faq.FaqFileDTO;
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
	
	public int setUpdate(ProductDTO productDTO) throws Exception {
		int result = productDAO.setUpdate(productDTO);
		return result;
	}

	public int setDelete(ProductDTO productDTO) throws Exception {
		return productDAO.setDelete(productDTO);
	}

}
