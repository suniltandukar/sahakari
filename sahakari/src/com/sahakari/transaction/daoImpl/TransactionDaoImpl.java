package com.sahakari.transaction.daoImpl;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.Connection;
import com.sahakari.dbconnection.DBConnection;
import com.sahakari.model.TellerTransactionModel;
import com.sahakari.model.TransactionModel;
import com.sahakari.transaction.dao.TransactionDao;
public class TransactionDaoImpl implements TransactionDao{
	Connection con=null;
	PreparedStatement ps=null;
	ResultSet rs=null;
	public boolean addTransaction(String id){
		String query="delete from transactiontbl where Id='"+id+"'";
		try{
			con=DBConnection.getConnection();
			ps=con.prepareStatement(query);
			int i=ps.executeUpdate();
			if(i>0){
				con.close();
				ps=null;
				return true;
			}
		}catch(Exception e){
			System.out.println(e);
		}
		return false;
	}
	public boolean addTransaction(TransactionModel tm){
		try{
			con=DBConnection.getConnection();
			String query="insert into transactiontbl (Id, refNo, transactionType, valueDate,bookingDate,debitAccountNumber,debitCurrency,debitNarrative,creditAccountNumber,"
					+ "creditCurrency,creditNarative,amount,commissionCode,commissionType,commissionAmount,chequeNumber,processingDate,Override,recordStatus,branchCode,inputter)"
					+ "values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,now(),?,?,?,?)";
			ps=con.prepareStatement(query);
			ps.setString(1,tm.getId() );
			ps.setString(2,tm.getRefNo() );
			ps.setString(3,tm.getTransactionType() );
			ps.setString(4, tm.getValueDate());
			ps.setString(5, tm.getBookingDate());
			ps.setString(6,tm.getDebitAccountNumber() );
			ps.setString(7, tm.getDebitCurrency());
			ps.setString(8, tm.getDebitNarrative());
			ps.setString(9, tm.getCreditAccountNumber());
			ps.setString(10, tm.getCreditCurrency());
			ps.setString(11, tm.getCreditNarative());
			ps.setString(12, tm.getAmount());
			ps.setString(13, tm.getCommissionCode());
			ps.setString(14, tm.getCommissionType());
			ps.setString(15, tm.getCommissionAmount());
			ps.setString(16, tm.getChequeNumber());
			ps.setString(17, tm.getOverride());
			ps.setString(18, tm.getRecordStatus());
			ps.setString(19, tm.getBranchCode());
			ps.setString(20, tm.getInputter());
			int i=ps.executeUpdate();
			if(i>0){
				con.close();
				ps=null;
				return true;
			}
		}catch(Exception e){
			System.out.println(e);
		}
		return false;
	}
	public boolean deleteTellerTransaction(String id){
		try{
			String query="delete from tellertransactiontbl where transactionId=?";
			con=DBConnection.getConnection();
			ps=con.prepareStatement(query);
			ps.setString(1,id);
			int i=ps.executeUpdate();
			if(i>0){
				con.close();
				ps=null;
				return true;
			}
		}
		catch(Exception e){
			System.out.println(e);
		}
		return false;
	}
	public List<TransactionModel> gettransactions(){
		List<TransactionModel> list=new ArrayList<TransactionModel>();
		TransactionModel tm=null;
		try{
			String query="select * from transactiontbl";
			con=DBConnection.getConnection();
			ps=con.prepareStatement(query);
			rs=ps.executeQuery();
			while(rs.next()){
				tm=new TransactionModel();
				tm.setAmount(rs.getString("amount"));
				tm.setBookingDate(rs.getString("bookingDate"));
				tm.setBranchCode(rs.getString("branchCode"));
				tm.setChequeNumber(rs.getString("chequeNumber"));
				tm.setChequeNumber(rs.getString("chequeNumber"));
				tm.setCommissionAmount(rs.getString("commissionAmount"));
				tm.setCommissionCode(rs.getString("commissionCode"));
				tm.setCommissionType(rs.getString("commissionType"));
				tm.setCreditAccountNumber(rs.getString("creditAccountNumber"));
				tm.setCreditCurrency(rs.getString("creditCurrency"));
				tm.setCreditNarative(rs.getString("creditNarative"));
				tm.setDebitAccountNumber(rs.getString("debitAccountNumber"));
				tm.setDebitCurrency(rs.getString("debitCurrency"));
				tm.setDebitNarrative(rs.getString("debitNarrative"));
				tm.setId(rs.getString("Id"));
				tm.setInputter(rs.getString("inputter"));
				tm.setOverride(rs.getString("Override"));
				tm.setProcessingDate(rs.getString("processingDate"));
				tm.setRecordStatus(rs.getString("recordStatus"));
				tm.setRefNo(rs.getString("refNo"));
				tm.setTransactionType(rs.getString("transactionType"));
				tm.setValueDate(rs.getString("valueDate"));
				list.add(tm);
			}
			if(list.size()>0){
				con.close();
				ps=null;
				rs=null;
				return list;
			}
		}catch(Exception e){
			System.out.println(e);
		}
		return null;
	}
	
