/*
 * Copyright (c) 2015 www.avivacanada.com. All rights reserved.
 * Creation Date : 7-May-2015
 */
package ca.spring.mvc.agile.qa;

import ca.spring.mvc.agile.qa.impl.EnglishMessage;

public class NonSpringUseMessage {

	private Message message;
	
	public NonSpringUseMessage(){
		this.message = new EnglishMessage();
	}
	
	/**
	 * Instantiates a new UseMessage.
	 *
	 * @param message
	 *            the message
	 */
	public NonSpringUseMessage(Message message){
		this.message = message;
	}
	
	/**
	 * Execute sayHello
	 * @return String
	 */
	public String greeting(){
		return message.sayHello();
	}
}
