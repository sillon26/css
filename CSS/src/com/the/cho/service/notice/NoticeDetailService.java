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

public class NoticeDetailService implements Service {

	@Override
	public String excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//detail처리을 위한 서비스 클래스
		String _no=request.getParameter("no");
		int no=0;
		if(_no!=null) {
			no=Integer.parseInt(_no);
		}
		
		//DB에 보내서 처리
		Notice result=DAOManager.getNoticeDAO().detail(no);
		
		
		//JSP페이지에서 데이터 확인하기위해request Attribute에저장
		request.setAttribute("result", result);
		
		//페이지 이동 정보 리턴
		return "/view/notice/detail.jsp?side=1&ea=5";
	}

}
