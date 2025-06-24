package com.java.example;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import com.example.util.HibernateUtil;
import com.java.example.model.Employ;

public class Maintest {
	
	public static void main(String[] args) {
		// Session 1
//		Session session1 = HibernateUtil.getSessionFactory().getCurrentSession();
		
		SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
		// Enable cache stats
        sessionFactory.getStatistics().setStatisticsEnabled(true);

		Session session1=sessionFactory.openSession();
		Employ emp1 = session1.get(Employ.class, 1); // DB hit
		session1.close();

		// Session 2
		Session session2 = sessionFactory.openSession();
		Employ emp2 = session2.get(Employ.class, 1); // Should come from 2nd level cache
		session2.close();
		
		Session session3=sessionFactory.openSession();
		Employ emp3 = session3.get(Employ.class, 1); // DB hit
		session3.close();
		
		// Print cache stats
        System.out.println("2nd Level Cache H   it Count: " + sessionFactory.getStatistics().getSecondLevelCacheHitCount());
    }

}
