package com.per.main.board.faq;

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
public class FaqService implements BoardService {
	@Autowired
	private FaqDAO faqDAO;
	@Autowired
	private FileManager fileManager;
	
	public boolean setContentsImgDelete(String path, HttpSession session)throws Exception{
		//path: /resources/upload/faq/파일명
		FileDTO fileDTO = new FileDTO();
		System.out.println(path.substring(path.lastIndexOf("/")+1));
		fileDTO.setFile_name(path.substring(path.lastIndexOf("/")+1));
		
		//path = path.substring(0, path.lastIndexOf("\\")+1);
		path= "/resources/upload/faq/";
		return fileManager.fileDelete(fileDTO, path, session);
	}
	
	public String setContentsImg(MultipartFile file, HttpSession session) throws Exception {
		String path="/resources/upload/faq/";
		String fileName = fileManager.fileSave(path, session, file);
		return path+fileName;
	}
	
	public int setFileDelete(FaqFileDTO faqFileDTO, HttpSession session)throws Exception{
		//폴더 파일 삭제
		faqFileDTO = faqDAO.getFileDetail(faqFileDTO);
		System.out.println(faqFileDTO.toString());
		System.out.println(faqFileDTO.getFile_name());
		boolean flag = fileManager.fileDelete(faqFileDTO, "/resources/upload/faq/", session);
		
		if(flag) {
			//db 삭제
			return faqDAO.setFileDelete(faqFileDTO);
		}
		
		return 0;
	}

	@Override
	public List<BoardDTO> getList(Pager pager) throws Exception {
		// TODO Auto-generated method stub
		pager.makeRowNum();
		pager.makePageNum(faqDAO.getTotal(pager));
		return faqDAO.getList(pager);
	}

	@Override
	public BoardDTO getDetail(BoardDTO boardDTO) throws Exception {
		// TODO Auto-generated method stub
		return faqDAO.getDetail(boardDTO);
	}

	@Override
	public int setAdd(BoardDTO boardDTO, MultipartFile[] files, HttpSession session) throws Exception {
		String path="/resources/upload/faq/";
		
		int result = faqDAO.setAdd(boardDTO);
		
		for(MultipartFile file:files) {
			if(!file.isEmpty()) {
				String fileName=fileManager.fileSave(path, session, file);
				
				FaqFileDTO faqFileDTO = new FaqFileDTO();
				faqFileDTO.setFaq_num(boardDTO.getNum());
				faqFileDTO.setFile_name(fileName);
				faqFileDTO.setOrigin_name(file.getOriginalFilename());
				System.out.println(boardDTO.getNum());
				System.out.println(fileName);
				System.out.println(file.getOriginalFilename());
				result=faqDAO.setFileAdd(faqFileDTO);
			}
		}
		
		
		return result;
	}

	@Override
	public int setUpdate(BoardDTO boardDTO, MultipartFile [] files, HttpSession session) throws Exception {
		int result = faqDAO.setUpdate(boardDTO);
		// TODO Auto-generated method stub
		String path="/resources/upload/faq/";
		for(MultipartFile file:files) {
			if(!file.isEmpty()) {
				String fileName=fileManager.fileSave(path, session, file);
				
				FaqFileDTO faqFileDTO = new FaqFileDTO();
				faqFileDTO.setFaq_num(boardDTO.getNum());
				faqFileDTO.setFile_name(fileName);
				faqFileDTO.setOrigin_name(file.getOriginalFilename());
				result=faqDAO.setFileAdd(faqFileDTO);
			}
		}
		return result;
	}

	@Override
	public int setDelete(BoardDTO boardDTO) throws Exception {
		// TODO Auto-generated method stub
		return faqDAO.setDelete(boardDTO);
	}
	
	@Override
	public int setHitUpdate(BoardDTO boardDTO) throws Exception {
		return faqDAO.setHitUpdate(boardDTO);
	}

}
