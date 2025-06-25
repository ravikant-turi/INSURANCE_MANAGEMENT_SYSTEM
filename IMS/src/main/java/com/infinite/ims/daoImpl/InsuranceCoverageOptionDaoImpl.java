package com.infinite.ims.daoImpl;

import java.util.List;

import javax.faces.application.FacesMessage;
import javax.faces.context.FacesContext;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.infinite.ims.dao.InsuranceCoverageOptionDao;
import com.infinite.ims.model.InsuranceCoverageOption;
import com.infinite.ims.util.HibernateUtil;

public class InsuranceCoverageOptionDaoImpl implements InsuranceCoverageOptionDao {
	
	static SessionFactory sf;
	static Session session;
	
	static {
		sf=HibernateUtil.getSessionFactory();
	}

	@Override
	public List<InsuranceCoverageOption> showAllInsuranceCoverageOption() {
		
		session=sf.openSession();
		Transaction trans=session.beginTransaction();
		
		Query query=session.createQuery("from InsuranceCoverageOption");
		
		List<InsuranceCoverageOption> coverageOptions=query.list();
		
		System.out.println("method is called");
		trans.commit();
		session.close();
		
		return coverageOptions;
	}

	@Override
	public String addInsuranceCoverageOption(InsuranceCoverageOption coverageOption) {
		
		session=sf.openSession();
		Transaction trans=session.beginTransaction();
		session.save(coverageOption);
		trans.commit();
		session.close();
		
		return "added sucessfully ";
		
		
	}

	@Override
	public InsuranceCoverageOption searchInsuranceCoverageOptionById(String coverageOptionId) {
		
		FacesContext context = FacesContext.getCurrentInstance();

		// Check if ID is null or empty
		
		if (coverageOptionId == null || coverageOptionId.trim().isEmpty()) {
		    context.addMessage(null, new FacesMessage(FacesMessage.SEVERITY_ERROR, "ID cannot be empty!", null));
		    return null;
		}
		
		
		session=sf.openSession();

		Transaction trans=session.beginTransaction();
		InsuranceCoverageOption coverageOption=(InsuranceCoverageOption) session.get(InsuranceCoverageOption.class, coverageOptionId);
		
		
		trans.commit();
		session.close();
		
		// 2. If not found, show message
	    if (coverageOption == null) {
	        context.addMessage(null, new FacesMessage(FacesMessage.SEVERITY_WARN, "No coverage option found for ID: " + coverageOptionId, null));
	        return null;
	    }
		
		return coverageOption;
	}

	@Override
	public String updateInsuranceCoverageOption(String coverageOptionId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String deleteInsuranceCoverageOption(String CoverageOptionID) {
		// TODO Auto-generated method stub
		return null;
	}

}
