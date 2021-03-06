package com.sahakari.dao;

import java.util.List;

import org.json.JSONArray;
import org.json.JSONObject;

import com.sahakari.model.CustomerModel;

public interface ViewDao {

	public JSONObject viewCustomerDetail();
	public JSONObject viewSearchedCustomerDetail(String memberid, String membername);
	public CustomerModel viewSpecificCustomerDetail(String id);
	public List<CustomerModel> viewCustomerFamilyDetail(String id);
	public List<CustomerModel> viewCustomerJobDetail(String id);
	public List<CustomerModel> viewCustomerBankDetail(String id);
	public JSONObject viewShareCertificate();
	public CustomerModel viewSpecificShareCertificate(String id);
	public List<CustomerModel> viewCustomerDocumentDetail(String id);
	public JSONArray viewAccountName(String accountNumber);
	public JSONArray convertToJSON();
	
}
