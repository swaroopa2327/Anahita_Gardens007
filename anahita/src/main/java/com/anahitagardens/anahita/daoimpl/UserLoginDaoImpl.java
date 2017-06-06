package com.anahitagardens.anahita.daoimpl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.anahitagardens.anahita.dao.UserLoginDao;
import com.anahitagardens.anahita.model.User;
import com.anahitagardens.anahita.model.UserLogin;

@Repository
@EnableTransactionManagement
public class UserLoginDaoImpl implements UserLoginDao {

	@Autowired
	SessionFactory sessionFactory;
	
	@Override
	public String insertLoginDetails (UserLogin ul)
	{
		Session s=sessionFactory.openSession();
		Transaction t=s.getTransaction();
		t.begin();
		s.save(ul);
		t.commit();
		s.close();
		return null;
	}
	
	
	
	
	
	
	//@Override
	//@Transactional
	//public List<User> ListUser() 
	//{
		// TODO Auto-generated method stub
		//List<User> list = sessionFactory.getCurrentSession().createQuery("from User u").list();
		//return list;
	//}
	
	
}
