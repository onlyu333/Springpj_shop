package com.shop.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.shop.vo.ProductVO;

@Repository
public class ProductDAOImpl implements IF_ProductDAO{
	
	private static String mapperQuery= "com.shop.dao.IF_ProductDAO";
	 @Inject
	   private SqlSession sqlSession;

	@Override
	public void insertOne(ProductVO pvo) throws Exception {
		// TODO Auto-generated method stub
		 sqlSession.insert(mapperQuery+".insertOne",pvo);
	}


}
