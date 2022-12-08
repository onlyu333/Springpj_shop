package com.shop.main;


import java.util.Locale;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.shop.service.IF_ProductService;
import com.shop.vo.ProductVO;



@Controller
public class AdminController {
	
	@Inject 
	private IF_ProductService psrv;
	 
    
	private static final Logger logger = LoggerFactory.getLogger(AdminController.class);

	/* 관리자 메인 페이지 이동 */
	@RequestMapping(value = "/admin", method = RequestMethod.GET)
	public String adminMainGET() throws Exception {

		logger.info("관리자 페이지 이동");
		return "bbs/admin";
	}
	@RequestMapping(value = "/product", method = RequestMethod.GET)
	public String admin() throws Exception {

		return "bbs/product";
	}
	
	@RequestMapping(value = "/pGetAction", method = RequestMethod.POST)
	public String productGet(Locale locale, Model model,ProductVO pvo,RedirectAttributes rttr) throws Exception {
        psrv.insertOne(pvo);
		/* rttr.addFlashAttribute("enroll_result",pvo.getPname()); */
		return "bbs/product";
	}
}
