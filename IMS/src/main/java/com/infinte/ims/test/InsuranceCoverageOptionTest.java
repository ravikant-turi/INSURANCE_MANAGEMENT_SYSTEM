package com.infinte.ims.test;

import com.infinite.ims.dao.InsuranceCoverageOptionDao;
import com.infinite.ims.daoImpl.InsuranceCoverageOptionDaoImpl;

public class InsuranceCoverageOptionTest {
	public static void main(String[] args) {
		
		InsuranceCoverageOptionDao doa=new InsuranceCoverageOptionDaoImpl();
		
		doa.showAllInsuranceCoverageOption().forEach(System.out::println);
		
	    System.out.println(doa.searchInsuranceCoverageOptionById("COV117"));
	}

}
