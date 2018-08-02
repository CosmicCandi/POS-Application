package com.fdmgroup.pos.classes;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

public class Basket {

	private List<LineItem> lineItems;
	private BigDecimal subtotal;
	
	public final List<LineItem> getLineItems() {
		return lineItems;
	}

	public Basket() {
		lineItems = new ArrayList<>();
		subtotal = new BigDecimal(0);
	}

	public void removeLineItem(LineItem lineItem) {
		lineItems.remove(lineItem);
		BigDecimal subtractPrice = new BigDecimal(lineItem.getQuantity());
		subtractPrice.multiply(lineItem.getProduct().getPrice());
		subtotal.subtract(subtractPrice);
		return;
	}
	
	public void addLineItem(LineItem lineItem) {
		lineItems.add(lineItem);
		BigDecimal addPrice = new BigDecimal(lineItem.getQuantity());
		addPrice.multiply(lineItem.getProduct().getPrice());
		subtotal.add(addPrice);
		
		return;
	}

	public BigDecimal getSubtotal() {
		return subtotal;
	}
}
