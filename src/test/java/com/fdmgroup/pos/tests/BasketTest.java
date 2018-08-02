package com.fdmgroup.pos.tests;

import static org.junit.Assert.*;

import java.math.BigDecimal;
import java.util.List;

import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ConfigurableApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.fdmgroup.pos.classes.Basket;
import com.fdmgroup.pos.classes.LineItem;
import com.fdmgroup.pos.classes.Trikke;
import com.fdmgroup.pos.config.PosConfig;

public class BasketTest {

	private ApplicationContext context;
	private Basket basket;
	private LineItem lineItem;
	private LineItem lineItem2;
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
		context = new AnnotationConfigApplicationContext(PosConfig.class);
		basket = (Basket)context.getBean("basket");
		lineItem = (LineItem)context.getBean("lineItem");
		lineItem2 = (LineItem)context.getBean("lineItem");
		
		newTrikke = (Trikke)context.getBean("trikke");
		newTrikke.setPrice(new BigDecimal(9.99));
		
		trikke2 = (Trikke)context.getBean("trikke");
		trikke2.setName("pickle");
		trikke2.setPrice(new BigDecimal(100.23));
		
		lineItem.setProduct(newTrikke);
		lineItem.setQuantity(10);
		
		
		lineItem2.setProduct(trikke2);
		lineItem2.setQuantity(10);
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
		addPrice.add(lineItem.getProduct().getPrice());
		addPrice.multiply(new BigDecimal(lineItem.getQuantity()));
		currentPrice.add(addPrice);
		
		assertEquals(currentPrice, basket.getSubtotal());
		
		basket.addLineItem(lineItem2);
		
		addPrice = new BigDecimal(lineItem2.getQuantity());
		addPrice.multiply(lineItem2.getProduct().getPrice());
		currentPrice.add(addPrice);
		
		assertEquals(currentPrice, basket.getSubtotal());
		
		BigDecimal subtractPrice = new BigDecimal(lineItem.getQuantity());
		subtractPrice.multiply(lineItem.getProduct().getPrice());
		currentPrice.subtract(subtractPrice);
		
		assertEquals(currentPrice, basket.getSubtotal());
	}
}
