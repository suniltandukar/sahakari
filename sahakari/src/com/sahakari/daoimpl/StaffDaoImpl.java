package com.sahakari.daoimpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.sahakari.dao.StaffDao;
import com.sahakari.dbconnection.DBConnection;
import com.sahakari.model.StaffModel;

public class StaffDaoImpl implements StaffDao{
	Connection con=null;
	PreparedStatement pstmt=null;
	ResultSet rs=null;
	public boolean insertStaff(StaffModel s){
		String query="insert into staff values(?,?,?,?,?,?)";
		con=DBConnection.getConnection();
		try {
			pstmt=con.prepareStatement(query);
			pstmt.setString(1,s.getStaffCode() );
			pstmt.setString(2,s.getStaffName() );
			pstmt.setString(3,s.getStaffAddress() );
			pstmt.setString(4,s.getPost() );
			pstmt.setString(5,s.getBranchCode() );
			pstmt.setString(6,s.getPid() );
			int i=pstmt.executeUpdate();
			if(i>0){
				return true;
			}
			else{
				return false;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return false;
	}
	
	public List<StaffModel> getStaff()
	{
		String query="select * from staff";
		List<StaffModel> list=new ArrayList<StaffModel>();
		StaffModel sm=null;
		con=DBConnection.getConnection();
		try {
			pstmt=con.prepareStatement(query);
			rs=pstmt.executeQuery();
			while(rs.next())
			{
				sm=new StaffModel();
				sm.setBranchCode(rs.getString("branchCode"));
				sm.setPid(rs.getString("Pid"));
				sm.setPost(rs.getString("Post"));
				sm.setStaffAddress(rs.getString("staffAddress"));
				sm.setStaffCode(rs.getString("staffCode"));
				sm.setStaffName(rs.getString("staffName"));
				list.add(sm);
				
			}
			if(list.size()>0){
			return list;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
		
	}

}
