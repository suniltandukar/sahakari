package com.sahakari.daoimpl;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.Connection;
import com.sahakari.dao.LoanDao;
import com.sahakari.dbconnection.DBConnection;
import com.sahakari.model.AccountModel;
import com.sahakari.model.EmiSchedule;

public class LoanDaoImpl implements LoanDao{
	Connection con=null;
	PreparedStatement ps=null;
	ResultSet rs=null;
	
	public boolean insertLoan(AccountModel am){
		try{
			String query="update accountstbl set interestType=?,interestRate=?,principalAmount=?,startDateNP=?,startDateEn=?,maturityDateNP=?,maturityDateEn=?,repaymentStartDateNp=?,repaymentStartDateEn=?,repaymentFrequency=?,loanDrawdownAc=?,chargeDebitAc=?,chargeAmount=?,chargePaymentDate=?,interestLiqAccount=?,principalLiqAccount=? where accountNumber=?";
			con=DBConnection.getConnection();
			ps=con.prepareStatement(query);
			ps.setString(1,am.getInterestType() );
			ps.setString(2,am.getInterestRate() );
			ps.setString(3,am.getPrincipalAmount() );
			ps.setString(4,am.getStartDateNP() );
			ps.setString(5,am.getStartDateEn() );
			ps.setString(6,am.getMaturityDateNP() );
			ps.setString(7,am.getMaturityDateEn() );
			ps.setString(8, am.getRepaymentStartDateNp());
			ps.setString(9,am.getRepaymentStartDateEn());
			ps.setString(10,am.getRepaymentFrequency());
			ps.setString(11,am.getLoanDrawdownAc() );
			ps.setString(12,am.getChargeDebitAc() );
			ps.setString(13,am.getChargeAmount() );
			ps.setString(14,am.getChargePaymentDate() );
			ps.setString(15,am.getInterestLiqAccount() );
			ps.setString(16, am.getPrincipalLiqAccount());
			ps.setString(17, am.getAccountNumber());
			System.out.println(query);
			int i=ps.executeUpdate();
			if(i>0){
				return true;
			}
			
		}
		catch(Exception e){
			System.out.println(e);
		}
		return false;
	}
	public AccountModel getEditDetails(String accountNo)
	{
		String query="select * from accountstbl where accountNumber=?";
		con=DBConnection.getConnection();
	
		try {
			ps=con.prepareStatement(query);
			ps.setString(1, accountNo);
			rs=ps.executeQuery();
			if(rs.next())
			{
				AccountModel am=new AccountModel();
				am.setAccountName(rs.getString("accountName"));
				am.setAccountNumber(rs.getString("accountNumber"));
				am.setAccountType(rs.getString("accountType"));
				//am.setAccountTypeHead(rs.getString("accountTypeHead"));
				am.setPid(rs.getString("pid"));
				am.setInterestType(rs.getString("interestType"));
				am.setInterestRate(rs.getString("interestRate"));
				am.setPrincipalAmount(rs.getString("principalAmount"));
				am.setStartDateNP(rs.getString("startDateNP"));
				am.setStartDateEn(rs.getString("startDateEN"));
				am.setMaturityDateNP(rs.getString("maturityDateNP"));
				am.setMaturityDateEn(rs.getString("maturityDateEN"));
				am.setRepaymentStartDateNp(rs.getString("repaymentStartDateNP"));
				am.setRepaymentStartDateEn(rs.getString("repaymentStartDateEN"));
				am.setLoanDrawdownAc(rs.getString("loanDrawdownAc"));
				am.setPrincipalLiqAccount(rs.getString("principalLiqAccount"));
				am.setInterestLiqAccount(rs.getString("interestLiqAccount"));
				am.setRepaymentFrequency(rs.getString("repaymentFrequency"));
				
				am.setChargeDebitAc(rs.getString("chargeDebitAc"));
				am.setChargeAmount(rs.getString("chargeAmount"));
				am.setChargePaymentDate(rs.getString("chargePaymentDate"));
				
				am.setLimitRef(rs.getString("limitRef"));
				
				return am;
				
				
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return null;
		
	}
	
	public boolean updateLoan(AccountModel am)
	{
		try{
		String query="update accountstbl set interestType=?,interestRate=?,principalAmount=?,startDateNP=?,startDateEn=?,maturityDateNP=?,maturityDateEn=?,repaymentStartDateNp=?,repaymentStartDateEn=?,repaymentFrequency=?,loanDrawdownAc=?,chargeDebitAc=?,chargeAmount=?,chargePaymentDate=?,interestLiqAccount=? where accountNumber=?";
		con=DBConnection.getConnection();
		ps=con.prepareStatement(query);
		ps.setString(1,am.getInterestType() );
		ps.setString(2,am.getInterestRate() );
		ps.setString(3,am.getPrincipalAmount() );
		ps.setString(4,am.getStartDateNP() );
		ps.setString(5,am.getStartDateEn() );
		ps.setString(6,am.getMaturityDateNP() );
		ps.setString(7,am.getMaturityDateEn() );
		ps.setString(8, am.getRepaymentStartDateNp());
		ps.setString(9,am.getRepaymentStartDateEn());
		ps.setString(10,am.getRepaymentFrequency() );
		ps.setString(11,am.getLoanDrawdownAc() );
		ps.setString(12,am.getChargeDebitAc() );
		ps.setString(13,am.getChargeAmount() );
		ps.setString(14,am.getChargePaymentDate() );
		ps.setString(15,am.getInterestLiqAccount() );
		ps.setString(16, am.getAccountNumber());
		int i=ps.executeUpdate();
		if(i>0){
			return true;
		}
		
	}
	catch(Exception e){
		System.out.println(e);
	}
	return false;
	}
	@Override
	public List<EmiSchedule> getEmiSchedule() {
		List<EmiSchedule> list = new ArrayList<EmiSchedule>();
		EmiSchedule e = null;
		
		String query = "select * from emischedule";
		con=DBConnection.getConnection();
		try {
			ps= con.prepareStatement(query);
			rs = ps.executeQuery();
			while(rs.next()) {
				e = new EmiSchedule();
				e.setAccountNumber(rs.getString("accountNumber"));
				e.setEmi(rs.getString("emi"));
				e.setInterestinstallment(rs.getString("interestinstallment"));
				e.setPrincipalbal(rs.getString("principalbal"));
				e.setPrincipalinstallment(rs.getString("principalinstallment"));
				e.setSno(rs.getString("sno"));
				list.add(e);
			}
		} catch (SQLException se) {
			System.out.println(se);
			se.printStackTrace();
		}
		return list;
	}

}
