package com.anahitagardens.anahita.daoimpl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.anahitagardens.anahita.dao.CategoryDao;
import com.anahitagardens.anahita.model.Category;
import com.google.gson.Gson;

@Repository
@EnableTransactionManagement
public class CategoryDaoImpl implements CategoryDao {

	@Autowired
	SessionFactory sessionFactory;

	@Override
	public String insertCategory(Category cat) {
		Session s = sessionFactory.openSession();
		Transaction t = s.getTransaction();
		t.begin();
		s.save(cat);
		t.commit();
		s.close();
		return null;

	}

	@Override
	public String updateCategory(Category cat) {
		Session s = sessionFactory.openSession();
		Transaction t = s.getTransaction();
		t.begin();
	    //Category cat = (Category)s.get(Category.class,catId);
		s.update(cat);
		t.commit();
		s.close();
		return null;

	}

	@Override
	public String deleteCategory(String Id) {
		Session s = sessionFactory.openSession();
		Transaction t = s.getTransaction();
		t.begin();
		Category cat = (Category) s.get(Category.class, Id);
		s.delete(cat);
		t.commit();
		s.close();
		return null;

	}
	
	@Override
	public String viewCategory(){
		Session s = sessionFactory.openSession();
		Transaction t = s.getTransaction();
		t.begin();
		//get category table as list and save it in list object.it is in Gson Format
		List<Category>catList = s.createQuery("from Category").list();
		Gson g = new Gson();
		//converty to Json format and store it another variable 
		String catListJson = g.toJson(catList);
		t.commit();
		s.close();
		//return the variable having list in JsonFormat
		return catListJson;
		
	}
	
	@Override
	public Category viewOneCategory(String cat_id) {
		Session s = sessionFactory.openSession();		
		Transaction t = s.getTransaction();
		t.begin();
		Category cat = (Category) s.get(Category.class, cat_id);
		t.commit();
		s.close();
		//Gson g = new Gson();
		//String oneCategoryJson = g.toJson(cat);
		return  cat;
	}
	@Override
	@Transactional
	public List<Category> ListCategory() {
		// TODO Auto-generated method stub
		List<Category> list = sessionFactory.getCurrentSession().createQuery("from Category cat").list();
		return list;
	}

}


