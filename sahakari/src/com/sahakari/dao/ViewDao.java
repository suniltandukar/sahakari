package com.sahakari.dao;

import java.util.List;

import com.sahakari.model.CustomerModel;

public interface ViewDao {

	public List<CustomerModel> viewCustomerDetail();
	public CustomerModel viewSpecificCustomerDetail(String id);
	public List<CustomerModel> viewCustomerFamilyDetail(String id);
	public List<CustomerModel> viewCustomerBankDetail(String id);
	public List<CustomerModel> viewShareCertificate();
	public CustomerModel viewSpecificShareCertificate(String id);
}
