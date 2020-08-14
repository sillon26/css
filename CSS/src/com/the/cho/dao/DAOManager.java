package com.the.cho.dao;

public class DAOManager {
	
	private static MemberDAO memberDAO;
	private static NoticeDAO noticeDAO;
	static {
		memberDAO=new MemberDAO();
		noticeDAO=new NoticeDAO();
	}
		
	public static NoticeDAO getNoticeDAO() {
		return noticeDAO;
	}
	public static MemberDAO getMemberDAO() {
		return memberDAO;
	}

}
