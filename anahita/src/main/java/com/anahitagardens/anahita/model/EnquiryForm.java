package com.anahitagardens.anahita.model;

import java.util.Calendar;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;
import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;

@Entity
public class EnquiryForm {
	
		@Id 
		@GeneratedValue(strategy=GenerationType.AUTO)
			public int enId;
		@NotEmpty  
		@Size(max = 25)
			String enFname;
		@NotEmpty  
		@Size(max = 25)
			String enLname;
		@NotEmpty 
		@Email
			String enEmail;
		@NotEmpty
		@Pattern(regexp="^[0-9-()+]+$",message="This field can contain only numbers.")
			String enPhno;
		@NotEmpty  
		@Size(max = 50)
			String enSub;
		@NotEmpty 
		@Size(max = 500)
			String enMsg;
		@Temporal(TemporalType.TIMESTAMP)
		@Column(name="Date_of_Creation")
		private Date createDate;

		public Date getCreateDate() {
			return createDate;
		}
		public void setCreateDate(Date createDate) {
			this.createDate = createDate;
		}
		public int getEnId() {
			return enId;
		}
		public void setEnId(int enId) {
			this.enId = enId;
		}
		public String getEnFname() {
			return enFname;
		}
		public void setEnFname(String enFname) {
			this.enFname = enFname;
		}
		public String getEnLname() {
			return enLname;
		}
		public void setEnLname(String enLname) {
			this.enLname = enLname;
		}
		public String getEnEmail() {
			return enEmail;
		}
		public void setEnEmail(String enEmail) {
			this.enEmail = enEmail;
		}
		public String getEnPhno() {
			return enPhno;
		}
		public void setEnPhno(String enPhno) {
			this.enPhno = enPhno;
		}
		public String getEnSub() {
			return enSub;
		}
		public void setEnSub(String enSub) {
			this.enSub = enSub;
		}
		public String getEnMsg() {
			return enMsg;
		}
		public void setEnMsg(String enMsg) {
			this.enMsg = enMsg;
		}
		


}
