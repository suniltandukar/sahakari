package com.sahakari.dao;

import java.sql.ResultSet;


import com.sahakari.model.Document;

public interface OtherActionDAO {

	

	String downloadFileNameDAO(String name);

	boolean uploadbillDao(Document document);

	public boolean editbillDao(String branchdb, Document document);
	public ResultSet viewbillDao(String branchdb);

	public ResultSet viewbillimageDao(String branchdb, String billid);

	public boolean deletebilldata(String branchdb, String billid);

	public Document getbilldetail(String billid, String branchdb, Document document);

	
	
	

}
