package com.infinite.ims.controller;

import com.infinite.ims.dao.InsuranceCompanyDao;
import com.infinite.ims.model.InsuranceCompany;

import lombok.Data;
@Data
public class CompanyController{
	
	private InsuranceCompany company;
	
	private InsuranceCompanyDao   companyDao;
	
	private String searchcompanyid;
	

	
	
//	methods
	
//	1.add  company method
	
	public void findCompanyById() {
		company=companyDao.findById(searchcompanyid);
	}
	
	
//	2.show company method
	
	public  String addCompany() {
		
		
	return 	companyDao.addcompanyTest(company);
		
	}
	
	
	
}