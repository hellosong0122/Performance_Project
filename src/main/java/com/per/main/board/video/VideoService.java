package com.per.main.board.video;

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
public class VideoService implements BoardService {
	@Autowired
	private VideoDAO videoDAO;
	@Autowired
	private FileManager fileManager;
	
	public boolean setContentsImgDelete(String path, HttpSession session)throws Exception{
		//path: /resources/upload/video/파일명
		FileDTO fileDTO = new FileDTO();
		System.out.println(path.substring(path.lastIndexOf("/")+1));
		fileDTO.setFile_name(path.substring(path.lastIndexOf("/")+1));
		
		//path = path.substring(0, path.lastIndexOf("\\")+1);
		path= "/resources/upload/video/";
		return fileManager.fileDelete(fileDTO, path, session);
	}
	
	public String setContentsImg(MultipartFile file, HttpSession session) throws Exception {
		String path="/resources/upload/video/";
		String fileName = fileManager.fileSave(path, session, file);
		return path+fileName;
	}
	
	public int setFileDelete(VideoFileDTO videoFileDTO, HttpSession session)throws Exception{
		//폴더 파일 삭제
		videoFileDTO = videoDAO.getFileDetail(videoFileDTO);
		System.out.println(videoFileDTO.toString());
		System.out.println(videoFileDTO.getFile_name());
		boolean flag = fileManager.fileDelete(videoFileDTO, "/resources/upload/video/", session);
		
		if(flag) {
			//db 삭제
			return videoDAO.setFileDelete(videoFileDTO);
		}
		
		return 0;
	}

	@Override
	public List<BoardDTO> getList(Pager pager) throws Exception {
		// TODO Auto-generated method stub
		pager.makeRowNum();
		pager.makePageNum(videoDAO.getTotal(pager));
		return videoDAO.getList(pager);
	}

	@Override
	public BoardDTO getDetail(BoardDTO boardDTO) throws Exception {
		// TODO Auto-generated method stub
		return videoDAO.getDetail(boardDTO);
	}

	@Override
	public int setAdd(BoardDTO boardDTO, MultipartFile[] files, HttpSession session) throws Exception {
		String path="/resources/upload/video/";
		
		int result = videoDAO.setAdd(boardDTO);
		
		for(MultipartFile file:files) {
			if(!file.isEmpty()) {
				String fileName=fileManager.fileSave(path, session, file);
				
				VideoFileDTO videoFileDTO = new VideoFileDTO();
				videoFileDTO.setVideo_num(boardDTO.getNum());
				videoFileDTO.setFile_name(fileName);
				videoFileDTO.setOrigin_name(file.getOriginalFilename());
				System.out.println(boardDTO.getNum());
				System.out.println(fileName);
				System.out.println(file.getOriginalFilename());
				result=videoDAO.setFileAdd(videoFileDTO);
			}
		}
		
		
		return result;
	}

	@Override
	public int setUpdate(BoardDTO boardDTO, MultipartFile [] files, HttpSession session) throws Exception {
		int result = videoDAO.setUpdate(boardDTO);
		// TODO Auto-generated method stub
		String path="/resources/upload/video/";
		for(MultipartFile file:files) {
			if(!file.isEmpty()) {
				String fileName=fileManager.fileSave(path, session, file);
				
				VideoFileDTO videoFileDTO = new VideoFileDTO();
				videoFileDTO.setVideo_num(boardDTO.getNum());
				videoFileDTO.setFile_name(fileName);
				videoFileDTO.setOrigin_name(file.getOriginalFilename());
				result=videoDAO.setFileAdd(videoFileDTO);
			}
		}
		return result;
	}

	@Override
	public int setDelete(BoardDTO boardDTO) throws Exception {
		// TODO Auto-generated method stub
		return videoDAO.setDelete(boardDTO);
	}
	
	

}
