package com.per.main.board.banner;

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
public class BannerService implements BoardService {
	@Autowired
	private BannerDAO bannerDAO;
	@Autowired
	private FileManager fileManager;
	
	public boolean setContentsImgDelete(String path, HttpSession session)throws Exception{
		//path: /resources/upload/banner/파일명
		FileDTO fileDTO = new FileDTO();
		System.out.println(path.substring(path.lastIndexOf("/")+1));
		fileDTO.setFile_name(path.substring(path.lastIndexOf("/")+1));
		
		//path = path.substring(0, path.lastIndexOf("\\")+1);
		path= "/resources/upload/banner/";
		return fileManager.fileDelete(fileDTO, path, session);
	}
	
	public String setContentsImg(MultipartFile file, HttpSession session) throws Exception {
		String path="/resources/upload/banner/";
		String fileName = fileManager.fileSave(path, session, file);
		return path+fileName;
	}
	
	public int setFileDelete(BannerFileDTO bannerFileDTO, HttpSession session)throws Exception{
		//폴더 파일 삭제
		bannerFileDTO = bannerDAO.getFileDetail(bannerFileDTO);
		System.out.println(bannerFileDTO.toString());
		System.out.println(bannerFileDTO.getFile_name());
		boolean flag = fileManager.fileDelete(bannerFileDTO, "/resources/upload/banner/", session);
		
		if(flag) {
			//db 삭제
			return bannerDAO.setFileDelete(bannerFileDTO);
		}
		
		return 0;
	}

	@Override
	public List<BoardDTO> getList(Pager pager) throws Exception {
		// TODO Auto-generated method stub
		pager.makeRowNum();
		pager.makePageNum(bannerDAO.getTotal(pager));
		return bannerDAO.getList(pager);
	}

	@Override
	public BoardDTO getDetail(BoardDTO boardDTO) throws Exception {
		// TODO Auto-generated method stub
		return bannerDAO.getDetail(boardDTO);
	}

	@Override
	public int setAdd(BoardDTO boardDTO, MultipartFile[] files, HttpSession session) throws Exception {
		String path="/resources/upload/banner/";
		
		int result = bannerDAO.setAdd(boardDTO);
		
		for(MultipartFile file:files) {
			if(!file.isEmpty()) {
				String fileName=fileManager.fileSave(path, session, file);
				
				BannerFileDTO bannerFileDTO = new BannerFileDTO();
				bannerFileDTO.setBanner_num(boardDTO.getNum());
				bannerFileDTO.setFile_name(fileName);
				bannerFileDTO.setOrigin_name(file.getOriginalFilename());
				System.out.println(boardDTO.getNum());
				System.out.println(fileName);
				System.out.println(file.getOriginalFilename());
				result=bannerDAO.setFileAdd(bannerFileDTO);
			}
		}
		
		
		return result;
	}

	@Override
	public int setUpdate(BoardDTO boardDTO, MultipartFile [] files, HttpSession session) throws Exception {
		int result = bannerDAO.setUpdate(boardDTO);
		// TODO Auto-generated method stub
		String path="/resources/upload/banner/";
		for(MultipartFile file:files) {
			if(!file.isEmpty()) {
				String fileName=fileManager.fileSave(path, session, file);
				
				BannerFileDTO bannerFileDTO = new BannerFileDTO();
				bannerFileDTO.setBanner_num(boardDTO.getNum());
				bannerFileDTO.setFile_name(fileName);
				bannerFileDTO.setOrigin_name(file.getOriginalFilename());
				result=bannerDAO.setFileAdd(bannerFileDTO);
			}
		}
		return result;
	}

	@Override
	public int setDelete(BoardDTO boardDTO) throws Exception {
		// TODO Auto-generated method stub
		return bannerDAO.setDelete(boardDTO);
	}
	
	

}
