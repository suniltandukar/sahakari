package com.sahakari.daoimpl;

import java.sql.PreparedStatement;

import com.mysql.jdbc.Connection;
import com.sahakari.dao.LoanDao;
import com.sahakari.dbconnection.DBConnection;
import com.sahakari.model.AccountModel;

public class LoanDaoImpl implements LoanDao{
	Connection con=null;
	PreparedStatement ps=null;
	
	public boolean insertLoan(AccountModel am){
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

}
