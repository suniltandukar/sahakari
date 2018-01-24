package com.sahakari.daoimpl;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.mysql.jdbc.Connection;
import com.sahakari.dao.ValidationDao;
import com.sahakari.dbconnection.DBConnection;

public class ValidationDaoImpl implements ValidationDao{
	Connection con=null;
	PreparedStatement ps=null;
	ResultSet rs=null;
	public boolean fileDuplicateValidation(String savedFileName){
		try{
			String query="select generatedname from memberdocuments where generatedname='"+savedFileName+"'";
			con=DBConnection.getConnection();
			ps=con.prepareStatement(query);
			rs=ps.executeQuery();
			if(rs.next()){
				con.close();
				ps.close();
				rs=null;
				return true;
			}
		}catch(Exception e){
			System.out.println(e);
		}
		return false;
	}

}
