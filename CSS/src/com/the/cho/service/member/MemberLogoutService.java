package com.the.cho.service.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.the.cho.service.Service;

public class MemberLogoutService implements Service {

	@Override
	public String excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//로그아웃..
		
		//세션에 등록된 "logInfo" 삭제
		request.getSession().removeAttribute("logInfo");
		response.sendRedirect(request.getContextPath()+"/index.jsp");
		return null;
	}

}
