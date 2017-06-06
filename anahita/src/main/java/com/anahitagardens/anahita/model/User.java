package com.anahitagardens.anahita.model;



import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.Transient;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;

@Entity

public class User {
		@NotEmpty (message ="This column cannot be empty")
		@Size(max = 25,message ="First name cannot exceed 25 characters")
	String userFname;
		@NotEmpty (message ="This column cannot be empty")
		@Size(max = 25 ,message ="Last name cannot exceed 25 characters")
	String userLname;
		@NotEmpty (message ="This column cannot be empty")
	String userDob;
		@NotEmpty (message ="This column cannot be empty")
		@Email
	String userEmail;
		@NotEmpty (message ="This column cannot be empty")
		@Pattern(regexp="^[0-9-()+]+$",message="This field can contain only numbers.")
	String userPhno;
		@NotEmpty (message ="This column cannot be empty")
		@Size(max = 100,message ="Address cannot exceed 100 characters")
	String userAddress;
		@Id
		@NotEmpty
	    @Pattern(regexp="^[a-zA-Z0-9_]{6,10}$",message="Username length should be between 6-10 characters")
	String username;
		@NotEmpty
		@Size(min=6, max=10,message="password length should be between 6-10 characters")
	String userpswd;
		@NotEmpty
	String confirmPswd;
		@NotEmpty
    String urole = "ROLE_USER";
		String Status="True";
		public String getStatus() {
			return Status;
		}

		public void setStatus(String status) {
			Status = status;
		}


	public String getUrole() {
			return urole;
		}

		public void setUrole(String urole) {
			this.urole = urole;
		}



	public String getUserFname() {
		return userFname;
	}

	public void setUserFname(String userFname) {
		this.userFname = userFname;
	}

	public String getUserLname() {
		return userLname;
	}

	public void setUserLname(String userLname) {
		this.userLname = userLname;
	}

	public String getUserDob() {
		return userDob;
	}

	public void setUserDob(String userDob) {
		this.userDob = userDob;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public String getUserPhno() {
		return userPhno;
	}

	public void setUserPhno(String userPhno) {
		this.userPhno = userPhno;
	}

	public String getUserAddress() {
		return userAddress;
	}

	public void setUserAddress(String userAddress) {
		this.userAddress = userAddress;
	}

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

	public String getConfirmPswd() {
		return confirmPswd;
	}

	public void setConfirmPswd(String confirmPswd) {
		this.confirmPswd = confirmPswd;
	}

	
	

}
