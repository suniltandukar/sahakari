package com.sahakari.transaction.dao;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sahakari.model.ShareAccountLedger;
import com.sahakari.model.TellerTransactionModel;
import com.sahakari.model.TransactionModel;

public interface TransactionDao {

	public boolean addTransaction(TransactionModel tm);
	public boolean addTransaction(String id);
	
	public boolean deleteTellerTransaction(String id);
	
	public List<TellerTransactionModel> getMultiTransaction();
	public TellerTransactionModel getMultiTransactionDetail(String id);
	public List<TransactionModel> gettransactions();
	public TellerTransactionModel getspecifictellertransaction(String id);
	public TransactionModel getTransactionDetail(String id);
	public List<TellerTransactionModel> gettellertransactions();
	
	public boolean insertMultiTransaction(TellerTransactionModel tm);
	public boolean insertTellerTransaction(TellerTransactionModel tm);
	
	public boolean updateTransaction(TransactionModel tm,String id);
	public boolean updateMultiTransaction(TellerTransactionModel tm, String previousid);

	public boolean deleteMultiTransaction(String id);

	public boolean updateTellerTransaction(TellerTransactionModel tm);
	public boolean addShareAccountLedger(ShareAccountLedger l);
	public List<ShareAccountLedger> viewShareAccountLedger();
	public ShareAccountLedger editShareAcDisplay(String pid);
	public boolean updateShareLedgerDao(ShareAccountLedger l);
	public String getTransactionNo(String transactionId);

	

	

}
