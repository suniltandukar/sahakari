package com.sahakari.dao;

import java.sql.SQLException;

import com.sahakari.model.CustomerModal;

public interface CustomerDao {
	public int customerForm(CustomerModal modal1) throws SQLException;
}
