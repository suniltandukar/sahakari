package com.sahakari.dao;

import java.sql.ResultSet;



import java.util.List;

import com.sahakari.model.Document;

public interface OtherActionDAO {
	public String getUploadDirectory();
	public boolean uploaddocumentDao(Document document);
	public List<Document> getDocumentDetails();
	public String getDocumentLocation(String documentName);
	public boolean saveNewTeller(String tellerId, String userId, String accountNumber, String openDateN);
}
