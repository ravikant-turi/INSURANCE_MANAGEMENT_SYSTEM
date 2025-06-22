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

   
}
