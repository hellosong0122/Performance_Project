package com.per.main.per;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.per.utils.Pager;

@Service
public class PerformanceService {
	@Autowired
	private PerformanceDAO performanceDAO;
	private PerformanceApi api = new PerformanceApi();
	
	public int setPerAdd() throws Exception {		
		int count = 0;
		
		List<PerformanceDTO> perList = api.getPerList(1);
		
		for(int i=0; i<perList.size(); i++) {
			String id = perList.get(i).getMt20id();
			PerformanceDTO performanceDTO = api.getPerDetail(id); 
			int result = performanceDAO.setPerAdd(performanceDTO);
			count += result;
		}
		System.out.println(count);
		return count;
	}
	
	public List<PerformanceDTO> getPerList(Pager pager) throws Exception {
		pager.makeRowNum();
		Long total = performanceDAO.getPerTotal();
		pager.makePageNum(total);
		
		return performanceDAO.getPerList(pager);
	}
	
	public int setPlaceAdd() throws Exception {
		int count = 0;
		
		List<PerformancePlaceDTO> placeList = api.getPlaceList(2);
	
		for(int i=0; i<placeList.size(); i++) {
			String id = placeList.get(i).getMt10id();
			PerformancePlaceDTO placeDTO = api.getPlaceDetail(id);	
			int result = performanceDAO.setPlaceAdd(placeDTO);
			count += result;
		}
		System.out.println(count);
		return count;
	}
	
	public List<PerformancePlaceDTO> getPlaceList(Pager pager) throws Exception {
		pager.makeRowNum();
		Long total = performanceDAO.getPlaceTotal();
		pager.makePageNum(total);
		
		return performanceDAO.getPlaceList(pager);
	}
}
