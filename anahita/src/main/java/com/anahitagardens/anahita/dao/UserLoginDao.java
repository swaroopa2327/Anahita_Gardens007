package com.anahitagardens.anahita.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.anahitagardens.anahita.model.UserLogin;

@Repository
@Service
public interface UserLoginDao {
	
	@Autowired
	public String insertLoginDetails (UserLogin ul);
	
	//public List<User> ListUser();


}
