package com.sahakari.user.daoImpl;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.Connection;
import com.sahakari.dbconnection.DBConnection;
import com.sahakari.model.UserModel;
import com.sahakari.user.dao.UserDao;

public class UserDaoImpl implements UserDao {
	PreparedStatement ps=null;
	Connection con=null;
	ResultSet rs=null;
	List<UserModel> list=null;
	UserModel usermodel=null;
	
	public boolean adduserdao(String username)
	{
		String query="insert into usertbl(username,password) values(?,?)";
		int rs=0;
		con=DBConnection.getConnection();
		try {
			ps=con.prepareStatement(query);
			ps.setString(1, username);
			ps.setString(2, username);
			rs=ps.executeUpdate();
			if(rs>0)
			{
				return true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		System.out.println("adduserdao error");
		}
		return false;
		
	}
	
	public List<UserModel> getexistingusers()
	{
		
		String query="select * from usertbl";
		list=new ArrayList<UserModel>();
		con=DBConnection.getConnection();
		try {
			ps=con.prepareStatement(query);
			rs=ps.executeQuery();
			
			
			
			while(rs.next())
			{
				usermodel=new UserModel();
				usermodel.setUsername(rs.getString("username"));
				usermodel.setPassword(rs.getString("password"));
				list.add(usermodel);
			}
			
			if(list.size()>0)
			{
				return list;
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
		
	}

}
