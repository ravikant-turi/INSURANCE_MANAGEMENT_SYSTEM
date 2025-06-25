package com.infinite.ims.dao;

import java.util.List;

import com.infinite.ims.model.InsuranceCompany;

public interface InsuranceCompanyDao {
	
	//add company
	
    String addCompany(InsuranceCompany company);
    public String addcompanyTest(InsuranceCompany company) ;
    
    //searchByID
    
    InsuranceCompany findById(String companyId);
    
    //searchAllCompany
    
    List<InsuranceCompany> findAll();
    
    //delete company by Id
    
    void delete(InsuranceCompany company);
    
    //update company by id
    
    String updateCompany(int companyId);
    
    
    
}