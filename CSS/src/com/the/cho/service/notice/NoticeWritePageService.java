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

public class NoticeWritePageService implements Service {

	@Override
	public String excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		return "/view/notice/write.jsp";
		
		
	}

}
