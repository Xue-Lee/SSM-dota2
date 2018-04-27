package com.icss.entity;

import java.sql.Timestamp;

public class Product {
	private Integer id;
	private String productName;
	private Double productPrice;
	private Integer count;
	private String productLogo;
	private String productCity;
	private Integer classId;
	private Integer viewCount;
	private String productDesc;
	private Integer SalesVolume;
	private Timestamp AddedTime;
	private String className;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public Double getProductPrice() {
		return productPrice;
	}
	public void setProductPrice(Double productPrice) {
		this.productPrice = productPrice;
	}
	public Integer getCount() {
		return count;
	}
	public void setCount(Integer count) {
		this.count = count;
	}
	public String getProductLogo() {
		return productLogo;
	}
	public void setProductLogo(String productLogo) {
		this.productLogo = productLogo;
	}
	public String getProductCity() {
		return productCity;
	}
	public void setProductCity(String productCity) {
		this.productCity = productCity;
	}
	public Integer getClassId() {
		return classId;
	}
	public void setClassId(Integer classId) {
		this.classId = classId;
	}
	public Integer getViewCount() {
		return viewCount;
	}
	public void setViewCount(Integer viewCount) {
		this.viewCount = viewCount;
	}
	public String getProductDesc() {
		return productDesc;
	}
	public void setProductDesc(String productDesc) {
		this.productDesc = productDesc;
	}
	public Integer getSalesVolume() {
		return SalesVolume;
	}
	public void setSalesVolume(Integer salesVolume) {
		SalesVolume = salesVolume;
	}
	public Timestamp getAddedTime() {
		return AddedTime;
	}
	public void setAddedTime(Timestamp addedTime) {
		AddedTime = addedTime;
	}
	public String getClassName() {
		return className;
	}
	public void setClassName(String className) {
		this.className = className;
	}

}
