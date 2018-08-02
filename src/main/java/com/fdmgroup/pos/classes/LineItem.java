package com.fdmgroup.pos.classes;

public class LineItem {
	private Product product;
	private int quantity;

	public final Product getProduct() {
		return product;
	}

	public final void setProduct(Product product) {
		this.product = product;
	}

	public final int getQuantity() {
		return quantity;
	}

	public final void setQuantity(int quantity) {
		this.quantity = quantity;
	}
}
