package com.infinite.ims.daoImpl;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.infinite.ims.dao.InsurancePlanDao;
import com.infinite.ims.model.InsurancePlan;
import com.infinite.ims.util.HibernateUtil;

public class InsurancePlanDaoImpl implements InsurancePlanDao {

    private SessionFactory sessionFactory;

    public InsurancePlanDaoImpl() {
        sessionFactory = HibernateUtil.getSessionFactory();
    }

    @Override
    public String addInsurancePlan(InsurancePlan plan) {
        Session session = sessionFactory.openSession();
        Transaction tx = session.beginTransaction();
        session.save(plan);
        tx.commit();
        session.close();
        return "success";
    }

    @Override
    public InsurancePlan searchInsurancePlan(String planId) {
        Session session = sessionFactory.openSession();
        InsurancePlan plan = (InsurancePlan) session.get(InsurancePlan.class, planId);
        session.close();
        return plan;
    }

    @Override
    public List<InsurancePlan> showAllPlans() {
        Session session = sessionFactory.openSession();
        Query query = session.createQuery("from InsurancePlan");
        List<InsurancePlan> plans = query.list();
        session.close();
        return plans;
    }

    @Override
    public String updateInsurancePlan(InsurancePlan plan) {
        Session session = sessionFactory.openSession();
        Transaction tx = session.beginTransaction();
        session.update(plan);  // must be an existing persistent object
        tx.commit();
        session.close();
        return "success";
    }

    @Override
    public String deleteInsurancePlan(String planId) {
        Session session = sessionFactory.openSession();
        Transaction tx = session.beginTransaction();
        InsurancePlan plan = (InsurancePlan) session.get(InsurancePlan.class, planId);
        session.delete(plan);  // delete only if object is found
        tx.commit();
        session.close();
        return "success";
    }
}
