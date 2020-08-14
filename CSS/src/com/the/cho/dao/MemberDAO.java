package com.the.cho.dao;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.the.cho.dto.Member;
import com.the.cho.mybatis.MybatisManager;

public class MemberDAO {
	private SqlSessionFactory sqlSessionFactory=MybatisManager.getInstance();
	MemberDAO() {
	}
	public void memberJoin(Member member) {
		SqlSession  sqlSession =sqlSessionFactory.openSession(true);
		
		sqlSession.insert("member.join", member);
		
		sqlSession.close();
	}
	public Member login(Member member) {
		SqlSession  sqlSession =sqlSessionFactory.openSession();
		
		Member result=sqlSession.selectOne("member.login", member);
		
		sqlSession.close();

		return result;
	}
}
