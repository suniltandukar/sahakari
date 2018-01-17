package com.sahakari.dao;

import java.sql.SQLException;

import com.sahakari.model.CustomerModal;
import com.sahakari.model.CustomerModel;

public interface CustomerDao {
	public int customerForm(CustomerModal modal1) throws SQLException;

	public boolean insertCustomer(CustomerModel cm);

	public boolean deleteCustomerDao(String pid);

	public boolean updateCustomer(String pid,CustomerModel cm);
	

	public boolean insertCustomerJob(CustomerModel cm);

	public boolean insertCustomerFamily(CustomerModel cm);

	public boolean insertCustomerBank(CustomerModel cm);

	public boolean deleteCustomerRelationBankDetail(String pid);
	public boolean checkMemberId(String id);

	public boolean addShareCertificate(CustomerModel cm);

	public String selectPid(String memberid);

	public boolean deleteShareCertificate(String id);

	public boolean updateShareCertificate(CustomerModel cm);

	public void updateCustomerFamily(CustomerModel cm);

	public void updateCustomerBank(CustomerModel cm);

	public void updateCustomerJob(CustomerModel cm);

	public String acccountnogen(String memberid);
	
	
}
