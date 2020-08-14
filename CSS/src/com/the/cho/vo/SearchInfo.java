package com.the.cho.vo;

public class SearchInfo {
	
	private String writer;
	private String subject;
	private String content;
	private String search;
	
	public String getWriter() {
		return writer;
	}
	public String getSubject() {
		return subject;
	}
	public String getContent() {
		return content;
	}
	public String getSearch() {
		return search;
	}
	
	public SearchInfo(String writer, String subject, String content, String search) {
		this.writer = writer;
		this.subject = subject;
		this.content = content;
		this.search = search;
	}
	
	
}
