package com.infinite.ims.daoImpl;

import java.util.List;

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

}
