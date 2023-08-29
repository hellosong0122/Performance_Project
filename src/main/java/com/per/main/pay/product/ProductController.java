package com.per.main.pay.product;

import java.io.IOException;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import com.per.utils.Pager;


@Controller
@RequestMapping("/product/*")
public class ProductController {

	@Autowired
	private ProductService productService;

	@RequestMapping(value = "giftShop", method = RequestMethod.GET)
	public ModelAndView getGiftList(ModelAndView mv, Pager pager) throws Exception {
		List<ProductDTO> list = productService.getGiftList(pager);
		mv.addObject("giftList", list);
		mv.addObject("pager", pager);
		mv.setViewName("product/giftShop");
		return mv;
	}

//	@RequestMapping(value = "giftDetail", method = RequestMethod.GET)
//	public ModelAndView getGiftDetail(ProductDTO productDTO, ModelAndView mv) throws Exception {
//		productDTO = productService.getGiftDetail(productDTO);
//		mv.addObject("giftDetail", productDTO);
//		mv.setViewName("product/giftDetail");
//
//		return mv;
//	}
}
