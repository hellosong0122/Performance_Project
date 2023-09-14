package com.per.main.board.ticketopen;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.per.main.board.BoardDTO;
import com.per.main.board.BoardService;
import com.per.main.file.FileDTO;
import com.per.utils.FileManager;
import com.per.utils.Pager;

@Service
public class TicketOpenService implements BoardService {
	@Autowired
	private TicketOpenDAO ticketOpenDAO;
	@Autowired
	private FileManager fileManager;
	
	public boolean setContentsImgDelete(String path, HttpSession session)throws Exception{
		//path: /resources/upload/ticketopen/파일명
		FileDTO fileDTO = new FileDTO();
		System.out.println(path.substring(path.lastIndexOf("/")+1));
		fileDTO.setFile_name(path.substring(path.lastIndexOf("/")+1));
		
		//path = path.substring(0, path.lastIndexOf("\\")+1);
		path= "/resources/upload/ticketopen/";
		return fileManager.fileDelete(fileDTO, path, session);
	}
	
	public String setContentsImg(MultipartFile file, HttpSession session) throws Exception {
		String path="/resources/upload/ticketopen/";
		String fileName = fileManager.fileSave(path, session, file);
		return path+fileName;
	}
	
	public int setFileDelete(TicketOpenFileDTO ticketOpenFileDTO, HttpSession session)throws Exception{
		//폴더 파일 삭제
		ticketOpenFileDTO = ticketOpenDAO.getFileDetail(ticketOpenFileDTO);
		System.out.println(ticketOpenFileDTO.toString());
		System.out.println(ticketOpenFileDTO.getFile_name());
		boolean flag = fileManager.fileDelete(ticketOpenFileDTO, "/resources/upload/ticketopen/", session);
		
		if(flag) {
			//db 삭제
			return ticketOpenDAO.setFileDelete(ticketOpenFileDTO);
		}
		
		return 0;
	}

	@Override
	public List<BoardDTO> getList(Pager pager) throws Exception {
		// TODO Auto-generated method stub
		pager.makeRowNum();
		pager.makePageNum(ticketOpenDAO.getTotal(pager));
		return ticketOpenDAO.getList(pager);
	}

	@Override
	public BoardDTO getDetail(BoardDTO boardDTO) throws Exception {
		// TODO Auto-generated method stub
		return ticketOpenDAO.getDetail(boardDTO);
	}

	@Override
	public int setAdd(BoardDTO boardDTO, MultipartFile[] files, HttpSession session) throws Exception {
		String path="/resources/upload/ticketopen/";
		
		int result = ticketOpenDAO.setAdd(boardDTO);
		
		for(MultipartFile file:files) {
			if(!file.isEmpty()) {
				String fileName=fileManager.fileSave(path, session, file);
				
				TicketOpenFileDTO ticketOpenFileDTO = new TicketOpenFileDTO();
				ticketOpenFileDTO.setTicket_open_num(boardDTO.getNum());
				ticketOpenFileDTO.setFile_name(fileName);
				ticketOpenFileDTO.setOrigin_name(file.getOriginalFilename());
				System.out.println(boardDTO.getNum());
				System.out.println(fileName);
				System.out.println(file.getOriginalFilename());
				result=ticketOpenDAO.setFileAdd(ticketOpenFileDTO);
			}
		}
		
		
		return result;
	}

	@Override
	public int setUpdate(BoardDTO boardDTO, MultipartFile [] files, HttpSession session) throws Exception {
		int result = ticketOpenDAO.setUpdate(boardDTO);
		// TODO Auto-generated method stub
		String path="/resources/upload/ticketopen/";
		for(MultipartFile file:files) {
			if(!file.isEmpty()) {
				String fileName=fileManager.fileSave(path, session, file);
				
				TicketOpenFileDTO ticketOpenFileDTO = new TicketOpenFileDTO();
				ticketOpenFileDTO.setTicket_open_num(boardDTO.getNum());
				ticketOpenFileDTO.setFile_name(fileName);
				ticketOpenFileDTO.setOrigin_name(file.getOriginalFilename());
				result=ticketOpenDAO.setFileAdd(ticketOpenFileDTO);
			}
		}
		return result;
	}

	@Override
	public int setDelete(BoardDTO boardDTO) throws Exception {
		// TODO Auto-generated method stub
		return ticketOpenDAO.setDelete(boardDTO);
	}
	
	@Override
	public int setHitUpdate(BoardDTO boardDTO) throws Exception {
		return ticketOpenDAO.setHitUpdate(boardDTO);
	}

}
