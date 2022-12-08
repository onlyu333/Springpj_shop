package com.shop.dao;

import com.shop.vo.ProductVO;

public interface IF_ProductDAO {
	/*상품등록*/
	public void insertOne(ProductVO pvo)throws Exception;
}
