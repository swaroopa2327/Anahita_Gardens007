package com.anahitagardens.anahita.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.anahitagardens.anahita.model.Category;
import com.anahitagardens.anahita.model.Supplier;

@Repository
@Service
public interface SupplierDao {
    
	@Autowired
	public String insertSupplier (Supplier sup);
	public String updateSupplier (Supplier sup);
	public String deleteSupplier(String Id);
	public String viewSupplier ();
	public Supplier	 viewOneSupplier(String id);
	public List<Supplier> ListSupplier();

	

	
	
}
