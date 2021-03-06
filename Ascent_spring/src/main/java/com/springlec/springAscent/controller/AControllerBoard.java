package com.springlec.springAscent.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.springlec.springAscent.command.ACommand;

@Controller
public class AControllerBoard {
	
	@Autowired
	private SqlSession sqlSession;
	
	private ACommand counselListCommand = null; 
	private ACommand counselWriteCommand = null; 
	private ACommand counselContentCommand = null; 
	private ACommand counselDeleteCommand = null; 
	private ACommand counselModifyCommand = null; 
	
	private ACommand noticeListCommand = null;
	private ACommand noticeContentCommand = null;
	
	private ACommand reviewListCommand = null;
	private ACommand reviewWriteCommand = null;
	private ACommand reviewContentCommand = null;
	
	private ACommand productAskListCommand = null;
	private ACommand productAskWriteCommand = null;
	private ACommand productAskContentCommand = null;
	private ACommand productAskDeleteCommand = null;
	private ACommand productAskModifycommand = null;
	
	
	@Autowired
	private void auto(ACommand counselList, ACommand counselWrite, ACommand counselContent, ACommand counselDelete, ACommand counselModify, 
					  ACommand noticeList, ACommand noticeContent, 
					  ACommand reviewList, ACommand reviewWrite, ACommand reviewContent,
					  ACommand productAskList, ACommand productAskWrite, ACommand productAskContent, ACommand productAskDelete, ACommand productAskModify){
	
		this.counselListCommand = counselList;
		this.counselWriteCommand = counselWrite;
		this.counselContentCommand = counselContent;
		this.counselDeleteCommand = counselDelete;
		this.counselModifyCommand = counselModify;
		
		this.noticeListCommand = noticeList;
		this.noticeContentCommand = noticeContent;
		
		this.reviewListCommand = reviewList;
		this.reviewWriteCommand = reviewWrite;
		this.reviewContentCommand = reviewContent;
		
		this.productAskListCommand = productAskList;
		this.productAskWriteCommand = productAskWrite;
		this.productAskContentCommand = productAskContent;
		this.productAskDeleteCommand = productAskDelete;
		this.productAskModifycommand = productAskModify;
				
	}

	
	// 1???1 ?????? ?????? ??????
	@RequestMapping("/counselList")
	public String counselList(HttpServletRequest request, Model model) {
		counselListCommand.execute3(sqlSession, request, model);
		return "counselListV";
	}
	
	// 1???1 ?????? ????????? 
	@RequestMapping("/counselWriteV")
	public String counselWriteV(){
		return "counselWriteV";
	}
		
	// 1???1 ?????? ??????
	@RequestMapping("/counselWrite")
	public String counselWrite(HttpServletRequest request) {
		counselWriteCommand.execute1(sqlSession, request);
		return "redirect:counselList";
	}
	
	// 1???1 ?????? ??????
	@RequestMapping("/counselContent")
	public String counselContent(HttpServletRequest request, Model model) {
		counselContentCommand.execute3(sqlSession, request, model);
		return (String)request.getAttribute("result");
	}
	
	// 1???1 ?????? ??????
	@RequestMapping("/counselModify")
	public String counselModify(HttpServletRequest request) {
		String counselCode = request.getParameter("counselCode");
		counselModifyCommand.execute1(sqlSession, request);
		return "redirect:counselContent?counselCode="+counselCode;
		
	}
	
	// 1???1 ?????? ??????
	@RequestMapping("/counselDelete")
	public String counselDelete(HttpServletRequest request) {
		counselDeleteCommand.execute1(sqlSession, request);
		return "redirect:counselList";
		
	}
	
	// ???????????? ??????
	@RequestMapping("/noticeBoardList")
	public String noticeBoardList(HttpServletRequest request, Model model) {
		noticeListCommand.execute3(sqlSession, request, model);
		return "noticeBoardListV";
	}
	
	// ???????????? ??????	
	@RequestMapping("/noticeBoardContent")
	public String noticeBoardContent(HttpServletRequest request, Model model) {
		noticeContentCommand.execute3(sqlSession, request, model);
		return (String)request.getAttribute("result");
	}
	
	
	// ?????? ?????? 
	@RequestMapping("/reviewList")
	public String reveiwList(HttpServletRequest request, Model model) {
	reviewListCommand.execute3(sqlSession, request, model);
	return "reviewListV";
	}
		
	// ?????? ?????? ?????????
	@RequestMapping("/reviewWriteV")
	public String reveiwWriteV(){
	return "reviewWriteV";
	}
	
	//  ?????? ?????? ??????
	@RequestMapping("/reviewWrite")
	public String reviewWrite(HttpServletRequest request) {
	reviewWriteCommand.execute1(sqlSession, request);
	return "redirect:reviewList";
	}
	
	// ?????? ?????? ??????
	@RequestMapping("/reviewContent")
	public String reviewContent(HttpServletRequest request, Model model) {
	reviewContentCommand.execute3(sqlSession, request, model);
	return (String)request.getAttribute("result");
	}
	
	
	// ?????? ?????? ?????? ??????
	@RequestMapping("/productAskList")
	public String productAskList(HttpServletRequest request, Model model) {
		productAskListCommand.execute3(sqlSession, request, model);
		return "productAskListV";
	}
	
	// ?????? ?????? ????????? 
	@RequestMapping("/productAskWriteV")
	public String productAskWriteV(){
		return "productAskWriteV";
	}
		
	// ?????? ?????? ??????
	@RequestMapping("/productAskWrite")
	public String productAskWrite(HttpServletRequest request) {
		productAskWriteCommand.execute1(sqlSession, request);
		return "redirect:productAskList";
	}
	
	// ?????? ?????? ??????
	@RequestMapping("/productAskContent")
	public String productAskContent(HttpServletRequest request, Model model) {
		productAskContentCommand.execute3(sqlSession, request, model);
		return (String)request.getAttribute("result");
	}
	
	// ?????? ?????? ??????
	@RequestMapping("/productAskDelete")
	public String productAskDelete(HttpServletRequest request) {
		productAskDeleteCommand.execute1(sqlSession, request);
		return "redirect:productAskList";
		
	}
	
	// ?????? ?????? ??????
	@RequestMapping("/productAskModify")
	public String productAskModify(HttpServletRequest request) {
		String askCode = request.getParameter("askCode");
		productAskModifycommand.execute1(sqlSession, request);
		return "redirect:productAskContent?askCode="+askCode;
		
	}
	
}
