package com.the.cho.service.notice;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



import com.the.cho.dao.DAOManager;
import com.the.cho.dto.Notice;
import com.the.cho.service.Service;


public class FaqService implements Service {

	@Override
	public String excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
//		String _count = request.getParameter("count");
//		int count = Integer.parseInt(_count);
		///////////////////////////////////////////////////////////////
		
		List<Notice> list=DAOManager.getNoticeDAO().indexList();
		//페이징에 필요한 정보
		//1.전체게시글수
	
		
		//페이지에 갖고갈 정보
		request.setAttribute("faq", list);
		
		//페이지 이동 정보 리턴
		return "/view/notice/faq.jsp";
	}

}
