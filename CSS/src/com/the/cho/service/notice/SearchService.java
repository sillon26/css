package com.the.cho.service.notice;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.RowBounds;

import com.the.cho.dao.DAOManager;
import com.the.cho.dto.Notice;
import com.the.cho.service.Service;
import com.the.cho.vo.PageInfo;
import com.the.cho.vo.SearchInfo;


public class SearchService implements Service {

	@Override
	public String excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
//		String _count = request.getParameter("count");
//		int count = Integer.parseInt(_count);
		///////////////////////////////////////////////////////////////
		String writer=request.getParameter("writer");
		String subject=request.getParameter("subject");
		String content=request.getParameter("content");
		String search=request.getParameter("search");
		
		SearchInfo searchInfo=new SearchInfo(writer,subject,content, search);
		
		
		///////////////////////////////////////////////////////////////
			
	
		
		
		//DB에서 게시판정보 갖고오기
		List<Notice> list=DAOManager.getNoticeDAO().searchList(searchInfo);
		//페이징에 필요한 정보
		//1.전체게시글수
		int noticeTotal=DAOManager.getNoticeDAO().noticeTotal(searchInfo);
		//System.out.println("총게시글수 : "+noticeTotal);
		
		
		
		
		
		
		
		//페이징에 필요한 정보
		//1.전체게시글수
	
		
		//페이지에 갖고갈 정보
		request.setAttribute("faq", list);
		
		//페이지 이동 정보 리턴
		return "/view/notice/search.jsp";
	}

}
