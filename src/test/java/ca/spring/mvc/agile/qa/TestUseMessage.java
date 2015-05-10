/*
 * Copyright (c) 2015 www.avivacanada.com. All rights reserved.
 * Creation Date : 7-May-2015
 */
package ca.spring.mvc.agile.qa;

import org.junit.Assert;
import org.junit.Test;

import ca.spring.mvc.agile.qa.impl.FrenchMessage;

public class TestUseMessage {

	private Message message;
	
		
	@Test
	public void testHelloWorld1(){
		NonSpringUseMessage message = new NonSpringUseMessage();
		Assert.assertEquals("Hello World!", message.greeting());
		
		System.out.println(message.greeting());
	}
	
	@Test
	public void testHelloWorld2(){
		FrenchMessage frenchMessage = new FrenchMessage();
		NonSpringUseMessage message = new NonSpringUseMessage(frenchMessage);		
		Assert.assertEquals("Bonjour le monde!", message.greeting());
		
		System.out.println(message.greeting());
	}
	
	public static void main(String args[]){
		System.out.println("I on standby!!");
	}
}
