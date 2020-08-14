package com.the.cho.service.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.the.cho.dao.DAOManager;
import com.the.cho.dto.Member;
import com.the.cho.service.Service;
import com.the.cho.sha256.ShaUtil;

public class MemberLoginService implements Service {

	@Override
	public String excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String id=request.getParameter("id");
		String pw=request.getParameter("pw");
		
		Member member=new Member();
		member.setId(id);
		member.setPw(ShaUtil.getSHA256(pw));
		
		Member logInfo=DAOManager.getMemberDAO().login(member);
		//존재하지않으면 null
		System.out.println(logInfo);
		if(logInfo!=null) {
			HttpSession session=request.getSession();
			session.setAttribute("logInfo", logInfo);
		}else {
			request.setAttribute("log_msg", "입력한 ID 또는 PW가 일치하지 않습니다.");
			return "/view/member/login.jsp";
		}
		
		return "/index.jsp";
	}

}