	public TransactionModel getTransactionDetail(String id){
		TransactionModel tm=null;
		try{
			String query="select * from transactiontbl where Id='"+id+"'";
			con=DBConnection.getConnection();
			ps=con.prepareStatement(query);
			rs=ps.executeQuery();
			while(rs.next()){
				tm=new TransactionModel();
				tm.setAmount(rs.getString("amount"));
				tm.setBookingDate(rs.getString("bookingDate"));
				tm.setBranchCode(rs.getString("branchCode"));
				tm.setChequeNumber(rs.getString("chequeNumber"));
				tm.setChequeNumber(rs.getString("chequeNumber"));
				tm.setCommissionAmount(rs.getString("commissionAmount"));
				tm.setCommissionCode(rs.getString("commissionCode"));
				tm.setCommissionType(rs.getString("commissionType"));
				tm.setCreditAccountNumber(rs.getString("creditAccountNumber"));
				tm.setCreditCurrency(rs.getString("creditCurrency"));
				tm.setCreditNarative(rs.getString("creditNarative"));
				tm.setDebitAccountNumber(rs.getString("debitAccountNumber"));
				tm.setDebitCurrency(rs.getString("debitCurrency"));
				tm.setDebitNarrative(rs.getString("debitNarrative"));
				tm.setId(rs.getString("Id"));
				tm.setInputter(rs.getString("inputter"));
				tm.setOverride(rs.getString("Override"));
				tm.setProcessingDate(rs.getString("processingDate"));
				tm.setRecordStatus(rs.getString("recordStatus"));
				tm.setRefNo(rs.getString("refNo"));
				tm.setTransactionType(rs.getString("transactionType"));
				tm.setValueDate(rs.getString("valueDate"));
				return tm;
			}
		}catch(Exception e){
			System.out.println(e);
		}
		return null;
		
	}
	public boolean insertTellerTransaction(TellerTransactionModel tm){
		try{
			con=DBConnection.getConnection();
			String query="insert into tellertransactiontbl values (?,?,?,?,?,?,?,?,?,?,?,?,?)";
			ps=con.prepareStatement(query);
			ps.setString(1, tm.getTransactionid());
			ps.setString(2, tm.getBookingdate());
			ps.setString(3, tm.getValuedate());
			ps.setString(4, tm.getProcessdate());
			ps.setString(5, tm.getDebitaccountnumber());
			ps.setString(6, tm.getCreditaccountnumber());
			ps.setString(7, tm.getNarrative());
			ps.setString(8, tm.getChequenumber());
			ps.setString(9, tm.getAmount());
			ps.setString(10, tm.getTransactioncode());
			ps.setString(11,tm.getBranchid());
			ps.setString(12, tm.getInputter());
			ps.setString(13, tm.getAuthorizer());
			
			int i =ps.executeUpdate();
			if(i>0){
				con.close();
				ps=null;
				return true;
			}
			}
		catch(Exception e){
			System.out.println(e);
		}
		return false;
	}
	public boolean insertMultiTransaction(TellerTransactionModel tm)
	{
		
		try{
			con=DBConnection.getConnection();
			String query="insert into multipletransactiontbl values (null,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
			ps=con.prepareStatement(query);
			ps.setString(1, tm.getTransactionid());
			ps.setString(2, tm.getTransactionno());
			ps.setString(3, tm.getBookingdate());
			ps.setString(4, tm.getValuedate());
			ps.setString(5, tm.getProcessdate());
			ps.setString(6, tm.getAccountnumber());
			ps.setString(7, tm.getDrcr());
			ps.setString(8, tm.getAmount());
			ps.setString(9, tm.getNarrative());
			ps.setString(10, tm.getChequenumber());
			ps.setString(11, tm.getTransactioncode());
			ps.setString(12,tm.getBranchid());
			ps.setString(13, tm.getInputter());
			ps.setString(14, tm.getAuthorizer());
			
			int i=ps.executeUpdate();
			if(i>0){
				con.close();
				ps=null;
				return true;
			}
			}
		catch(Exception e){
			System.out.println(e);
		}
		return false;
	}
	public List<TransactionModel> getMultiTransaction()
	{
		List<TellerTransactionModel> list=null;
		TellerTransactionModel model=null;
		try{
			con=DBConnection.getConnection();
			String query="select * from ";
			ps=con.prepareStatement(query);
			rs=ps.executeQuery();
			
			if(rs.next())
			{
				
			}
			}
		catch(Exception e){
			System.out.println(e);
		}
		return null;
	}
	
