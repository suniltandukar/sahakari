package com.sahakari.action;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.sahakari.dbconnection.DBConnection;
import com.sahakari.model.CustomerModel;



public class GetFormOptions {
	Connection con=null;
	PreparedStatement ps=null;
	ResultSet rs=null;
	String clientdb="sahakarisystemdb";
	public List<CustomerModel> getDistrict(){
		List<CustomerModel> list=new ArrayList<CustomerModel>();
		CustomerModel c=null;
		String query="select * from districtcodes";
		try{
			con=DBConnection.getConnection();
			ps=con.prepareStatement(query);
			rs=ps.executeQuery();
			while(rs.next()){
				c=new CustomerModel();
				c.setDistrictCode(rs.getString("DistrictCode"));
				c.setDistrictName(rs.getString("DistrictName"));
				list.add(c);
			}
		}
		catch(Exception e){
			System.out.println(e);
		}
		return list;
	}

	public List<CustomerModel> getType(){
		List<CustomerModel> list=new ArrayList<CustomerModel>();
		CustomerModel c=null;
		String query="select * from typetbl";
		try{
			con=DBConnection.getConnection();
			ps=con.prepareStatement(query);
			rs=ps.executeQuery();
			while(rs.next()){
				c=new CustomerModel();
				c.setTypeid(rs.getString("typeid"));
				c.setTypeName(rs.getString("typeName"));
				list.add(c);
			}
		}
		catch(Exception e){
			System.out.println(e);
		}
		return list;
	}
	public List<CustomerModel> getStatus(){
		List<CustomerModel> list=new ArrayList<CustomerModel>();
		CustomerModel c=null;
		String query="select * from statustbl";
		try{
			con=DBConnection.getConnection();
			ps=con.prepareStatement(query);
			rs=ps.executeQuery();
			while(rs.next()){
				c=new CustomerModel();
				c.setStatusid(rs.getString("statusid"));
				c.setStatusName(rs.getString("statusName"));
				list.add(c);
			}
			if(list.size()>0){
				return list;
			}
		}
		catch(Exception e){
			System.out.println(e);
		}
		return null;
	}
	

}
