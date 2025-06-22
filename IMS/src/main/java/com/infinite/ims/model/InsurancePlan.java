package com.infinite.ims.model;



import java.util.Date;

import lombok.Data;
@Data
public class InsurancePlan {
    public String planId;
    public InsuranceCompany insuranceCompany; // FK (companyId)

    public String planName;
    public String planType; // SELF, FAMILY, etc.

    public int minEntryAge = 18;
    public int maxEntryAge = 65;

    public String description;
    public String availableCoverAmounts;
    public String waitingPeriod;

    public Date createdOn = java.sql.Date.valueOf("2025-06-01");
    public Date expireDate = java.sql.Date.valueOf("2099-12-31");
    public String periodicDiseases; // YES or NO
    
    
    
    
	


    
    
    
}
