package com.sahakari.daoimpl;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.mysql.jdbc.Connection;
import com.sahakari.dao.CommonDao;
import com.sahakari.dbconnection.DBConnection;

public class CommonDaoImpl implements CommonDao{
	Connection con=null;
	PreparedStatement ps=null;
	ResultSet rs=null;
	public boolean insertFunction(String tableName, String reqFields, String reqValues){
		String query="insert into "+tableName+" ("+reqFields+") values ("+reqValues+")";
		try{
			con=DBConnection.getConnection();
			ps=con.prepareStatement(query);
			int i=ps.executeUpdate();
			if(i>0){
				con.close();
				ps.close();
				return true;
			}
		}
		catch(Exception e){
			System.out.println("Insert Exception"+e);
		}
		return false;
	}

}
