package com.springlec.springAscent.dao;

import java.util.ArrayList;

import com.springlec.springAscent.dto.NDtoNotice;

public interface NDao {
	
	// 공지사항 목록
	public ArrayList<NDtoNotice> list(); 
	
	// 공지사항 상세
	public NDtoNotice content(int noticeCode);

	
}
