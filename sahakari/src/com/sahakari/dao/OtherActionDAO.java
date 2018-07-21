package com.sahakari.dao;

import java.util.List;

import com.sahakari.model.Document;
import com.sahakari.model.TellerModel;

public interface OtherActionDAO {
	public String getUploadDirectory();
	public boolean uploaddocumentDao(Document document);
	public List<Document> getDocumentDetails();
	public String getDocumentLocation(String documentName);
	public boolean saveNewTeller(String tellerId, String userId, String accountNumber, String openDateN,String openDate, String accountName,String categoryId);
	public List<TellerModel> viewTeller();
	public TellerModel getTellerDetails(String id);
	public boolean updateTeller(String tellerId, String userId, String accountNumber, String openDateN, String openDate,
			String accountName, String categoryId);
}
