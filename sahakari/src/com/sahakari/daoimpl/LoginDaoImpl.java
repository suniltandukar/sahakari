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
		String query="Select * from usertbl where username=? and password=? and staffCode=?";
		try{
			con=DBConnection.getConnection();
			ps=con.prepareStatement(query);
			ps.setString(1, u.getUsername());
			ps.setString(2, u.getPassword());
			ps.setString(3, u.getStaffCode());
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
	public boolean checkCurStatus(UserModel u){
		String query="Select curStatus from usertbl where username=? and password=? and staffCode=?";
		try{
			con=DBConnection.getConnection();
			ps=con.prepareStatement(query);
			ps.setString(1, u.getUsername());
			ps.setString(2, u.getPassword());
			ps.setString(3, u.getStaffCode());
			rs=ps.executeQuery();
		while(rs.next()){
				if(rs.getString("curStatus").equals("1")){
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
	public boolean setCurStatus(UserModel u, int curStatus){
		String query="update usertbl set curStatus='"+curStatus+"' where username=? and password=? and staffCode=?";
		try{
			con=DBConnection.getConnection();
			ps=con.prepareStatement(query);
			ps.setString(1, u.getUsername());
			ps.setString(2, u.getPassword());
			ps.setString(3, u.getStaffCode());
		int i=ps.executeUpdate();
		if(i>0){
			con.close();
			ps.close();
			return true;
		}
		}catch(Exception e){
			System.out.println(e);
		}
		return false;
	}
	public UserModel getUserDetail(UserModel u){
		UserModel um=null;
		ResultSet rs=null;
		String query="Select *,branchtbl.companyId from usertbl join branchtbl on usertbl.branchCode=branchtbl.branchId where usertbl.username=? and usertbl.password=? and usertbl.staffCode=?";
		try{
			con=DBConnection.getConnection();
			ps=con.prepareStatement(query);
			ps.setString(1, u.getUsername());
			ps.setString(2, u.getPassword());
			ps.setString(3, u.getStaffCode());
			rs=ps.executeQuery();
			if(rs.next()){
				um=new UserModel();
				um.setUsername(rs.getString("username"));
				um.setPassword(rs.getString("password"));
				um.setStaffCode(rs.getString("staffCode"));
				um.setStatus(rs.getString("status"));
				um.setGivenrole(rs.getString("givenrole"));
				um.setFunctionAllowed(rs.getString("functionAllowed"));
				um.setAdditionalFunctions(rs.getString("additionalFunctions"));
				um.setBranchCode(rs.getString("branchCode"));
				um.setBranchAllowed(rs.getString("branchAllowed"));
				um.setBranchAllowedFunctions(rs.getString("branchAllowedFunctions"));
				um.setCompanyId(rs.getString("companyId"));
			}
		}catch(Exception e){
			System.out.println(e);
		}
		return um;
	}
}
