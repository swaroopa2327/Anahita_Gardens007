package com.anahitagardens.anahita.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.anahitagardens.anahita.model.Category;
import com.anahitagardens.anahita.model.Product;

@Repository
@Service
public interface ProductDao {

		@Autowired
		public String insertProduct (Product prod);
		public String updateProduct(String prod_id,Product prod);
		public String deleteProduct(String id);
		public String viewProduct();
		//public String viewProductByCategory();
		public Product viewOneProduct(String prod_id);
		
		
		
		
}


