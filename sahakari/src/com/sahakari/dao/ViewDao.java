package com.sahakari.dao;

import java.util.List;

import com.sahakari.model.CustomerModel;
import com.sahakari.model.FamilyRelationModel;

public interface ViewDao {

	public List<CustomerModel> viewCustomerDetail();
	public List<CustomerModel> viewSearchedCustomerDetail(String searchingby);
	public CustomerModel viewSpecificCustomerDetail(String id);
	public List<CustomerModel> viewCustomerFamilyDetail(String id);
	public List<CustomerModel> viewCustomerJobDetail(String id);
	public List<CustomerModel> viewCustomerBankDetail(String id);
	public List<CustomerModel> viewShareCertificate();
	public CustomerModel viewSpecificShareCertificate(String id);
	
}
