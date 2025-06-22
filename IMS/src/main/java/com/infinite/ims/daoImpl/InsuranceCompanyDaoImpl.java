package com.infinite.ims.daoImpl;

import java.util.List;

import javax.faces.application.FacesMessage;
import javax.faces.context.FacesContext;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.infinite.ims.dao.InsuranceCompanyDao;
import com.infinite.ims.model.InsuranceCompany;
import com.infinite.ims.util.HibernateUtil;

public class InsuranceCompanyDaoImpl implements InsuranceCompanyDao {

	private static SessionFactory sessionFactory;

	static {
		sessionFactory = HibernateUtil.getSessionFactory();

	}

	public String addcompanyTest(InsuranceCompany company) {
		Session session = sessionFactory.openSession();

		System.out.println("session is : " + session);

		Transaction trans = session.beginTransaction();
		
		String lastId = getMaxCompanyId(); 
		String newId = generateNextId(lastId);
		company.setCompanyId(newId);

		session.save(company);

		trans.commit();

		session.close();

		return "executed";
	}

	@Override

	public String addCompany(InsuranceCompany company) {
		FacesContext context = FacesContext.getCurrentInstance();

		Session session = sessionFactory.openSession();

		System.out.println("session is : " + session);

		Transaction trans = session.beginTransaction();

//		boolean hasError = false;
//
//		
//		if (isEmpty(company.getName())) {
//			context.addMessage("companyForm:name",
//					new FacesMessage(FacesMessage.SEVERITY_ERROR, "Company name is required", null));
//			hasError = true;
//			
//		}
//		if (isEmpty(company.getContactEmail())) {
//			context.addMessage("companyForm:email",
//					new FacesMessage(FacesMessage.SEVERITY_ERROR, "Contact Email is required", null));
//			hasError = true;
//			
//		}
//		if (isEmpty(company.getContactPhone())) {
//			context.addMessage("companyForm:phone",
//					new FacesMessage(FacesMessage.SEVERITY_ERROR, "Contact Phone is required", null));
//			hasError = true;
//			
//		}
//		if (isEmpty(company.getHeadOffice())) {
//			context.addMessage("companyForm:office",
//					new FacesMessage(FacesMessage.SEVERITY_ERROR, "Head Office / City is required", null));
//			hasError = true;
//		}
//
//		if (hasError)
//			return "error";

//		String lastId = getMaxCompanyId(); 
//		String newId = generateNextId(lastId);
//		company.setCompanyId(newId);
//		
		session.save(company);

		context.addMessage(null, new FacesMessage("Company added successfully!"));

		trans.commit();

		session.close();
		return null;
	}

	// Helper method to check if a string is empty or null
	private boolean isEmpty(String val) {
		return val == null || val.trim().isEmpty();
	}

	// Helper method to generate next company ID
	private String generateNextId(String currentId) {
		if (currentId == null) {
			return "COM001";
		}
		int num = Integer.parseInt(currentId.substring(3));
		return String.format("COM%03d", num + 1);
	}

	public String getMaxCompanyId() {
		Session session = sessionFactory.openSession();
		String hql = "SELECT MAX(ic.companyId) FROM InsuranceCompany ic";
		String maxId = (String) session.createQuery(hql).uniqueResult();
		session.close();
		return maxId;
	}

	@Override
	public InsuranceCompany findById(String companyId) {
		Session session = sessionFactory.openSession();
		InsuranceCompany company = (InsuranceCompany) session.get(InsuranceCompany.class, companyId);
		session.close();
		return company;
	}

	@Override
	public List<InsuranceCompany> findAll() {
		Session session = sessionFactory.openSession();
		List<InsuranceCompany> list = session.createQuery("FROM InsuranceCompany").list();
		session.close();
		return list;
	}

	@Override
	public void delete(InsuranceCompany company) {
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		session.delete(company);
		tx.commit();
		session.close();
	}
}
