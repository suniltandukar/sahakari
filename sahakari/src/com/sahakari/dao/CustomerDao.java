package com.sahakari.dao;

import java.sql.SQLException;

import com.sahakari.model.CustomerModal;
import com.sahakari.model.CustomerModel;

public interface CustomerDao {
	public int customerForm(CustomerModal modal1) throws SQLException;

	public boolean insertCustomer(CustomerModel cm);
}
