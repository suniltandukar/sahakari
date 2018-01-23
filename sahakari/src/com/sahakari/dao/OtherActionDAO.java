package com.sahakari.dao;

import java.sql.ResultSet;



import com.sahakari.model.Document;

public interface OtherActionDAO {
	public String getUploadDirectory();
	public boolean uploaddocumentDao(Document document);
}
