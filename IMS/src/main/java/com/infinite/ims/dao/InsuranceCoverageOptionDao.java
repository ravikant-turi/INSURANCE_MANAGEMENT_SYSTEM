package com.infinite.ims.dao;

import java.util.List;

import com.infinite.ims.model.InsuranceCoverageOption;

public interface InsuranceCoverageOptionDao {
	
	List<InsuranceCoverageOption> showAllInsuranceCoverageOption();
	
	String addInsuranceCoverageOption(InsuranceCoverageOption coverageOption);
	
	InsuranceCoverageOption  searchInsuranceCoverageOptionById(String coverageOptionId);
	
	String updateInsuranceCoverageOption(String coverageOptionId);
	
	String deleteInsuranceCoverageOption(String CoverageOptionID);
	

}
