package com.the.cho.service.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.the.cho.dao.DAOManager;
import com.the.cho.dao.MemberDAO;
import com.the.cho.dto.Member;
import com.the.cho.service.Service;
import com.the.cho.sha256.ShaUtil;

public class MemberJoinService implements Service {

	@Override
	public String excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//로직처리
		request.setCharacterEncoding("utf-8");
		
		String id=request.getParameter("id");
		String pw=request.getParameter("pw");
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		
		Member member=new Member();
		member.setId(id);
		member.setPw(ShaUtil.getSHA256(pw));
		member.setName(name);
		member.setEmail(email);
		
		MemberDAO dao=DAOManager.getMemberDAO();
		dao.memberJoin(member);
		request.setAttribute("userName", name);
		
		return "/view/member/login.jsp";
	}

}
