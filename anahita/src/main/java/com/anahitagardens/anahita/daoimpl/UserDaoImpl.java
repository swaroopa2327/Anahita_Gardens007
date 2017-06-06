package com.anahitagardens.anahita.daoimpl;


import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.anahitagardens.anahita.dao.UserDao;
import com.anahitagardens.anahita.model.Product;
import com.anahitagardens.anahita.model.User;
import com.google.gson.Gson;

@Repository
@EnableTransactionManagement
public class UserDaoImpl implements UserDao {

	@Autowired
	SessionFactory sessionFactory;
	
	@Override
	public String insertUser(User u) {
			Session s=sessionFactory.openSession();
			Transaction t=s.getTransaction();
			t.begin();
			s.save(u);
			t.commit();
			s.close();
			return null;
	}
	@Override
	public String viewUsers() {
		
		Session s = sessionFactory.openSession();
		Transaction t = s.getTransaction();
		t.begin();
		List<User> us = s.createQuery("from User").list();
		Gson g = new Gson();
		String s1 = g.toJson(us);
		t.commit();
		s.close();
		return s1;
	}
	
	

	@Override
	public User viewOneUser(String user_name) {
		Session sc = sessionFactory.openSession();
		Transaction t = sc.getTransaction();
		t.begin();
		User us=(User)sc.get(User.class,user_name);
		t.commit();
		sc.close();
		return us;
	}

	
	
	
	
	
	
	
	@Override
	@Transactional
	public List<User> ListUser() {
		// TODO Auto-generated method stub
		List<User> list = sessionFactory.getCurrentSession().createQuery("from User u").list();
		return list;
	}
	
	

}



