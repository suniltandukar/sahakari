package com.sahakari.daoimpl;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.sahakari.dao.AdminSettingDao;
import com.sahakari.dbconnection.DBConnection;
import com.sahakari.model.BasicInterestRateModel;

public class AdminSettingDaoImpl implements AdminSettingDao{
	Connection con=null;
	PreparedStatement ps=null;
	public boolean insertBasicIntrate(BasicInterestRateModel b){
		String query="insert into basicintrate_deposit values (?,?,?,?,?) ";
		try{
			con=DBConnection.getConnection();
			ps=con.prepareStatement(query);
			ps.setString(1,b.getId() );
			ps.setString(2, b.getCategoryId());
			ps.setString(3, b.getIntRate());
			ps.setString(4, b.getEffectiveDateNp());
			ps.setString(5, b.getEffectiveDateEn());
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
