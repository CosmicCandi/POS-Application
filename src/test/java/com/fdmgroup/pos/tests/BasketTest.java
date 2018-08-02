package com.fdmgroup.pos.tests;

import static org.junit.Assert.assertEquals;

import java.math.BigDecimal;
import java.math.RoundingMode;
import java.util.List;

import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ConfigurableApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.fdmgroup.pos.classes.Basket;
import com.fdmgroup.pos.classes.LineItem;
import com.fdmgroup.pos.classes.Trikke;

public class BasketTest {

	private ApplicationContext context;
	private Basket basket;
	private LineItem lineItem;
	private LineItem lineItem2;
	private LineItem lineItem3;
	private Trikke newTrikke;
	private Trikke trikke2;
	
	
	@BeforeClass
	public static void setUpBeforeClass() throws Exception {
	}

	@AfterClass
	public static void tearDownAfterClass() throws Exception {
	}

	@Before
	public void setUp() throws Exception {
		context = new ClassPathXmlApplicationContext("springContext.xml");
		basket = (Basket)context.getBean("basket");
		lineItem = (LineItem)context.getBean("lineItem");
		lineItem2 = (LineItem)context.getBean("lineItem");
		lineItem3 = (LineItem)context.getBean("lineItem");
		
		newTrikke = (Trikke)context.getBean("trikke");
		newTrikke.setPrice(new BigDecimal(9.99));
		newTrikke.setUniqueProductCode(1);
		
		trikke2 = (Trikke)context.getBean("trikke");
		trikke2.setName("pickle");
		trikke2.setPrice(new BigDecimal(100.23));
		trikke2.setUniqueProductCode(2);
		
		lineItem.setProduct(newTrikke);
		lineItem.setQuantity(10);
		
		lineItem2.setProduct(trikke2);
		lineItem2.setQuantity(10);
		
		lineItem3.setProduct(newTrikke);
		lineItem3.setQuantity(5);
	}

	@After
	public void tearDown() throws Exception {
		((ConfigurableApplicationContext)context).close();
	}

	@Test
	public void test_addLineItem_WhenaddLineItemIsCalled_ThenAddPassedLineItemToListInBasket() {
		basket.addLineItem(lineItem);
		List<LineItem> retrievedList = basket.getLineItems();
		
		assertEquals(retrievedList.get(0), lineItem);
	}

	@Test
	public void text_addLineItem_WhenALineItemOfTheSameProductIsAdded_ThenCombineLineItems() {
		basket.addLineItem(lineItem);
		
		BigDecimal finalPrice = new BigDecimal(lineItem.getQuantity());
		finalPrice = finalPrice.multiply(lineItem.getProduct().getPrice());
		assertEquals(finalPrice.setScale(2, RoundingMode.HALF_UP), basket.getSubtotal());
		
		basket.addLineItem(lineItem3);
		
		BigDecimal addPrice = new BigDecimal(lineItem3.getQuantity());
		addPrice = addPrice.multiply(lineItem3.getProduct().getPrice());
		finalPrice = finalPrice.add(addPrice);
		
		
		List<LineItem> retrievedList = basket.getLineItems();
		
		assertEquals(1, retrievedList.size());
		assertEquals(finalPrice.setScale(2, RoundingMode.HALF_UP), basket.getSubtotal());
	}
	
	@Test
	public void test_removeLineItem_WhenremoveLineItemIsCalled_ThenLineItemIsRemovedFromBasket() {
		lineItem.setProduct(newTrikke);
		lineItem.setQuantity(1);
		
		basket.addLineItem(lineItem);
		basket.addLineItem(lineItem2);
		
		basket.removeLineItem(lineItem);
		
		assertEquals(1, basket.getLineItems().size());
		assertEquals(lineItem2, basket.getLineItems().get(0));
	}
	
	@Test
	public void test_calculateSubtotal_WhenLineItemsAreAddedOrRemoved_ThenSubTotalIsUpdated() {
		basket.addLineItem(lineItem);
		BigDecimal currentPrice = new BigDecimal(0);
		BigDecimal addPrice = new BigDecimal(0);
		addPrice = addPrice.add(lineItem.getProduct().getPrice());
		addPrice = addPrice.multiply(new BigDecimal(lineItem.getQuantity()));
		currentPrice = currentPrice.add(addPrice);
		
		assertEquals(currentPrice.setScale(2, RoundingMode.HALF_UP), basket.getSubtotal());
		
		basket.addLineItem(lineItem2);
		
		addPrice = new BigDecimal(lineItem2.getQuantity());
		addPrice = addPrice.multiply(lineItem2.getProduct().getPrice());
		currentPrice = currentPrice.add(addPrice);
		
		assertEquals(currentPrice.setScale(2, RoundingMode.HALF_UP), basket.getSubtotal());
		
		basket.removeLineItem(lineItem);
		
		BigDecimal subtractPrice = new BigDecimal(lineItem.getQuantity());
		subtractPrice = subtractPrice.multiply(lineItem.getProduct().getPrice());
		currentPrice = currentPrice.subtract(subtractPrice);
		
		assertEquals(currentPrice.setScale(2, RoundingMode.HALF_UP), basket.getSubtotal());
	}

}
