package com.sahakari.daoimpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.sahakari.dao.StaffDao;
import com.sahakari.dbconnection.DBConnection;
import com.sahakari.model.StaffModel;

public class StaffDaoImpl implements StaffDao{
	Connection con=null;
	PreparedStatement pstmt=null;
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

}
