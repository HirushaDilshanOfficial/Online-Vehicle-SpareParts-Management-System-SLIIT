package com.spareparts;

public class partsModel {

	private int id;
	private String name;
	private String qty;
	private String price;
	private String description;
	
	public partsModel(int id, String name, String qty, String price, String description) {
		super();
		this.id = id;
		this.name = name;
		this.qty = qty;
		this.price = price;
		this.description = description;
	}

	public int getId() {
		return id;
	}

	public String getName() {
		return name;
	}

	public String getQty() {
		return qty;
	}

	public String getPrice() {
		return price;
	}

	public String getDescription() {
		return description;
	}

	public void setId(int id) {
		this.id = id;
	}

	public void setName(String name) {
		this.name = name;
	}

	public void setQty(String qty) {
		this.qty = qty;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public void setDescription(String description) {
		this.description = description;
	}
	
	
	
}
