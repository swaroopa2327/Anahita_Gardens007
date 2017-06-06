package com.anahitagardens.anahita.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Transient;

import org.hibernate.validator.constraints.NotEmpty;


@Entity
public class UserLogin { 
	
	@Id
	String userEmail;
	String username;
	@Transient
	String userpswd;
	//String Role="ROLE_USER";
	//String Status="True";
	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getUserpswd() {
		return userpswd;
	}
	public void setUserpswd(String userpswd) {
		this.userpswd = userpswd;
	}
	
	/**public String getRole() {
		return Role;
	}
	public void setRole(String role) {
		Role = role;
	}
	public String getStatus() {
		return Status;
	}
	public void setStatus(String status) {
		Status = status;
	}**/
	
}
	
	
