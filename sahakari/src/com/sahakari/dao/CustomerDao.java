package com.sahakari.dao;

import java.sql.SQLException;

import com.sahakari.model.CustomerModal;
import com.sahakari.model.CustomerModel;

public interface CustomerDao {
	public int customerForm(CustomerModal modal1) throws SQLException;

	public boolean insertCustomer(CustomerModel cm);

	public boolean deleteCustomerDao(String pid);

	public boolean updateCustomer(String pid,CustomerModel cm, String clientdb);

	public boolean insertCustomerJob(CustomerModel cm);

	public boolean insertCustomerFamily(CustomerModel cm);

	public boolean insertCustomerBank(CustomerModel cm);

	public boolean updateCustomerJob(String pid, CustomerModel cm, String clientdb);

	public boolean updateCustomerRelatives(String pid, CustomerModel cm,
			String clientdb);

	public boolean deleteCustomerRelationBankDetail(String pid, String clientdb);
	public boolean checkMemberId(String id);
	
}
