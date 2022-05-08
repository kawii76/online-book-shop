package com.bookIT20218126;

public class Book {

	    private int id;
	    private String bookname;
	    private String category;
	    private String author;
	    private String price;
	    private String description;
		
	    
	    public Book(int id, String bookname, String category, String author, String price, String description) {
			
			this.id = id;
			this.bookname = bookname;
			this.category = category;
			this.author = author;
			this.price = price;
			this.description = description;
		}


		public int getId() {
			return id;
		}


		public String getBookname() {
			return bookname;
		}


		public String getCategory() {
			return category;
		}


		public String getAuthor() {
			return author;
		}


		public String getPrice() {
			return price;
		}


		public String getDescription() {
			return description;
		}


		
	    
	
}
