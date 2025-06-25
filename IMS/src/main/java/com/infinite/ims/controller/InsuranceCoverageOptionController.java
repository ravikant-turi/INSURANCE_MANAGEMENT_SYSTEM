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
	
	private String searchCoverageId;
	
	
	

	public void showAllInsuranceCoverageplan(){
		coverageList=coverageOptionDao.showAllInsuranceCoverageOption();
	}
	
	public String addInsuranceCoverageOption() {
		
		coverageOption.setInsurancePlan(insurancePlan);
		coverageOptionDao.addInsuranceCoverageOption(coverageOption);
		
		
		return null;
	}
	
//	search insurance coverage option with id
	
	public String searchInsuranceCoverageOption() {
		

		coverageOption=  coverageOptionDao.searchInsuranceCoverageOptionById(searchCoverageId);
		
		System.out.println("============coverageOption============");
		System.out.println(coverageOption);
		
		return null;
	}
	
	
	

}
