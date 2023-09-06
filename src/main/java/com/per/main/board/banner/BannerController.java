package com.per.main.board.banner;

import java.util.List;

import javax.mail.Session;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.per.main.board.BoardDTO;
import com.per.utils.Pager;

@Controller
@RequestMapping("/banner/*")
public class BannerController {
	
	@Autowired
	private BannerService bannerService;
	
	@ModelAttribute("board")
	public String getBoardName() {
		return "banner";
	}
	
	@PostMapping("setContentsImgDelete")
	
	public String setContentsImgDelete(String path, HttpSession session, Model model)throws Exception{
		boolean check= bannerService.setContentsImgDelete(path, session);
		model.addAttribute("result", check);
		return "commons/ajaxResult";
	}
	
	@PostMapping("setContentsImg")
	public String setContentsImg(MultipartFile files, HttpSession session, Model model)throws Exception{
		System.out.println("setContentsImg");
		System.out.println(files.getOriginalFilename());
		String path = bannerService.setContentsImg(files, session);
		model.addAttribute("result", path);
		return "commons/ajaxResult";
		
	}
	
	@GetMapping("fileDelete")
	public String setFileDelete(BannerFileDTO bannerFileDTO, HttpSession session ,Model model)throws Exception{
		int result = bannerService.setFileDelete(bannerFileDTO, session);
		model.addAttribute("result", result);
		return "commons/ajaxResult";
		
	}
	
	@RequestMapping(value = "list", method = RequestMethod.GET)
	public String getList(Pager pager, Model model)throws Exception{
		List<BoardDTO> ar =  bannerService.getList(pager);
		model.addAttribute("list", ar);
		model.addAttribute("pager", pager);
		return "board/list";
	}
	
	
	@RequestMapping(value = "add", method = RequestMethod.GET)
	public String setAdd()throws Exception{
		return "board/add";
	}
	
	@RequestMapping(value = "add", method = RequestMethod.POST)
	public String setAdd(BannerDTO bannerDTO, MultipartFile[] photos, HttpSession session, Model model)throws Exception{
		int result = bannerService.setAdd(bannerDTO, photos, session);
		
		String message="등록 실패";
		
		if(result>0) {
			message="등록 성공";
		}
		
		model.addAttribute("message", message);
		model.addAttribute("url", "list");
		
		return "commons/result";
	}
	
	@RequestMapping(value = "detail", method = RequestMethod.GET)
	public String setAdd(BannerDTO bannerDTO, Model model)throws Exception{
		BoardDTO boardDTO = bannerService.getDetail(bannerDTO);
		if(boardDTO != null) {
			model.addAttribute("dto", boardDTO);
			return "board/detail";
		} else {
			model.addAttribute("message", "글이 없다");
			model.addAttribute("url", "list");
			return "commons/result";
		}
		
	}
	
	@RequestMapping(value = "update", method = RequestMethod.GET)
	public String setUpdate(BoardDTO boardDTO, Model model)throws Exception{
		boardDTO = bannerService.getDetail(boardDTO);
		model.addAttribute("dto", boardDTO);
		return "board/update";
	}
	
	@RequestMapping(value = "update", method = RequestMethod.POST)
	public String setUpdate(BannerDTO bannerDTO, MultipartFile[] photos, HttpSession session)throws Exception{
		int result = bannerService.setUpdate(bannerDTO, photos, session);
		return "redirect:./list";
	}
	
	@RequestMapping(value = "delete", method = RequestMethod.GET)
	public String setAdd(BannerDTO bannerDTO)throws Exception{
		int result = bannerService.setDelete(bannerDTO);
		return "redirect:./list";
	}	

}
