package com.sahakari.daoimpl;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.Connection;
import com.sahakari.dao.ViewDao;
import com.sahakari.dbconnection.DBConnection;
import com.sahakari.model.CustomerModel;

public class ViewDaoImpl implements ViewDao{
	PreparedStatement ps=null;
	Connection con=null;
	ResultSet rs=null;
	List<CustomerModel> list=null;
	CustomerModel cust=null;

	public List<CustomerModel> viewCustomerDetail()
	{
		String query="Select customertbl.*, typetbl.typeName, statustbl.statusName from customertbl join typetbl on typetbl.typeid=customertbl.typeid join statustbl on statustbl.statusid=customertbl.statusid ";
		list=new ArrayList<CustomerModel>();
		try {
			con=DBConnection.getConnection();
			ps=con.prepareStatement(query);
			rs=ps.executeQuery();
			if(rs.next())
			{
				
				cust=new CustomerModel();
				cust.setMemberid(rs.getString("memberid"));
				cust.setRegistrationDate(rs.getString("registrationDate"));
				cust.setName(rs.getString("Name"));
				cust.setGender(rs.getString("Gender"));
				cust.setDob(rs.getString("Dob"));
				cust.setTypeName(rs.getString("TypeName"));
				cust.setStatusName(rs.getString("StatusName"));
				list.add(cust);
				
				return list;
			}
		} catch (SQLException e) {
			System.out.println("viewCustomerDetail");
			e.printStackTrace();
		}
		
		
		return null;
	}

}
