package com.springlec.springAscent.command;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.springlec.springAscent.dao.NDao;

public class NoticeListCommand implements ACommand {

	@Override
	public void execute3(SqlSession sqlSession, HttpServletRequest request, Model model) {
		
		NDao dao = sqlSession.getMapper(NDao.class);
		model.addAttribute("list", dao.list());
		
	}

	@Override
	public void execute1(SqlSession sqlSession, HttpServletRequest request) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void execute2(SqlSession sqlSession, Model model) {
		// TODO Auto-generated method stub
		
	}

	
}
