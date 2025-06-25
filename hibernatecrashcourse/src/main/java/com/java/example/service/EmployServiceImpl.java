package com.java.example.service;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.example.util.HibernateUtil;
import com.java.example.model.Employ;

public class EmployServiceImpl implements EmployService {
	
	static SessionFactory sessionFactory;
	static Session session;
	
	static {
		sessionFactory=HibernateUtil.getSessionFactory();
	}

	@Override
	public String addEmploy(Employ employ) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String deleteEmploy(int empid) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String updateEmploy(int empid) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Employ searchEmploy(int empid) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Employ> allEmploy() {
		// TODO Auto-generated method stub
		return null;
	}

}
