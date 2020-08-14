package com.the.cho.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

import com.the.cho.service.Service;
import com.the.cho.service.member.MemberJoinService;
import com.the.cho.service.member.MemberLoginService;
import com.the.cho.service.member.MemberLogoutService;


@WebServlet(urlPatterns = {"*.me"})
public class MemberController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//
		String uri=request.getRequestURI();
		String[] strs=uri.split("/");
		String key =strs[strs.length - 1];
		Service service=null;
		if(key.equals("member-join.me")) {
			service=new MemberJoinService();
		}else if(key.equals("login.me")) {
			service=new MemberLoginService();
		}else if(key.equals("logout.me")) {
			service=new MemberLogoutService();
		}
		
		//로직실행
		String path=null;
		if(service!=null)
			path=service.excute(request, response);
		
		//페이지이동
		if(path!=null)
			request.getRequestDispatcher(path).forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
