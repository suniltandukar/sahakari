package com.sahakari.daoimpl;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.Connection;
import com.sahakari.dao.LoginDao;
import com.sahakari.dbconnection.DBConnection;
import com.sahakari.model.CustomerModel;
import com.sahakari.model.UserModel;

public class LoginDaoImpl implements LoginDao {
	PreparedStatement ps=null;
	ResultSet rs=null;
	Connection con=null;
	int i=0;
	public boolean checkuser(UserModel u){
		String query="Select * from usertbl where username=? and password=?";
		try{
			con=DBConnection.getConnection();
			ps=con.prepareStatement(query);
			ps.setString(1, u.getUsername());
			ps.setString(2, u.getPassword());
			rs=ps.executeQuery();
		while(rs.next()){
				if(rs.getString("status").equals("1")){
				con.close();
				ps.close();
				return true;
				}
			}
		}catch(Exception e){
			System.out.println(e);
		}
		return false;
		
	}
	public UserModel getUserDetail(UserModel u){
		UserModel um=null;
		String query="Select * from usertbl where username=? and password=?";
		try{
			con=DBConnection.getConnection();
			ps=con.prepareStatement(query);
			ps.setString(1, u.getUsername());
			ps.setString(2, u.getPassword());
			rs=ps.executeQuery();
			while(rs.next()){
				um=new UserModel();
				um.setUsername(rs.getString("username"));
				um.setPassword(rs.getString("password"));
				um.setStatus(rs.getString("status"));
				um.setGivenrole(rs.getString("givenrole"));
				um.setFunctionAllowed(rs.getString("functionAllowed"));
				um.setAdditionalFunctions(rs.getString("additionalFunctions"));
				con.close();
				ps.close();
				return um;
			}
		}catch(Exception e){
			System.out.println(e);
		}
		return null;
	}
}
