package com.anahitagardens.anahita.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.anahitagardens.anahita.model.EnquiryForm;

@Repository
@Service
public interface EnquiryDao {
	@Autowired
	public String insertEnquiry (EnquiryForm ef);


}
