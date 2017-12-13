package com.sahakari.transaction.dao;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sahakari.model.TransactionModel;

public interface TransactionDao {

	public boolean addTransaction(TransactionModel tm);

	public List<TransactionModel> gettransactions();

	public boolean addTransaction(String id);

	

}
