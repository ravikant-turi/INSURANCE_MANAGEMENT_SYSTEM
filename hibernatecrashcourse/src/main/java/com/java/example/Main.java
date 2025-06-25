package com.java.example;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cache.ehcache.internal.EhcacheRegionFactory;
import org.hibernate.cfg.Configuration;



public class Main {
	public static void main(String[] args) {
		
		// Build SessionFactory from hibernate.cfg.xml
        SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();

        // Open a session
        Session session = sessionFactory.openSession();

        // Check if session is connected
        if (session.isConnected()) {
            System.out.println("Hibernate is connected to MySQL successfully!");
        } else {
            System.out.println("Failed to connect Hibernate with MySQL.");
        }

        // Close session and SessionFactory
        session.close();
        sessionFactory.close();	}
	
	
//EhcacheRegionFactory
}
