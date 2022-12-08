package com.shop.service;

import javax.inject.Inject;
import org.springframework.stereotype.Service;
import com.shop.dao.IF_ProductDAO;
import com.shop.vo.ProductVO;

@Service
public class ProductServiceImpl implements IF_ProductService {

	@Inject 
	private IF_ProductDAO pdao;
	
	@Override
	public void insertOne(ProductVO pvo) throws Exception {
		// TODO Auto-generated method stub
		pdao.insertOne(pvo);
	}
}
