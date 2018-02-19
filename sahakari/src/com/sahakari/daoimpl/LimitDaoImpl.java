package com.sahakari.daoimpl;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.mysql.jdbc.Connection;
import com.sahakari.dao.LimitDao;
import com.sahakari.dbconnection.DBConnection;
import com.sahakari.model.LimitModel;

public class LimitDaoImpl implements LimitDao{
	Connection con=null;
	PreparedStatement ps=null;
	ResultSet rs=null;
	public boolean insertLimit(LimitModel l){
		try{
			String query="insert into securedLimitTbl (PID , productCode ,limitSerial ,limitReference , limitType ,applicationDateNp , applicationDateEn ,approvedDateNp , approvedDateEn ,maturityDateNp , maturityDateEn ,reviewDateNp ,reviewDateEn ,lastdrawDateNp , lastdrawDateEn ,limitAvailableAmount , reducingLimit ,approvedAmount , maximumwithdrawlAmount ,utilizedAmount , balanceAmount ,limitTransferTocus , limitTransferFromcus ,Inputter ,authorizer, limitStatus)values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
			con=DBConnection.getConnection();
			ps=con.prepareStatement(query);
			ps.setString(1,l.getPID() );
			ps.setString(2,l.getProductCode() );
			ps.setString(3, l.getLimitSerial());
			ps.setString(4, l.getLimitReference());
			ps.setString(5, l.getLimitType());
			ps.setString(6, l.getApplicationDateNp());
			ps.setString(7, l.getApplicationDateEn());
			ps.setString(8, l.getApprovedDateNp());
			ps.setString(9, l.getApprovedDateEn());
			ps.setString(10, l.getMaturityDateNp());
			ps.setString(11, l.getMaturityDateEn());
			ps.setString(12, l.getReviewDateNp());
			ps.setString(13, l.getReviewDateEn());
			ps.setString(14, l.getLastdrawDateNp());
			ps.setString(15, l.getLastdrawDateEn());
			ps.setString(16, l.getLimitAvailableAmount());
			ps.setString(17, l.getReducingLimit());
			ps.setString(18, l.getApprovedAmount());
			ps.setString(19, l.getMaximumwithdrawlAmount());
			ps.setString(20, l.getUtilizedAmount());
			ps.setString(21, l.getBalanceAmount());
			ps.setString(22, l.getLimitTransferTocus());
			ps.setString(23, l.getLimitTransferFromcus());
			ps.setString(24, l.getInputter());
			ps.setString(25, l.getAuthorizer());
			ps.setString(26, l.getLimitStatus);
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
