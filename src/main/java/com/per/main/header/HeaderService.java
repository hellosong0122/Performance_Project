package com.per.main.header;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.per.main.member.MemberDAO;
import com.per.main.member.MemberDTO;
import com.per.utils.Pager;

@Service
public class HeaderService {
	
	@Autowired
	private HeaderDAO headerDAO;	
		
	public List<HeaderDTO> getList(Pager pager) throws Exception {
		pager.makeRowNum();
		pager.makePageNum(headerDAO.getTotal(pager));		
		return headerDAO.getList(pager);
	}
	
	public HeaderDTO getDetail(HeaderDTO headerDTO) throws Exception {
		return headerDAO.getDetail(headerDTO);
	}	
	
	public int setAdd(HeaderDTO headerDTO) throws Exception {
		return headerDAO.setAdd(headerDTO);
	}
	
	public int setUpdate(HeaderDTO headerDTO)throws Exception{
		return headerDAO.setUpdate(headerDTO);
	}
	
	public int setDelete(HeaderDTO headerDTO) throws Exception {
		return headerDAO.setDelete(headerDTO);
	}
	

}
