package com.anahitagardens.anahita.model;

import javax.persistence.Entity;
import javax.persistence.Id;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
public class Category {
    @NotEmpty @Id
	public String catId;
	@NotEmpty  
	String catName;
	
	public String getCatId() {
		return catId;
	}
	public void setCatId(String catId) {
		this.catId = catId;
	}
	public String getCatName() {
		return catName;
	}
	public void setCatName(String catName) {
		this.catName = catName;
	}
	

}
