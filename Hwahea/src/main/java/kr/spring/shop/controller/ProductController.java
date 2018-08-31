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

	//========= 碱俏格废
	@RequestMapping(value="/shop/shopProduct.do", method=RequestMethod.GET)
	public String form() {

		return "shopProduct";
	}

	//========= 碱俏力前 惑技
	@RequestMapping("/shop/shopProductView.do")
	public String process() {

		return "shopProductView";
	}
}
