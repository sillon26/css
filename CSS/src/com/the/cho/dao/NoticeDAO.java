package com.the.cho.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.log4j.Logger;

import com.the.cho.controller.MemberController;
import com.the.cho.dto.Notice;
import com.the.cho.mybatis.MybatisManager;
import com.the.cho.vo.SearchInfo;

public class NoticeDAO{

	private SqlSessionFactory sqlSessionFactory=MybatisManager.getInstance();
	NoticeDAO() {}
	
	public List<Notice> noticeList(SearchInfo searchInfo, RowBounds rowBounds) {
		SqlSession sqlSession=sqlSessionFactory.openSession();
		//쿼리를 실행해서 나온 결과를 List에 저장후 리턴
		List<Notice> result=sqlSession.selectList("notice.list",searchInfo, rowBounds);
		sqlSession.close();
		
		return result;
	}

	public int noticeTotal(SearchInfo searchInfo) {
		SqlSession sqlSession=sqlSessionFactory.openSession();
		int result=sqlSession.selectOne("notice.total", searchInfo);
		sqlSession.close();
		return result;
	}

	public Notice detail(int no) {
		SqlSession sqlSession=sqlSessionFactory.openSession();
		//Mapper에게..
		Notice result=sqlSession.selectOne("notice.detail", no);
		
		sqlSession.close();
		return result;
	}

	public void delete(int no) {
		SqlSession sqlSession=sqlSessionFactory.openSession();
		//Mapper에게..
		int deleteEA=sqlSession.delete("notice.delete", no);
		System.out.println("삭제 개수 : "+deleteEA);
		if(deleteEA==1) {
			sqlSession.commit();
		}
		//selet문을 제외한 delete, update, insert into 완료후 확정..
		sqlSession.close();
		
	}

	public void edit(Notice notice) {
		SqlSession sqlSession=sqlSessionFactory.openSession();
		//Mapper에게..
		int updateEA=sqlSession.update("notice.edit", notice);
		System.out.println("수정 개수 : "+updateEA);
		if(updateEA==1) {
			sqlSession.commit();
		}
		//selet문을 제외한 delete, update, insert into 완료후 확정..
		sqlSession.close();
		
	}

	public void write(Notice notice) {
		SqlSession sqlSession=sqlSessionFactory.openSession();
		//Mapper에게..
		int insertEA=sqlSession.insert("notice.insert", notice);
		System.out.println("등록 개수 : "+insertEA);
		if(insertEA==1) {
			sqlSession.commit();
		}
		//selet문을 제외한 delete, update, insert into 완료후 확정..
		sqlSession.close();
		
	}

	public List<Notice> indexList() {
		SqlSession sqlSession=sqlSessionFactory.openSession();
		
		List<Notice> result=sqlSession.selectList("notice.index");
		sqlSession.close();
		
		return result;
	}

	public List<Notice> faqList() {
		SqlSession sqlSession=sqlSessionFactory.openSession();
		
		List<Notice> result=sqlSession.selectList("notice.faq");
		sqlSession.close();
		
		return result;
	}

	public List<Notice> listList(RowBounds rowBounds) {
		SqlSession sqlSession=sqlSessionFactory.openSession();
		
		List<Notice> result=sqlSession.selectList("notice.total2",null, rowBounds);
		sqlSession.close();
		
		return result;
	}

	public List<Notice> searchList(SearchInfo searchInfo) {
		SqlSession sqlSession=sqlSessionFactory.openSession();
		//쿼리를 실행해서 나온 결과를 List에 저장후 리턴
		List<Notice> result=sqlSession.selectList("notice.search",searchInfo);
		sqlSession.close();
		
		return result;
	}

	
	
}
