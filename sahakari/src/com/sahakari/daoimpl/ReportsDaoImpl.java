package com.sahakari.daoimpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.sahakari.dao.ReportsDao;
import com.sahakari.dbconnection.DBConnection;

public class ReportsDaoImpl implements ReportsDao{
	Connection con=null;
	PreparedStatement pstmt=null;
	ResultSet rs=null;
	
	public ResultSet getTrialBalanceReport(){
		String query="select left(a.categoryid,2) as main, a.categoryid,c.categoryhead,if(sum(a.clearedbal)>=0,sum(a.clearedbal),0) as drbal,if(sum(a.clearedbal)<=0,-sum(a.clearedbal),0) as crbal from accountstbl a join categories c on a.categoryid=c.categoryid group by main, a.categoryid,c.categoryhead;";
		try{
			con=DBConnection.getConnection();
			pstmt=con.prepareStatement(query);
			rs=pstmt.executeQuery();
		}
		catch(Exception e){
			System.out.println(e);
		}
	
		return rs;
	}

}
