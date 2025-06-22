package com.infinite.ims.dao;

import java.util.List;

import com.infinite.ims.model.InsuranceCompany;

public interface InsuranceCompanyDao {
	
    String addCompany(InsuranceCompany company);
    
    InsuranceCompany findById(String companyId);
    
    List<InsuranceCompany> findAll();
    
    void delete(InsuranceCompany company);
    
    
    public String addcompanyTest(InsuranceCompany company) ;
    
}