package com.icss.dao;

import java.util.List;

import com.icss.entity.Product;

public interface ProductDao {
	 public List<Product> showProduct(Product product);
	 public  List<Product> showProductAll();
	
}
