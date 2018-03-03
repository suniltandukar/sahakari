package com.sahakari.daoimpl;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONObject;

import com.google.gson.Gson;
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
	
	public JSONObject viewSearchedCustomerDetail(String memberid, String membername){
		String query="";
		String condition="";
		if(membername.equals("")){
			condition="customertbl.pid='"+memberid+"'";
			
		}
		else if(memberid.equals("")){
			condition="customertbl.name='"+membername+"'";
		}
		else{
			condition="concat(pid,name) like  '"+memberid+"%"+membername+"%'";
		}
		query="Select customertbl.*, typetbl.typeName, statustbl.statusName from customertbl left join typetbl on typetbl.typeid=customertbl.typeid left join statustbl on statustbl.statusid=customertbl.statusid where "+condition;
		JSONObject jObjDevice=null;
		try {
			con=DBConnection.getConnection();
			ps=con.prepareStatement(query);
			rs=ps.executeQuery();
			JSONArray jsonArray=new JSONArray();
			
			while(rs.next())
			{
				
				JSONObject jobj = new JSONObject();
				String  memberid_json=rs.getString("pid");
			    String legacyid_json=rs.getString("memberid");
			    String name_json=rs.getString("name");
			    String gender_json=rs.getString("gender");
			    String address_json=rs.getString("address");
			   
			   
					jobj.put("pid", memberid_json);
					jobj.put("memberid", legacyid_json);
					jobj.put("name", name_json);
				    jobj.put("gender", gender_json);
				    jobj.put("address", address_json);
				    jsonArray.put(jobj);
				    
				    String jsonString=jobj.toString();
				    Gson gson=new Gson();
					CustomerModel cumo=gson.fromJson(jsonString, CustomerModel.class);
					cumo.getAccountNumber();
					System.out.println("ysl"+cumo.toString());
					System.out.println(jsonString);
				    
				    System.out.println("Json is "+ jobj);
			  
			    	 jObjDevice = new JSONObject();
					    jObjDevice.put("data", jsonArray);

			}
			
		} catch (Exception e) {
			System.out.println("viewCustomerDetail");
			e.printStackTrace();
		}
		
		
		return jObjDevice;
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
				cust.setAgentName(rs.getString("agentname"));
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
	public JSONArray viewAccountName(String accountNumber){
		
		try{
			String query="select accountstbl.pid,accountstbl.accountName, customertbl.name from accountstbl left join customertbl on customertbl.pid=accountstbl.pid where accountstbl.accountNumber='"+accountNumber+"'";
			con=DBConnection.getConnection();
			ps=con.prepareStatement(query);
			rs=ps.executeQuery();
			 if(!rs.next()){
				 System.out.println("0");
		        }else{
		            JSONArray array=new JSONArray();
		            do{
		                JSONObject obj = new JSONObject();
		                obj.put("memberid",rs.getString("pid"));
		                obj.put("accountname",rs.getString("accountName"));
		                obj.put("membername",rs.getString("name"));
		                array.put(obj.toString());
		            }while(rs.next());
		           return array;
		        }
		}catch(Exception e){
			System.out.println(e);
		}
		return null;
	}
	
	//Json datas
	public JSONObject viewCustomerDetail()
	{

		//HttpServletResponse response = null;
		String query="Select customertbl.*, typetbl.typeName, statustbl.statusName from customertbl left join typetbl on typetbl.typeid=customertbl.typeid left join statustbl on statustbl.statusid=customertbl.statusid ";
		//List<CustomerModel> list=new ArrayList<CustomerModel>();
		JSONObject jObjDevice=null;
		//CustomerModel cust=null;
		try {
			con=DBConnection.getConnection();
			ps=con.prepareStatement(query);
			rs=ps.executeQuery();
			JSONArray jsonArray=new JSONArray();
			
			while(rs.next())
			{
				
				JSONObject jobj = new JSONObject();
				String  memberid_json=rs.getString("pid");
			    String legacyid_json=rs.getString("memberid");
			    String name_json=rs.getString("name");
			    //String registrationdate_json=rs.getString("registrationDate");
			    String gender_json=rs.getString("gender");
			    //String dob_json=rs.getString("dob");
			    String address_json=rs.getString("address");
			   
			   
					jobj.put("pid", memberid_json);
					jobj.put("memberid", legacyid_json);
					jobj.put("name", name_json);
				    //jobj.put("registrationdate", registrationdate_json);
				    jobj.put("gender", gender_json);
				    //jobj.put("dob", dob_json);
				    jobj.put("address", address_json);
				    jsonArray.put(jobj);
				    
				    String jsonString=jobj.toString();
				    Gson gson=new Gson();
					CustomerModel cumo=gson.fromJson(jsonString, CustomerModel.class);
					cumo.getAccountNumber();
			  
			    	 jObjDevice = new JSONObject();
					    jObjDevice.put("data", jsonArray);
					    /*JSONObject jObjDeviceList = new JSONObject();
					jObjDeviceList.put("memberlist", jObjDevice );*/
			
					  // Writing to a file  
		         /*   File file=new File("C:/Users/Sunil/Desktop/data.json");  
		            file.createNewFile();  
		            FileWriter fileWriter = new FileWriter(file);  
		            System.out.println("Writing JSON object to file");  
		            System.out.println("-----------------------");  
		            System.out.print(jObjDevice);  

		            fileWriter.write(jObjDevice.toString());  
		            fileWriter.flush();  
		            fileWriter.close();  

			*/
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return jObjDevice;
	}
	public JSONArray viewShareCertificate()
	{
		String query="SELECT sharecertificate.*, customertbl.memberid from sharecertificate left JOIN customertbl on sharecertificate.pid=customertbl.pid";
		JSONObject jObjDevice=null;
		List<CustomerModel> list=new ArrayList<CustomerModel>();
		CustomerModel cust=null;
		JSONArray jsonArray=new JSONArray();
		try {
			
			con=DBConnection.getConnection();
			ps=con.prepareStatement(query);
			rs=ps.executeQuery();
			while(rs.next())
			{
				
				JSONObject jobj = new JSONObject();
				String  memberid_json=rs.getString("memberid"),
						pid_json=rs.getString("pid"),
						shareid_json=rs.getString("shareid"),
						sharecertificateid_json=rs.getString("id"),
						sharecertno_json=rs.getString("shareCertNo"),
						sharefrom_json=rs.getString("shareFrom"),
						shareto_json=rs.getString("shareTo"),
						totalsharenos_json=rs.getString("totalShareNos"),
				sharerate_json=rs.getString("shareRate"),
				shareamount_json=rs.getString("shareAmount"),
				sharedate_json=rs.getString("shareDate"),
				inputter_json=rs.getString("inputter");

				jobj.put("memberid", memberid_json);
				jobj.put("pid",pid_json);
				jobj.put("shareid",shareid_json);
				jobj.put("sharecertificateid",sharecertificateid_json);
				jobj.put("sharecertno",sharecertno_json);
				jobj.put("sharefrom",sharefrom_json);
				jobj.put("shareto",shareto_json);
				jobj.put("totalsharenos",totalsharenos_json);
				jobj.put("sharerate",sharerate_json);
				jobj.put("shareamount",shareamount_json);
				jobj.put("sharedate",sharedate_json);
				jobj.put("inputter",inputter_json);
				
				 jsonArray.put(jobj);
				 
				 /*jObjDevice = new JSONObject();
				 jObjDevice.put("data", jsonArray);*/
			}
			
		}
		catch(Exception e){
			System.out.println(e);
		}
		return jsonArray;
	}
}
