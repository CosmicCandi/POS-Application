package com.fdmgroup.pos.classes;

import java.math.BigDecimal;

public abstract class Product {
	private String name;
	private int uniqueProductCode;
	private BigDecimal price;
	private String description;

	public final String getName() {
		return name;
	}

	public final void setName(String name) {
		this.name = name;
	}

	public final int getUniqueProductCode() {
		return uniqueProductCode;
	}

	public final void setUniqueProductCode(int uniqueProductCode) {
		this.uniqueProductCode = uniqueProductCode;
	}

	public final BigDecimal getPrice() {
		return price;
	}

	public final void setPrice(BigDecimal price) {
		this.price = price;
	}

	public final String getDescription() {
		return description;
	}

	public final void setDescription(String description) {
		this.description = description;
	}
}
