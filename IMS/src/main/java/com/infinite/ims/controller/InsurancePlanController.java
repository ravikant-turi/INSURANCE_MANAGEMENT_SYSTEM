package com.infinite.ims.controller;


import java.util.ArrayList;
import java.util.List;

import com.infinite.ims.dao.InsurancePlanDao;
import com.infinite.ims.daoImpl.InsurancePlanDaoImpl;
import com.infinite.ims.model.InsuranceCompany;
import com.infinite.ims.model.InsurancePlan;

import lombok.Data;

@Data
public class InsurancePlanController {

    private InsurancePlan insurancePlan = new InsurancePlan();
    private InsurancePlanDao insurancePlandao = new InsurancePlanDaoImpl();

    private List<InsurancePlan> allPlans ;
    private String message;
    private String searchCompanyId;
    
    private InsuranceCompany insuranCompany;

    // Getters and Setters
    public InsurancePlan getInsurancePlan() {
        return insurancePlan;
    }

    public void setInsurancePlan(InsurancePlan insurancePlan) {
        this.insurancePlan = insurancePlan;
    }

    public List<InsurancePlan> getAllPlans() {
        return allPlans;
    }

    public void setAllPlans(List<InsurancePlan> allPlans) {
        this.allPlans = allPlans;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    // Methods for JSF navigation

    public String addPlan() {
    	
    	InsuranceCompany insuranceCompany=new InsuranceCompany();
    	insuranceCompany.setCompanyId(searchCompanyId);
    	insurancePlan.setInsuranceCompany(insuranceCompany);
        String status = insurancePlandao.addInsurancePlan(insurancePlan);
        message = "Plan added with ID: " + insurancePlan.getPlanId();
        return status;
    }

    public String searchPlanById(String planId) {
        InsurancePlan found = insurancePlandao.searchInsurancePlan(planId);
        if (found != null) {
            this.insurancePlan = found;
            message = "Plan found!";
            return "success";
        } else {
            message = "No plan found with ID: " + planId;
            return "error";
        }
    }

    public String showAllPlans() {
        allPlans = insurancePlandao.showAllPlans();
        return "success";
    }

    public String updatePlan() {
        String status = insurancePlandao.updateInsurancePlan(insurancePlan);
        message = "Plan updated: " + insurancePlan.getPlanId();
        return status;
    }

    public String deletePlan(String planId) {
        String status = insurancePlandao.deleteInsurancePlan(planId);
        message = "Plan deleted: " + planId;
        return status;
    }
}
