package com.infinite.ims.dao;

import java.util.List;

import com.infinite.ims.model.InsurancePlan;

public interface InsurancePlanDao {

    // Method to add a new insurance plan
    public String addInsurancePlan(InsurancePlan plan);

    // Method to search a plan by planId
    public InsurancePlan searchInsurancePlan(String planId);

    // Method to get all available plans
    public List<InsurancePlan> showAllPlans();
    
//    method to update the plane
  public String updateInsurancePlan(InsurancePlan plan);
  
//  method to delete the plane
public String deleteInsurancePlan(String planId);

}




