package com.springlec.springAscent.command;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.springlec.springAscent.dao.CartDao;

public class CartModifyCommand implements ACommand {

	@Override
	public void execute1(SqlSession sqlSession, HttpServletRequest request) {
		// TODO Auto-generated method stub
		
		int cartAmount = Integer.parseInt(request.getParameter("cartAmount"));
		int cartCode = Integer.parseInt(request.getParameter("cartCode"));
		
		CartDao dao = sqlSession.getMapper(CartDao.class);
		dao.cartModify(cartAmount, cartCode);
	}
	
	@Override
	public void execute2(SqlSession sqlSession, Model model) {
		// TODO Auto-generated method stub
		
	}
	
	@Override
	public void execute3(SqlSession sqlSession, HttpServletRequest request, Model model) {
		// TODO Auto-generated method stub
		
	}
	
}
