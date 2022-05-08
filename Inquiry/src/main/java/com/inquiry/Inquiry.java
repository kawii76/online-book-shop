package com.inquiry;

public class Inquiry {
	
	private int id;
	private String title;
	private String inquiry;
	private String answer;
	public Inquiry(int id, String title, String inquiry, String answer) {
	
		this.id = id;
		this.title = title;
		this.inquiry = inquiry;
		this.answer = answer;
	}
	public int getId() {
		return id;
	}
	public String getTitle() {
		return title;
	}
	public String getInquiry() {
		return inquiry;
	}
	public String getAnswer() {
		return answer;
	}

	
	
}
