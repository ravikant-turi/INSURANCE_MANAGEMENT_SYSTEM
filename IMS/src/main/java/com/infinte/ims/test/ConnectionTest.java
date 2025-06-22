package com.infinte.ims.test;


import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.infinite.ims.util.HibernateUtil;

public class ConnectionTest {
	
	public static void main(String[] args) {
		
		SessionFactory sf=HibernateUtil.getSessionFactory();
		
		Session session=sf.openSession();
		
		Transaction trans=session.beginTransaction();
		
		System.out.println("connection is : "+ session);
		
		
		trans.commit();
		
		session.close();
		
		
				
				
		
		
	}

}
