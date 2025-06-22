package com.infinte.ims.test;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import com.infinite.ims.dao.InsurancePlanDao;
import com.infinite.ims.daoImpl.InsurancePlanDaoImpl;
import com.infinite.ims.model.InsuranceCompany;
import com.infinite.ims.model.InsurancePlan;

public class InsuranceplaneTest {
	
	public static void main(String[] args) {
		// Format for parsing dates
		
     InsurancePlanDao insurancePlanDao=new InsurancePlanDaoImpl();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		 InsuranceCompany company = new InsuranceCompany();
	        company.setCompanyId("C101");
	        
//	        InsuranceCompany company2=new InsuranceCompany();
//	        
//	        company.setCompanyId();
//	        
//	        company.setCompanyName("HealthSure Ltd.");
	        
	        

	        // Create InsurancePlan object
	        InsurancePlan plan = new InsurancePlan();
	        plan.setPlanId("P001");
	        plan.setInsuranceCompany(company);
	        plan.setPlanName("HealthPlus Basic");
	        plan.setPlanType("SELF");
	        plan.setMinEntryAge(18);
	        plan.setMaxEntryAge(65);
	        plan.setDescription("Basic health coverage for individuals");
	        plan.setAvailableCoverAmounts("1L,2L,5L");
	        plan.setWaitingPeriod("3 Months");
	     // Set Dates using java.util.Date
	        Date createdOn;
			try {
				createdOn = sdf.parse("2025-06-01");
				plan.setCreatedOn(createdOn);
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	        Date expireOn;
			try {
				expireOn = sdf.parse("2099-12-31");
				plan.setExpireDate(expireOn);
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}


	        plan.setPeriodicDiseases("YES");
	        
	     System.out.println(   insurancePlanDao.addInsurancePlan(plan));

	}

}
