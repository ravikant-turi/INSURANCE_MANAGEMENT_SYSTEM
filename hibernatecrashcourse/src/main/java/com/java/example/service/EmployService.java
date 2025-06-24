package com.java.example.service;

import java.util.List;

import com.java.example.model.Employ;

public interface EmployService {
	
	String addEmploy(Employ employ);
	
	String deleteEmploy(int empid);
	
	String updateEmploy(int empid);
	
	Employ searchEmploy(int empid);
	
	List<Employ> allEmploy();
	
	

}
