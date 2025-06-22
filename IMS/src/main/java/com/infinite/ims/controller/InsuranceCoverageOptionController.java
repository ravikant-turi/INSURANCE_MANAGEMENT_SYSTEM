package com.infinite.ims.controller;

import java.util.List;

import javax.faces.view.facelets.FaceletContext;

import com.infinite.ims.dao.InsuranceCoverageOptionDao;
import com.infinite.ims.model.InsuranceCoverageOption;
import com.infinite.ims.model.InsurancePlan;

import lombok.Data;
@Data
public class InsuranceCoverageOptionController {
	
	InsuranceCoverageOptionDao coverageOptionDao;
	InsurancePlan insurancePlan;
	InsuranceCoverageOption coverageOption;
	List<InsuranceCoverageOption> coverageList;
//	private String planId;
	
	
	

	public void showAllInsuranceCoverageplan(){
		coverageList=coverageOptionDao.showAllInsuranceCoverageOption();
	}
	
	public String addInsuranceCoverageOption() {
		
		coverageOption.setInsurancePlan(insurancePlan);
		coverageOptionDao.addInsuranceCoverageOption(coverageOption);
		
		
		return null;
	}
	

}
