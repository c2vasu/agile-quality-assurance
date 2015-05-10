package ca.spring.mvc.agile.qa;

public class SpringUseMessage {

	private Message message;
	
	public void setMessage(Message message){
		this.message = message;
	}
	
	public String greeting(){
		return this.message.sayHello();
	}
}
