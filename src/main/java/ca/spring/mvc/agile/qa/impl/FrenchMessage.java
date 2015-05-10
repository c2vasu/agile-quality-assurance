/*
 * Copyright (c) 2015 www.avivacanada.com. All rights reserved.
 * Creation Date : 7-May-2015
 */
package ca.spring.mvc.agile.qa.impl;

import ca.spring.mvc.agile.qa.Message;

/**
 * The Class FrenchMessage.
 *
 * @author Srinivas Rao
 */
public class FrenchMessage implements Message{

	/* 
	 * This is French message
	 * @see ca.spring.mvc.agile.qa.Message#sayHello()
	 */
	@Override
	public String sayHello() {
		return "Bonjour le monde!";
	}

}
