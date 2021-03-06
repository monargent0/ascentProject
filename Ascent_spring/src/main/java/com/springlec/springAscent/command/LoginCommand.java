package com.springlec.springAscent.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.springlec.springAscent.dao.UDao;
import com.springlec.springAscent.dto.UDtoLogin;


public class LoginCommand implements ACommand {

	@Override
	public void execute1(SqlSession sqlSession, HttpServletRequest request) {
		HttpSession session = request.getSession();
		String productCode = (String) session.getAttribute("productCode");
		
		UDao dao = sqlSession.getMapper(UDao.class);
		UDtoLogin dto = dao.logIn(request.getParameter("userID"), request.getParameter("userPW"));
		
		
		if(dto == null){
			session.setAttribute("alertTxt", "일치하는 아이디가 없습니다." );
			request.setAttribute("return" , "redirect:logInV");
		} else if ( dto.getAdminCheck().toString().equals("admin")) {
			session.setAttribute("userID", dto.getUserID().toString() );
			request.setAttribute("return", "redirect:adminV");			
		} else if ( dto.getUserID().toString() != null) {
			session.setAttribute("userID", dto.getUserID().toString() );
			if(productCode == null){
				request.setAttribute("return", "redirect:main");
			}else if(productCode != null){
				request.setAttribute("return", "redirect:productDetail?productCode="+productCode);
				session.removeAttribute("productCode");
				productCode = null;
			}
		} 
		
	}

	@Override
	public void execute2(SqlSession sqlSession, Model model) {
		
	}

	@Override
	public void execute3(SqlSession sqlSession, HttpServletRequest request, Model model) {
		
	}

}
