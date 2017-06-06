package com.anahitagardens.anahita.daoimpl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.anahitagardens.anahita.dao.SupplierDao;
import com.anahitagardens.anahita.model.Category;
import com.anahitagardens.anahita.model.Supplier;
import com.google.gson.Gson;

@Repository
@EnableTransactionManagement
public class SupplierDaoImpl implements SupplierDao {
 
	@Autowired
	SessionFactory sessionFactory;
	
	@Override
	public String insertSupplier (Supplier sup){
			Session s=sessionFactory.openSession();
			Transaction t=s.getTransaction();
			t.begin();
			s.save(sup);
			t.commit();
			s.close();
			return null;
	}
	
	@Override
	public String updateSupplier(Supplier sup) {
		Session s = sessionFactory.openSession();
		Transaction t = s.getTransaction();
		t.begin();
	    //Supplier sup = (Supplier)s.get(Supplier.class,supId);
		s.update(sup);
		t.commit();
		s.close();
		return null;
	}
	
	@Override
	public String deleteSupplier(String Id) {
		Session s = sessionFactory.openSession();
		Transaction t = s.getTransaction();
		t.begin();
		Supplier sup = (Supplier) s.get(Supplier.class, Id);
		s.delete(sup);
		t.commit();
		s.close();
		return null;
	}
	
	
	@Override
	public String viewSupplier(){
		Session s = sessionFactory.openSession();
		Transaction t = s.getTransaction();
		t.begin();
		//get supplier table as list and save it in list object.it is in Gson Format
		List<Supplier>supList = s.createQuery("from Supplier").list();
		Gson g = new Gson();
		//converty to Json format and store it another variable 
		String supListJson = g.toJson(supList);
		t.commit();
		s.close();
		//return the variable having list in JsonFormat
		return supListJson;		
	}
	
	@Override
	public Supplier viewOneSupplier(String id) {
		Session s = sessionFactory.openSession();		
		Transaction t = s.getTransaction();
		t.begin();
		Supplier sup = (Supplier) s.get(Supplier.class, id);
		t.commit();
		s.close();
		Gson g = new Gson();
		String oneSupplierJson = g.toJson(sup);
		return  sup;
	}
	
	@Override
	@Transactional
	public List<Supplier> ListSupplier() {
		// TODO Auto-generated method stub
		List<Supplier> list = sessionFactory.getCurrentSession().createQuery("from Supplier sup").list();
		return list;
	}

}
