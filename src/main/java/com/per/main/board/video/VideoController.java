package com.per.main.board.video;

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
@RequestMapping("/video/*")
public class VideoController {
	
	@Autowired
	private VideoService videoService;
	
	@ModelAttribute("board")
	public String getBoardName() {
		return "video";
	}
	
	@PostMapping("setContentsImgDelete")
	public String setContentsImgDelete(String path, HttpSession session, Model model)throws Exception{
		boolean check= videoService.setContentsImgDelete(path, session);
		model.addAttribute("result", check);
		return "commons/ajaxResult";
	}
	
	@PostMapping("setContentsImg")
	public String setContentsImg(MultipartFile files, HttpSession session, Model model)throws Exception{
		System.out.println("setContentsImg");
		System.out.println(files.getOriginalFilename());
		String path = videoService.setContentsImg(files, session);
		model.addAttribute("result", path);
		return "commons/ajaxResult";
		
	}
	
	@GetMapping("fileDelete")
	public String setFileDelete(VideoFileDTO videoFileDTO, HttpSession session ,Model model)throws Exception{
		int result = videoService.setFileDelete(videoFileDTO, session);
		model.addAttribute("result", result);
		return "commons/ajaxResult";
		
	}
	
	@RequestMapping(value = "list", method = RequestMethod.GET)
	public String getList(Pager pager, Model model)throws Exception{
		List<BoardDTO> ar =  videoService.getList(pager);
		model.addAttribute("list", ar);
		model.addAttribute("pager", pager);
		return "board/list";
	}
	
	
	@RequestMapping(value = "add", method = RequestMethod.GET)
	public String setAdd()throws Exception{
		return "board/add";
	}
	
	@RequestMapping(value = "add", method = RequestMethod.POST)
	public String setAdd(VideoDTO videoDTO, MultipartFile[] photos, HttpSession session, Model model)throws Exception{
		int result = videoService.setAdd(videoDTO, photos, session);
		
		String message="등록 실패";
		
		if(result>0) {
			message="등록 성공";
		}
		
		model.addAttribute("message", message);
		model.addAttribute("url", "list");
		
		return "commons/result";
	}
	
	@RequestMapping(value = "detail", method = RequestMethod.GET)
	public String setAdd(VideoDTO videoDTO, Model model)throws Exception{
		BoardDTO boardDTO = videoService.getDetail(videoDTO);
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
		boardDTO = videoService.getDetail(boardDTO);
		model.addAttribute("dto", boardDTO);
		return "board/update";
	}
	
	@RequestMapping(value = "update", method = RequestMethod.POST)
	public String setUpdate(VideoDTO videoDTO, MultipartFile[] photos, HttpSession session)throws Exception{
		int result = videoService.setUpdate(videoDTO, photos, session);
		return "redirect:./list";
	}
	
	@RequestMapping(value = "delete", method = RequestMethod.GET)
	public String setAdd(VideoDTO videoDTO)throws Exception{
		int result = videoService.setDelete(videoDTO);
		return "redirect:./list";
	}	

}
