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
    
    
    
    
	@Override
	public String toString() {
		return "InsurancePlan [planId=" + planId + ", insuranceCompany=" + insuranceCompany + ", planName=" + planName
				+ ", planType=" + planType + ", minEntryAge=" + minEntryAge + ", maxEntryAge=" + maxEntryAge
				+ ", description=" + description + ", availableCoverAmounts=" + availableCoverAmounts
				+ ", waitingPeriod=" + waitingPeriod + ", createdOn=" + createdOn + ", expireDate=" + expireDate
				+ ", periodicDiseases=" + periodicDiseases + "]";
	}




	public InsurancePlan(String planId, InsuranceCompany insuranceCompany, String planName, String planType,
			int minEntryAge, int maxEntryAge, String description, String availableCoverAmounts, String waitingPeriod,
			Date createdOn, Date expireDate, String periodicDiseases) {
		super();
		this.planId = planId;
		this.insuranceCompany = insuranceCompany;
		this.planName = planName;
		this.planType = planType;
		this.minEntryAge = minEntryAge;
		this.maxEntryAge = maxEntryAge;
		this.description = description;
		this.availableCoverAmounts = availableCoverAmounts;
		this.waitingPeriod = waitingPeriod;
		this.createdOn = createdOn;
		this.expireDate = expireDate;
		this.periodicDiseases = periodicDiseases;
	}




	public InsurancePlan() {
		
	}
    
    
    
}
