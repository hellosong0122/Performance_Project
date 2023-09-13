package com.per.main.board.ticketopen;

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
public class TicketOpenController {
	
	@Autowired
	private TicketOpenService ticketOpenService;
	
	@ModelAttribute("board")
	public String getBoardName() {
		return "ticket_open";
	}
	
	@PostMapping("/admin/ticketopen/setContentsImgDelete")
	public String setContentsImgDelete(String path, HttpSession session, Model model)throws Exception{
		boolean check= ticketOpenService.setContentsImgDelete(path, session);
		model.addAttribute("result", check);
		return "commons/ajaxResult";
	}
	
	@PostMapping("/admin/ticketopen/setContentsImg")
	public String setContentsImg(MultipartFile files, HttpSession session, Model model)throws Exception{
		System.out.println("setContentsImg");
		System.out.println(files.getOriginalFilename());
		String path = ticketOpenService.setContentsImg(files, session);
		model.addAttribute("result", path);
		return "commons/ajaxResult";
		
	}
	
	@GetMapping("/admin/ticketopen/fileDelete")
	public String setFileDelete(TicketOpenFileDTO ticketOpenFileDTO, HttpSession session ,Model model)throws Exception{
		int result = ticketOpenService.setFileDelete(ticketOpenFileDTO, session);
		model.addAttribute("result", result);
		return "commons/ajaxResult";
		
	}
	
	@RequestMapping(value = "/ticketopen/list", method = RequestMethod.GET)
	public String getList(Pager pager, Model model)throws Exception{
		List<BoardDTO> ar =  ticketOpenService.getList(pager);
		model.addAttribute("list", ar);
		model.addAttribute("pager", pager);
		return "board/list";
	}
	
	@RequestMapping(value = "/admin/ticketopen/list", method = RequestMethod.GET)
	public String getAdminList(Pager pager, Model model)throws Exception{
		List<BoardDTO> ar =  ticketOpenService.getList(pager);
		model.addAttribute("list", ar);
		model.addAttribute("pager", pager);
		return "board/adminList";
	}
	
	
	@RequestMapping(value = "/admin/ticketopen/add", method = RequestMethod.GET)
	public String setAdd()throws Exception{
		return "board/add";
	}
	
	@RequestMapping(value = "/admin/ticketopen/add", method = RequestMethod.POST)
	public String setAdd(TicketOpenDTO ticketOpenDTO, MultipartFile[] photos, HttpSession session, Model model)throws Exception{
		int result = ticketOpenService.setAdd(ticketOpenDTO, photos, session);
		
		String message="등록 실패";
		
		if(result>0) {
			message="등록 성공";
		}
		
		model.addAttribute("message", message);
		model.addAttribute("url", "list");
		
		return "commons/result";
	}
	
	@RequestMapping(value = "/ticketopen/detail", method = RequestMethod.GET)
	public String setAdd(TicketOpenDTO ticketOpenDTO, Model model)throws Exception{
		BoardDTO boardDTO = ticketOpenService.getDetail(ticketOpenDTO);
		if(boardDTO != null) {
			ticketOpenService.setHitUpdate(boardDTO);
			model.addAttribute("dto", boardDTO);
			return "board/detail";
		} else {
			model.addAttribute("message", "글이 없다");
			model.addAttribute("url", "list");
			return "commons/result";
		}
	}
	
	@RequestMapping(value = "/admin/ticketopen/detail", method = RequestMethod.GET)
	public String setAdminAdd(TicketOpenDTO ticketOpenDTO, Model model)throws Exception{
		BoardDTO boardDTO = ticketOpenService.getDetail(ticketOpenDTO);
		if(boardDTO != null) {
			model.addAttribute("dto", boardDTO);
			return "board/adminDetail";
		} else {
			model.addAttribute("message", "글이 없다");
			model.addAttribute("url", "list");
			return "commons/result";
		}
	}
	
	@RequestMapping(value = "/admin/ticketopen/update", method = RequestMethod.GET)
	public String setUpdate(BoardDTO boardDTO, Model model)throws Exception{
		boardDTO = ticketOpenService.getDetail(boardDTO);
		model.addAttribute("dto", boardDTO);
		return "board/update";
	}
	
	@RequestMapping(value = "/admin/ticketopen/update", method = RequestMethod.POST)
	public String setUpdate(TicketOpenDTO ticketOpenDTO, MultipartFile[] photos, HttpSession session)throws Exception{
		int result = ticketOpenService.setUpdate(ticketOpenDTO, photos, session);
		return "redirect:./list";
	}
	
	@RequestMapping(value = "/admin/ticketopen/delete", method = RequestMethod.GET)
	public String setAdd(TicketOpenDTO ticketOpenDTO)throws Exception{
		int result = ticketOpenService.setDelete(ticketOpenDTO);
		return "redirect:./list";
	}	

}
