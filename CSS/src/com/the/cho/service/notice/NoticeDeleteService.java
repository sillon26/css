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

public class NoticeDeleteService implements Service {

	@Override
	public String excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//delete처리을 위한 서비스 클래스
		String deleteNo=request.getParameter("deleteNo");
		int no=Integer.parseInt(deleteNo);
		//DB에 보내서 처리
		DAOManager.getNoticeDAO().delete(no);
		
		//새로운 게시글 정보를 갖고오기위해 서버에 재요청
		//url을 변경시켜서 재요청
		response.sendRedirect("notice.bo?side=1");
		
		//페이지 이동 정보 리턴
		return null;
		
		
	}

}
