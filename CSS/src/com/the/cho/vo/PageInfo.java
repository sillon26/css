package com.the.cho.vo;

public class PageInfo {
	
	private int blockNo;
	private int pageTotal;
	private int pageStart;
	private int pageEnd;
	
	public int getBlockNo() {
		return blockNo;
	}
	public int getPageTotal() {
		return pageTotal;
	}
	public int getPageStart() {
		return pageStart;
	}
	public int getPageEnd() {
		return pageEnd;
	}
	public PageInfo(int page, int pageTotal) {
		int pageBlock=5;//한페이지에 표현할 페이지개수
		//page 1 ~ 5 : block: 1
		//page 6 ~10 : block: 2
		blockNo=page/pageBlock; // 1/5,2/5,3/5,4/5 :0 ,,, 5/5:1
		if(page%pageBlock>0) {
			blockNo++;//1/5,2/5,3/5,4/5 :0->1
		}
		this.pageTotal=pageTotal;
		
		//
		pageEnd = blockNo*pageBlock; // 1 * 5  , 10
		pageStart = pageEnd-pageBlock+1; //5-5+1 , 6
		
		//마지막페이지 체크
		if(pageEnd>pageTotal) {
			pageEnd=pageTotal;
		}
	}
}
