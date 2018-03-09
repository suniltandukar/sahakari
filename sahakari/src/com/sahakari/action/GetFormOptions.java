package com.sahakari.action;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.sahakari.model.AgentModel;
import com.sahakari.dbconnection.DBConnection;
import com.sahakari.model.CustomerModel;
import com.sahakari.model.FamilyRelationModel;



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
	public List<FamilyRelationModel> getfamilyRelationNames(){
		List<FamilyRelationModel> list=new ArrayList<FamilyRelationModel>();
		String query="SELECT * from familyrelationtbl;";
		FamilyRelationModel fr=null;
		try {
			con=DBConnection.getConnection();
			ps=con.prepareStatement(query);
			rs=ps.executeQuery();
			while(rs.next())
			{
				fr=new FamilyRelationModel();
				fr.setRelationId(rs.getString("relationId"));
				fr.setRelationName(rs.getString("relationName"));
				list.add(fr);
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

	public List<AgentModel> getagent() {
		
		List<AgentModel> list=new ArrayList<AgentModel>();
		AgentModel agent=null;
		String query="select * from tblagent";
		
		try {
			con=DBConnection.getConnection();
			ps=con.prepareStatement(query);
			rs=ps.executeQuery();
			while(rs.next())
			{
				agent=new AgentModel();
				agent.setAgentid(rs.getString("agentid"));
				agent.setAgentname(rs.getString("agentname"));
				agent.setAgentphone(rs.getString("agentphone"));
				agent.setAgentaddress(rs.getString("agentaddress"));
				agent.setStaffcode(rs.getString("staffcode"));
				agent.setComissionBasis(rs.getString("comissionBasis"));
				list.add(agent);
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

	public List<CustomerModel> getDocumentType() {
		
		List<CustomerModel> list=new ArrayList<CustomerModel>();
		String query="select * from documenttype";
		con=DBConnection.getConnection();
		try {
			ps=con.prepareStatement(query);
			rs=ps.executeQuery();
			
			while(rs.next())
			{
				CustomerModel model=new CustomerModel();
				model.setDoctypeId(rs.getString("typeId"));
				model.setDoctypeName(rs.getString("typeName"));
				list.add(model);
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
