package com.infinte.ims.test;

import com.infinite.ims.dao.InsuranceCompanyDao;
import com.infinite.ims.daoImpl.InsuranceCompanyDaoImpl;
import com.infinite.ims.model.InsuranceCompany;

public class CompanyTest {
	
	
	public static void main(String[] args) {
		
		
		InsuranceCompany company = new InsuranceCompany();

//		company.setCompanyId("COM001");
//		company.setName("HDFC Ergo");
//		company.setLogoUrl("https://example.com/logo.png");
//		company.setHeadOffice("Mumbai");
//		company.setContactEmail("support@hdfcergo.com");
//		company.setContactPhone("1800-123-4567");
//		
//		
		InsuranceCompanyDao dao=new InsuranceCompanyDaoImpl();
		
	      System.out.println(	dao.findById("COM001"));
//		
		dao.addcompanyTest(company);
	
	
		
		
		
		
		
		
		
		
		
	}

}