	public TellerTransactionModel getMultiTransactionDetail(String id)
	{
		TellerTransactionModel tm=null;
		try{
			String query="select * from transactiontbl where Id='"+id+"'";
			con=DBConnection.getConnection();
			ps=con.prepareStatement(query);
			rs=ps.executeQuery();
			while(rs.next()){
				tm=new TellerTransactionModel();
				tm.setTransactionid(rs.getString("transactionid"));
				tm.setTransactionno(rs.getString("transactionno"));
				tm.setBookingdate(rs.getString("bookingdate"));
				tm.setValuedate(rs.getString("valuedate"));
				tm.setProcessdate(rs.getString("processdate"));
				tm.setAccountnumber(rs.getString("accountnumber"));
				tm.setDrcr(rs.getString("drcr"));
				tm.setNarrative(rs.getString("narrative"));
				tm.setAmount(rs.getString("amount"));
				tm.setTransactioncode(rs.getString("transactioncode"));
				tm.setInputter(rs.getString("inputter"));
				tm.setAuthorizer(rs.getString("authorizer"));
				tm.setChequenumber(rs.getString("chequenumber"));
				
				return tm;
			}
		}catch(Exception e){
			System.out.println(e);
		}
		return null;
		
	}
	public boolean updateTransaction(TransactionModel tm,String id){
		try{
			con=DBConnection.getConnection();
			String query="update transactiontbl set Id=?, refNo=?, transactionType=?, valueDate=?,bookingDate=?,debitAccountNumber=?,debitCurrency=?,debitNarrative=?,creditAccountNumber=?,"
					+ "creditCurrency=?,creditNarative=?,amount=?,commissionCode=?,commissionType=?,commissionAmount=?,chequeNumber=?,processingDate=?,Override=?,recordStatus=?,branchCode=? where Id='"+id+"' ";
			ps=con.prepareStatement(query);
			ps.setString(1,tm.getId() );
			ps.setString(2,tm.getRefNo() );
			ps.setString(3,tm.getTransactionType() );
			ps.setString(4, tm.getValueDate());
			ps.setString(5, tm.getBookingDate());
			ps.setString(6,tm.getDebitAccountNumber() );
			ps.setString(7, tm.getDebitCurrency());
			ps.setString(8, tm.getDebitNarrative());
			ps.setString(9, tm.getCreditAccountNumber());
			ps.setString(10, tm.getCreditCurrency());
			ps.setString(11, tm.getCreditNarative());
			ps.setString(12, tm.getAmount());
			ps.setString(13, tm.getCommissionCode());
			ps.setString(14, tm.getCommissionType());
			ps.setString(15, tm.getCommissionAmount());
			ps.setString(16, tm.getChequeNumber());
			ps.setString(17, tm.getProcessingDate());
			ps.setString(18, tm.getOverride());
			ps.setString(19, tm.getRecordStatus());
			ps.setString(20, tm.getBranchCode());
		
			int i=ps.executeUpdate();
			if(i>0){
				con.close();
				ps=null;
				return true;
			}
		}catch(Exception e){
			System.out.println(e);
		}
		return false;
	}
	public List<TellerTransactionModel> gettellertransactions(){
		TellerTransactionModel tm=null;
		List<TellerTransactionModel> list=new ArrayList<TellerTransactionModel>();
		try{
			String query="select * from tellertransactiontbl";
			con=DBConnection.getConnection();
			ps=con.prepareStatement(query);
			rs=ps.executeQuery();
			while(rs.next()){
				tm=new TellerTransactionModel();
				tm.setTransactionid(rs.getString("transactionId"));
				tm.setBookingdate(rs.getString("bookingDate"));
				tm.setValuedate(rs.getString("valueDate"));
				tm.setProcessdate(rs.getString("processingDate"));
				tm.setDebitaccountnumber(rs.getString("debitAccountNumber"));
				tm.setCreditaccountnumber(rs.getString("creditAccountNumber"));
				tm.setNarrative(rs.getString("narrative"));
				tm.setChequenumber(rs.getString("cheqNumber"));
				tm.setAmount(rs.getString("amount"));
				tm.setTransactioncode(rs.getString("transactionCode"));
				tm.setBranchid(rs.getString("branchId"));
				tm.setInputter(rs.getString("inputter"));
				tm.setInputter(rs.getString("inputter"));
				tm.setAuthorizer(rs.getString("authorizer"));
				list.add(tm);
				
			}
			if(list.size()>0){
				con.close();
				ps=null;
				rs=null;
				return list;
			}
		}catch(Exception e){
			System.out.println(e);
		}
		return null;
	}
	public TellerTransactionModel getspecifictellertransaction(String id){
		TellerTransactionModel tm=null;
		try{
			String query="select * from tellertransactiontbl where transactionId='"+id+"'";
			con=DBConnection.getConnection();
			ps=con.prepareStatement(query);
			rs=ps.executeQuery();
			if(rs.next()){
				tm=new TellerTransactionModel();
				tm.setTransactionid(rs.getString("transactionId"));
				tm.setBookingdate(rs.getString("bookingDate"));
				tm.setValuedate(rs.getString("valueDate"));
				tm.setProcessdate(rs.getString("processingDate"));
				tm.setDebitaccountnumber(rs.getString("debitAccountNumber"));
				tm.setCreditaccountnumber(rs.getString("creditAccountNumber"));
				tm.setNarrative(rs.getString("narrative"));
				tm.setChequenumber(rs.getString("cheqNumber"));
				tm.setAmount(rs.getString("amount"));
				tm.setTransactioncode(rs.getString("transactionCode"));
				tm.setBranchid(rs.getString("branchId"));
				tm.setInputter(rs.getString("inputter"));
				tm.setInputter(rs.getString("inputter"));
				tm.setAuthorizer(rs.getString("authorizer"));
				return tm;
				
			}
		}catch(Exception e){
			System.out.println(e);
		}
		return null;
	}
	public boolean updateMultiTransaction(TellerTransactionModel tm, String id)
	{
		try{
		con=DBConnection.getConnection();
		String query="update transactiontbl set  where Id='"+id+"' ";
		ps=con.prepareStatement(query);
		ps.setString(1,tm.getTransactionid());
		
	
		int i=ps.executeUpdate();
		if(i>0){
			con.close();
			ps=null;
			return true;
		}
	}catch(Exception e){
		System.out.println(e);
	}
	return false;
	}
	public boolean updateTellerTransaction(TellerTransactionModel tm){
		try{
			con=DBConnection.getConnection();
			String query="update tellertransactiontbl set bookingDate=?,valueDate=?,processingDate=?,debitAccountNumber=?,creditAccountNumber=?,narrative=?,cheqNumber=?,amount=?,transactionCode=?, branchId=? where transactionId=?  ";
			ps=con.prepareStatement(query);
			ps.setString(1, tm.getBookingdate());
			ps.setString(2, tm.getValuedate());
			ps.setString(3, tm.getProcessdate());
			ps.setString(4, tm.getDebitaccountnumber());
			ps.setString(5, tm.getCreditaccountnumber());
			ps.setString(6, tm.getNarrative());
			ps.setString(7, tm.getChequenumber());
			ps.setString(8, tm.getAmount());
			ps.setString(9, tm.getTransactioncode());
			ps.setString(10,tm.getBranchid());
			ps.setString(11, tm.getTransactionid());

			int i =ps.executeUpdate();
			if(i>0){
				con.close();
				ps=null;
				return true;
			}
		}catch(Exception e){
			System.out.println(e);
		}
		return false;
	}

}
