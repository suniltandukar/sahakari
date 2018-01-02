package com.sahakari.transaction.dao;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sahakari.model.TellerTransactionModel;
import com.sahakari.model.TransactionModel;

public interface TransactionDao {

	public boolean addTransaction(TransactionModel tm);

	public List<TransactionModel> gettransactions();

	public boolean addTransaction(String id);

	public TransactionModel getTransactionDetail(String id);

	public boolean updateTransaction(TransactionModel tm,String id);

	public boolean insertTellerTransaction(TellerTransactionModel tm);


	public List<TellerTransactionModel> gettellertransactions();

	public boolean insertMultiTransaction(TellerTransactionModel tm);

	public List<TransactionModel> getMultiTransaction();

	public TellerTransactionModel getMultiTransactionDetail(String id);

	public boolean updateMultiTransaction(TellerTransactionModel tm, String previousid);

	

}
