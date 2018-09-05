package kr.spring.shop.controller;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.spring.shop.service.ProductService;

@Controller
public class ProductController {

	private Logger log = Logger.getLogger(this.getClass());
	private int rowCount = 10;
	private int pageCount = 10;

	@Resource
	private ProductService productService;

	//========= ���θ��
	@RequestMapping(value="/shop/shopProduct.do", method=RequestMethod.GET)
	public String form() {

		return "shopProduct";
	}

	//========= ������ǰ ��
	@RequestMapping("/shop/shopProductView.do")
	public String process() {

		return "shopProductView";
	}

	//========= �ֹ��ϱ�
	@RequestMapping("/shop/orderProduct.do")
	public String processs() {

		return "orderProduct";
	}

	//========= �ֹ��Ϸ�
	@RequestMapping("/shop/orderComplete.do")
	public String processss() {

		return "orderComplete";
	}
}
