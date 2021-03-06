package com.javalec.ascent.dto;

public class DDtoP {
	String productCode;
	String productName;
	int productPrice;
	String productSize;
	String productImages;
	String category_categoryCode;
	String productBrand;
	
	public DDtoP() {
		
	}

	public DDtoP(String productCode, String productName, int productPrice, String productSize, String productImages,
			String category_categoryCode, String productBrand) {
		super();
		this.productCode = productCode;
		this.productName = productName;
		this.productPrice = productPrice;
		this.productSize = productSize;
		this.productImages = productImages;
		this.category_categoryCode = category_categoryCode;
		this.productBrand = productBrand;
	}

	public String getProductCode() {
		return productCode;
	}

	public void setProductCode(String productCode) {
		this.productCode = productCode;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public int getProductPrice() {
		return productPrice;
	}

	public void setProductPrice(int productPrice) {
		this.productPrice = productPrice;
	}

	public String getProductSize() {
		return productSize;
	}

	public void setProductSize(String productSize) {
		this.productSize = productSize;
	}

	public String getProductImages() {
		return productImages;
	}

	public void setProductImages(String productImages) {
		this.productImages = productImages;
	}

	public String getCategory_categoryCode() {
		return category_categoryCode;
	}

	public void setCategory_categoryCode(String category_categoryCode) {
		this.category_categoryCode = category_categoryCode;
	}

	public String getProductBrand() {
		return productBrand;
	}

	public void setProductBrand(String productBrand) {
		this.productBrand = productBrand;
	}
	
	
}
