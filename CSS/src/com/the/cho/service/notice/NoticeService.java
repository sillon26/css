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

public class NoticeService implements Service {

	@Override
	public String excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String writer=request.getParameter("writer");
		String subject=request.getParameter("subject");
		String content=request.getParameter("content");
		String search=request.getParameter("search");
		
		SearchInfo searchInfo=new SearchInfo(writer,subject,content, search);
		
		
		///////////////////////////////////////////////////////////////
		String _page=request.getParameter("page");
		int page=1;//첫페이지 default
		if(_page!=null) {
			page=Integer.parseInt(_page);
		}
		
		int limit=10;//건너뛴다음 표현할 개수
		/////////////페이지에서 개수가 넘어오면 변경
		String _ea=request.getParameter("ea");
		if(_ea!=null) {
			limit=Integer.parseInt(_ea);
		}
		
		int offset=limit*(page-1);//건너뛸개수
		RowBounds rowBounds=new RowBounds(offset, limit);
		//DB에서 게시판정보 갖고오기
		List<Notice> list=DAOManager.getNoticeDAO().noticeList(searchInfo,rowBounds);
		//페이징에 필요한 정보
		//1.전체게시글수
		int noticeTotal=DAOManager.getNoticeDAO().noticeTotal(searchInfo);
		//System.out.println("총게시글수 : "+noticeTotal);
		int pageTotal=noticeTotal/limit;
		if(noticeTotal%limit>0) {
			pageTotal++;
		}
		
		PageInfo pageInfo=new PageInfo(page, pageTotal);
		request.setAttribute("pageInfo", pageInfo);
		
		//페이지에 갖고갈 정보
		request.setAttribute("noticeList", list);
		
		//페이지 이동 정보 리턴
		return "/view/notice/notice.jsp";
	}

}
