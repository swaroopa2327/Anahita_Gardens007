package com.anahitagardens.anahita.daoimpl;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import com.anahitagardens.anahita.dao.EnquiryDao;
import com.anahitagardens.anahita.model.EnquiryForm;

@Repository
@EnableTransactionManagement
public class EnquiryDaoImpl implements EnquiryDao {

	@Autowired
	SessionFactory sessionFactory;
	
	@Override
	public String insertEnquiry (EnquiryForm ef){
			Session s=sessionFactory.openSession();
			Transaction t=s.getTransaction();
			t.begin();
			s.save(ef);
			t.commit();
			s.close();
			return null;

	}
	
}
