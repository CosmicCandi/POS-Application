package com.fdmgroup.pos.classes;

import java.math.BigDecimal;
import java.math.RoundingMode;
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
		subtractPrice = subtractPrice.multiply(lineItem.getProduct().getPrice());
		subtotal = subtotal.subtract(subtractPrice);
		return;
	}
	
	public void addLineItem(LineItem lineItem) {
		if(!findDuplicate(lineItem)) {
			lineItems.add(lineItem);
			BigDecimal addPrice = new BigDecimal(lineItem.getQuantity());
			addPrice = addPrice.multiply(lineItem.getProduct().getPrice());
			subtotal = subtotal.add(addPrice);
		}
		
		return;
	}

	public BigDecimal getSubtotal() {
		return subtotal.setScale(2, RoundingMode.HALF_UP);
	}
	
	private boolean findDuplicate(LineItem newLineItem) {
		for(LineItem li : lineItems) {
			if (li.getProduct().getUniqueProductCode() == newLineItem.getProduct().getUniqueProductCode()) {
				int newQuantity = li.getQuantity();
				newQuantity += newLineItem.getQuantity();
				
				li.setQuantity(newQuantity);
				
				BigDecimal addPrice = new BigDecimal(newLineItem.getQuantity());
				addPrice = addPrice.multiply(newLineItem.getProduct().getPrice());
				subtotal = subtotal.add(addPrice);
				return true;
			}
		}
		
		return false;
	}
}
