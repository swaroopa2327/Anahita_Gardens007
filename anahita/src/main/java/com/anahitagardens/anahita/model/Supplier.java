
package com.anahitagardens.anahita.model;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.Pattern;

import org.hibernate.validator.constraints.NotEmpty;
@Entity
public class Supplier {
	@Id  	@NotEmpty
		public String sId;
	@NotEmpty
		String sName;
	@NotEmpty
		String sAddress;
	@NotEmpty
	@Pattern(regexp="^[0-9-()+]+$",message="This field can contain only numbers.")
		String sPhoneNo;
	@NotEmpty
		String sEmail;
	
	
	public String getsId() {
		return sId;
	}
	public void setsId(String sId) {
		this.sId = sId;
	}
	public String getsName() {
		return sName;
	}
	public void setsName(String sName) {
		this.sName = sName;
	}
	public String getsAddress() {
		return sAddress;
	}
	public void setsAddress(String sAddress) {
		this.sAddress = sAddress;
	}
	public String getsPhoneNo() {
		return sPhoneNo;
	}
	public void setsPhoneNo(String sPhoneNo) {
		this.sPhoneNo = sPhoneNo;
	}
	public String getsEmail() {
		return sEmail;
	}
	public void setsEmail(String sEmail) {
		this.sEmail = sEmail;
	}	
	
}