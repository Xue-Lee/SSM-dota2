package com.icss.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.icss.dao.ProductDao;
import com.icss.entity.Product;

@Controller
public class productController {
	@Autowired
	private ProductDao productDao;

	@RequestMapping("showProduct")
	public String showProduct(HttpServletRequest request,Product product) {
		List<Product> listProduct = productDao.showProduct(product);
		for (Product product2 : listProduct) {
			product = product2;
		}
		request.setAttribute("className", product.getClassName());
		request.setAttribute("listProduct", listProduct);
		System.out.println("className---------------------"+product.getClassName());
		return "showProduct";
	}
	@RequestMapping("showProductAll")
	public String showProductAll(HttpServletRequest request) {
		List<Product> listProduct = productDao.showProductAll();
		request.setAttribute("listProduct", listProduct);
		return "showProduct";
	}
	
}
