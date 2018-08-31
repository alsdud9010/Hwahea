package kr.spring.shop.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import kr.spring.shop.dao.ProductMapper;

@Service("productService")
public class ProductServiceImpl implements ProductService{
	
	@Resource
	private ProductMapper productMapper;
}
