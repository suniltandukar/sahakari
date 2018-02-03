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
import com.sahakari.model.FamilyRelationModel;

public class ViewDaoImpl implements ViewDao{
	PreparedStatement ps=null;
	Connection con=null;
	ResultSet rs=null;
	List<CustomerModel> list=null;
	CustomerModel cust=null;
	
	public List<CustomerModel> viewCustomerDetail()
	{
		String query="Select customertbl.*, typetbl.typeName, statustbl.statusName from customertbl left join typetbl on typetbl.typeid=customertbl.typeid left join statustbl on statustbl.statusid=customertbl.statusid ";
		List<CustomerModel> list=new ArrayList<CustomerModel>();
		CustomerModel cust=null;
		try {
			con=DBConnection.getConnection();
			ps=con.prepareStatement(query);
			rs=ps.executeQuery();
			while(rs.next())
			{
				
				cust=new CustomerModel();
				cust.setPid(rs.getString("pid"));
				cust.setMemberid(rs.getString("memberid"));
				cust.setRegistrationDate(rs.getString("registrationDate"));
				cust.setAddress(rs.getString("address"));
				cust.setName(rs.getString("Name"));
				cust.setGender(rs.getString("Gender"));
				cust.setDob(rs.getString("Dob"));
				cust.setTypeName(rs.getString("TypeName"));
				cust.setStatusName(rs.getString("StatusName"));
				cust.setPid(rs.getString("pid"));
				cust.setAddress(rs.getString("address"));
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
	public List<CustomerModel> viewSearchedCustomerDetail(String searchingby){
		String query="Select customertbl.*, typetbl.typeName, statustbl.statusName from customertbl left join typetbl on typetbl.typeid=customertbl.typeid left join statustbl on statustbl.statusid=customertbl.statusid where concat(customertbl.pid, customertbl.name) like '%"+searchingby+"%' ";
		List<CustomerModel> list=new ArrayList<CustomerModel>();
		CustomerModel cust=null;
		try {
			con=DBConnection.getConnection();
			ps=con.prepareStatement(query);
			rs=ps.executeQuery();
			while(rs.next())
			{
				
				cust=new CustomerModel();
				cust.setPid(rs.getString("pid"));
				cust.setMemberid(rs.getString("memberid"));
				cust.setRegistrationDate(rs.getString("registrationDate"));
				cust.setAddress(rs.getString("address"));
				cust.setName(rs.getString("Name"));
				cust.setGender(rs.getString("Gender"));
				cust.setDob(rs.getString("Dob"));
				cust.setTypeName(rs.getString("TypeName"));
				cust.setStatusName(rs.getString("StatusName"));
				cust.setPid(rs.getString("pid"));
				cust.setAddress(rs.getString("address"));
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
		String query="select * from customerdetail where pid=? ";
		try {
			con=DBConnection.getConnection();
			ps=con.prepareStatement(query);
			ps.setString(1, id);
			rs=ps.executeQuery();
			if(rs.next())
			{
				cust=new CustomerModel();
				cust.setPid(rs.getString("pid"));
				cust.setAddress(rs.getString("address"));
				cust.setMemberid(rs.getString("memberid"));
				cust.setRegistrationDate(rs.getString("registrationDate"));
				cust.setName(rs.getString("Name"));
				cust.setGender(rs.getString("Gender"));
				cust.setPdistid(rs.getString("pdistid"));
				cust.setPdistName(rs.getString("pdistname"));
				
				cust.setPvdcmunid(rs.getString("pvdcmunid"));
				cust.setPvdcName(rs.getString("pvdcname"));
				cust.setPwardno(rs.getString("pwardno"));
				cust.setPcity(rs.getString("pcity"));
				cust.setPtole(rs.getString("ptole"));
				cust.setTdistid(rs.getString("tdistid"));
				cust.setTdistName(rs.getString("tdistname"));
				cust.setTvdcmunid(rs.getString("tvdcmunid"));
				cust.setTvdcName(rs.getString("tvdcname"));
				cust.setTwardno(rs.getString("twardno"));
				cust.setTcity(rs.getString("tcity"));
				cust.setTtole(rs.getString("ttole"));
				cust.setTelno(rs.getString("telno"));
				cust.setMobno(rs.getString("mobno"));
				cust.setFatherName(rs.getString("fatherName"));
				//cust.setSpouseName(rs.getString("spouseName"));
				cust.setAgentid(rs.getString("agentid"));
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
	public List<CustomerModel> viewCustomerFamilyDetail(String id){
		List<CustomerModel> list=new ArrayList<CustomerModel>();
		CustomerModel cust=null;
		String query="select familydetail.* from familydetail join customertbl on customertbl.pid=familydetail.pid where customertbl.pid='"+id+"' ";
		try {
			con=DBConnection.getConnection();
			ps=con.prepareStatement(query);
			rs=ps.executeQuery();
			while(rs.next())
			{
				cust=new CustomerModel();
				cust.setCusRelation(rs.getString("cusRelation"));
				cust.setCusRelName(rs.getString("cusRelName"));
				cust.setDateOfBirth(rs.getString("dateOfBirth"));
				cust.setFcitizenshipNo(rs.getString("citizenshipNo"));
				cust.setFremarks(rs.getString("remarks"));
				list.add(cust);
			}
			if(list.size()>0){
				con.close();
				rs=null;
				ps=null;
				return list;
			}
		}
		catch(Exception e){
			System.out.println(e);
		}
		return null;
	}
	public List<CustomerModel> viewCustomerJobDetail(String id){
		List<CustomerModel> list=new ArrayList<CustomerModel>();
		CustomerModel cust=null;
		String query="select jobdetail.* from jobdetail join customertbl on customertbl.pid=jobdetail.pid where customertbl.pid='"+id+"' ";
		try {
			con=DBConnection.getConnection();
			ps=con.prepareStatement(query);
			rs=ps.executeQuery();
			while(rs.next())
			{
				cust=new CustomerModel();
				cust.setCusJob(rs.getString("cusJob"));
				cust.setCusInstitution(rs.getString("cusInstitution"));
				cust.setCusPost(rs.getString("cusPost"));
				cust.setIncomePeryear(rs.getString("incomePeryear"));
				cust.setJremarks(rs.getString("remarks"));
				
				list.add(cust);
			}
			if(list.size()>0){
				con.close();
				rs=null;
				ps=null;
				return list;
			}
		}
		catch(Exception e){
			System.out.println(e);
		}
		return null;
	}
	public List<CustomerModel> viewCustomerBankDetail(String id){
		List<CustomerModel> list=new ArrayList<CustomerModel>();
		CustomerModel cust=null;
		String query="select bankaccountdetail.* from bankaccountdetail join customertbl on customertbl.pid=bankaccountdetail.pid where customertbl.pid='"+id+"' ";
		try {
			con=DBConnection.getConnection();
			ps=con.prepareStatement(query);
			rs=ps.executeQuery();
			while(rs.next())
			{
				cust=new CustomerModel();
				cust.setBankName(rs.getString("bankName"));
				cust.setAccountNumber(rs.getString("accountNumber"));
				cust.setAccountType(rs.getString("accountType"));
				cust.setBremarks(rs.getString("remarks"));
				list.add(cust);
			}
			if(list.size()>0){
				con.close();
				rs=null;
				ps=null;
				return list;
			}
		}
		catch(Exception e){
			System.out.println(e);
		}
		return null;
	}
	public List<CustomerModel> viewShareCertificate()
	{
		String query="SELECT sharecertificate.*, customertbl.memberid from sharecertificate left JOIN customertbl on sharecertificate.pid=customertbl.pid";
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
				cust.setPid(rs.getString("pid"));
				cust.setShareid(rs.getString("shareid"));
				cust.setShareCertificateId(rs.getString("id"));
				cust.setShareCertNo(rs.getString("shareCertNo"));
				cust.setShareFrom(rs.getString("shareFrom"));
				cust.setShareTo(rs.getString("shareTo"));
				cust.setTotalShareNos(rs.getString("totalShareNos"));
				cust.setShareRate(rs.getString("shareRate"));
				cust.setShareAmount(rs.getString("shareAmount"));
				cust.setShareDate(rs.getString("shareDate"));
				cust.setInputter(rs.getString("inputter"));
				list.add(cust);
			}
			if(list.size()>0){
				con.close();
				ps=null;
				rs=null;
				return list;
			}
		}
		catch(Exception e){
			System.out.println(e);
		}
		return null;
	}
	public CustomerModel viewSpecificShareCertificate(String id){
		String query="SELECT sharecertificate.*, customertbl.memberid from sharecertificate left JOIN customertbl on sharecertificate.pid=customertbl.pid where sharecertificate.id=?";
		CustomerModel cust=null;
		try {
			con=DBConnection.getConnection();
			ps=con.prepareStatement(query);
			ps.setString(1, id);
			rs=ps.executeQuery();
			while(rs.next())
			{
				cust=new CustomerModel();
				cust.setMemberid(rs.getString("memberid"));
				cust.setPid(rs.getString("pid"));
				cust.setShareCertificateId(rs.getString("id"));
				cust.setShareCertNo(rs.getString("shareCertNo"));
				cust.setShareFrom(rs.getString("shareFrom"));
				cust.setShareTo(rs.getString("shareTo"));
				cust.setTotalShareNos(rs.getString("totalShareNos"));
				cust.setShareRate(rs.getString("shareRate"));
				cust.setShareAmount(rs.getString("shareAmount"));
				cust.setShareDate(rs.getString("shareDate"));
				cust.setInputter(rs.getString("inputter"));
				con.close();
				ps=null;
				rs=null;
				return cust;
			}
		}
		catch(Exception e){
			System.out.println(e);
		}
		return null;
	}
	public List<CustomerModel> viewCustomerDocumentDetail(String id){
		String query="select * from documentdetails where pid=?";
		List<CustomerModel> list=new ArrayList<CustomerModel>();
		CustomerModel cust=null;
		try {
			con=DBConnection.getConnection();
			ps=con.prepareStatement(query);
			ps.setString(1, id);
			rs=ps.executeQuery();
			while(rs.next())
			{
				cust=new CustomerModel();
				cust.setDocumentType(rs.getString("documentType"));
				cust.setDocumentNumber(rs.getString("documentNumber"));
				cust.setIssuedBy(rs.getString("issuedBy"));
				cust.setIssuedDate(rs.getString("issuedDate"));
				cust.setIssuedDateen(rs.getString("issuedDateen"));
				cust.setExpiryDate(rs.getString("expiryDate"));
				cust.setExpiryDateen(rs.getString("expiryDateen"));
				list.add(cust);
			}
			if(list.size()>0){
				con.close();
				ps.close();
				rs=null;
				return list;
			}
		}
		catch(Exception e){
			System.out.println(e);
		}
		return null;
	}
	public String viewAccountName(String accountNumber){
		try{
			String query="select accountName from accountstbl where accountNumber='"+accountNumber+"'";
			con=DBConnection.getConnection();
			ps=con.prepareStatement(query);
			rs=ps.executeQuery();
			if(rs.next()){
				String accountName=rs.getString("accountName");
				return accountName;
			}
		}catch(Exception e){
			System.out.println(e);
		}
		return null;
	}
	

}
