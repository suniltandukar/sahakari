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
		List<CustomerModel> list=new ArrayList<CustomerModel>();
		CustomerModel cust=null;
		try {
			con=DBConnection.getConnection();
			ps=con.prepareStatement(query);
			rs=ps.executeQuery();
			while(rs.next())
			{
				
				cust=new CustomerModel();
				cust.setMemberid(rs.getString("memberid"));
				cust.setRegistrationDate(rs.getString("registrationDate"));

				cust.setName(rs.getString("Name"));
				cust.setGender(rs.getString("Gender"));
				cust.setDob(rs.getString("Dob"));
				cust.setTypeName(rs.getString("TypeName"));
				cust.setStatusName(rs.getString("StatusName"));
				cust.setPid(rs.getString("pid"));
				list.add(cust);
			}
			if(list.size()>0){
				con.close();
				rs=null;
				ps=null;
				return list;
			}
		} catch (SQLException e) {
			System.out.println("viewCustomerDetail");
			e.printStackTrace();
		}
		
		
		return null;
	}
	public CustomerModel viewSpecificCustomerDetail(String id)
	{
		String query="Select customertbl.*, typetbl.typeName, statustbl.statusName from customertbl join typetbl on typetbl.typeid=customertbl.typeid join statustbl on statustbl.statusid=customertbl.statusid where customertbl.memberid='"+id+"' ";
		
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
				cust.setPdistid(rs.getString("pdistid"));
				cust.setPvdcmunid(rs.getString("pvdcmunid"));
				cust.setPwardno(rs.getString("pwardno"));
				cust.setPcity(rs.getString("pcity"));
				cust.setPtole(rs.getString("ptole"));
				cust.setTdistid(rs.getString("tdistid"));
				cust.setTvdcmunid(rs.getString("tvdcmunid"));
				cust.setTwardno(rs.getString("twardno"));
				cust.setTcity(rs.getString("tcity"));
				cust.setTtole(rs.getString("ttole"));
				cust.setCitizenshipNo(rs.getString("citizenshipNo"));
				cust.setCitizenshipIssuedFrom(rs.getString("citizenshipIssuedFrom"));
				cust.setTelno(rs.getString("telno"));
				cust.setMobno(rs.getString("mobno"));
				cust.setFatherName(rs.getString("fatherName"));
				cust.setSpouseName(rs.getString("spouseName"));
				cust.setDob(rs.getString("dob"));
				cust.setTypeid(rs.getString("typeid"));
				cust.setTypeName(rs.getString("typeName"));
				cust.setStatusid(rs.getString("statusid"));
				cust.setStatusName(rs.getString("statusName"));
				cust.setInputter(rs.getString("inputter"));
				cust.setAuthorizer(rs.getString("authorizer"));
				cust.setInsertStatus(rs.getString("insertStatus"));
				cust.setUpdateStatus(rs.getString("updateStatus"));
				cust.setDelStatus(rs.getString("delStatus"));
				
				return cust;
			}
		} catch (SQLException e) {
			System.out.println("viewCustomerDetail");
			e.printStackTrace();
		}
		
		
		return null;
	}

}
