package com.anahitagardens.anahita.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.anahitagardens.anahita.model.Category;
import com.anahitagardens.anahita.model.User;

@Repository
@Service
public interface CategoryDao {
    
	@Autowired
	public String insertCategory (Category cat);
	public String updateCategory (Category cat);
	public String deleteCategory(String Id);
	public String viewCategory ();
	public Category viewOneCategory(String id);
	public List<Category> ListCategory();
	

}
