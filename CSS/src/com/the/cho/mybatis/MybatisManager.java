package com.the.cho.mybatis;

import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class MybatisManager {
	private static SqlSessionFactory sqlSessionFactory;
		
	public static SqlSessionFactory getInstance() {
		if(sqlSessionFactory==null)
			new MybatisManager();
		return sqlSessionFactory;
	}
	
	
	private MybatisManager() {
		String resource = "com/the/cho/mybatis/mybatis-config.xml";
		InputStream inputStream;
		try {
			inputStream = Resources.getResourceAsStream(resource);
			sqlSessionFactory =
					  new SqlSessionFactoryBuilder().build(inputStream);
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}
}
