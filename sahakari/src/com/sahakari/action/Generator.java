package com.sahakari.action;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import com.mysql.jdbc.Connection;
import com.sahakari.dbconnection.DBConnection;

public class Generator {
	Connection con=null;
	PreparedStatement ps=null;
	ResultSet rs=null;
	
	public String accountidgenerator(String branchid, String memberid,String accountno) {
		con=DBConnection.getConnection();
	 branchid="0001";
		String code="";
		try{
			
			//String query="select * from inventorytbl where itemcode LIKE '"+branchid+'%'+accounttypeid+"' order by itemcode DESC;";
			String query="select * from customertbl where memberid '"+branchid+memberid+"'";
			ps=con.prepareStatement(query);
			ResultSet rs=ps.executeQuery();
			
			if(rs.next()) {
				int number=0;
				
				code = rs.getString("memberid");
				String[] splitCode = code.split(accountno);
				number=Integer.parseInt(splitCode[1]);
				number++;
				String num=Integer.toString(number);
				if(num.length()<6){
					while(num.length()<6){
						num="0"+num;
					}
				}
				code = branchid+accountno+num;
				System.out.println(code);
			}
			else{
				System.out.println("else part");
				code=branchid+accountno+"000001";
			}
		}
		catch(Exception e){
			System.out.println("get item code error"+e);
		}
		return code;
	}
	public String transactionidgenerator(String branchid) {
		con=DBConnection.getConnection();
		String transactionid="";
		
		DateFormat yy = new SimpleDateFormat("yy");
		DateFormat mm = new SimpleDateFormat("MM");
		DateFormat dd = new SimpleDateFormat("dd");
		
		Date currentDate=new Date();
		System.out.println(yy.format(currentDate));
		System.out.println(mm.format(currentDate));
		System.out.println(dd.format(currentDate));
		String day=dd.format(currentDate);
		String month=mm.format(currentDate);
		String yr=yy.format(currentDate);
		
		try{
			String query="select * from transactiontbl where Id LIKE '%FT"+yr+month+day+"%' order by Id DESC;";
			ps=con.prepareStatement(query);
			 rs=ps.executeQuery();
			
			if(rs.next()) {
				int number=0;
				transactionid = rs.getString("Id");
				String[] splitCode = transactionid.split(day);
				System.out.println("tid"+splitCode[1]);
				number=Integer.parseInt(splitCode[1]);
				number++;
				String num=Integer.toString(number);
				if(num.length()<4){
					while(num.length()<4){
						num="0"+num;
					}
				}
				transactionid = "FT"+yr+month+day+branchid+num;
				System.out.println(transactionid);
				
			}
			else{
				transactionid= "FT"+yr+month+day+branchid+"0001";
				System.out.println(transactionid);
			}
		}
		catch(Exception e){
			System.out.println("get transaction id error"+e);
		}
		return transactionid;
	}
	public String tellertransactionidgenerator(String branchid) {
		con=DBConnection.getConnection();
		String transactionid="";
		
		DateFormat yy = new SimpleDateFormat("yy");
		DateFormat mm = new SimpleDateFormat("MM");
		DateFormat dd = new SimpleDateFormat("dd");
		
		Date currentDate=new Date();
		System.out.println(yy.format(currentDate));
		System.out.println(mm.format(currentDate));
		System.out.println(dd.format(currentDate));
		String day=dd.format(currentDate);
		String month=mm.format(currentDate);
		String yr=yy.format(currentDate);
		
		try{
			String query="select * from tellertransactiontbl where transactionId LIKE '%TT"+yr+month+day+"%' order by transactionId DESC;";
			ps=con.prepareStatement(query);
			 rs=ps.executeQuery();
			
			if(rs.next()) {
				int number=0;
				transactionid = rs.getString("transactionId");
				String[] splitCode = transactionid.split(day);
				System.out.println("tid"+splitCode[1]);
				number=Integer.parseInt(splitCode[1]);
				number++;
				String num=Integer.toString(number);
				if(num.length()<4){
					while(num.length()<4){
						num="0"+num;
					}
				}
				transactionid = "TT"+yr+month+day+branchid+num;
				System.out.println(transactionid);
				
			}
			else{
				transactionid= "TT"+yr+month+day+branchid+"0001";
				System.out.println(transactionid);
			}
		}
		catch(Exception e){
			System.out.println("get tellertransaction id error"+e);
		}
		return transactionid;
	}

	public String newTelleridgenerator(String branchid,String companyId,String categoryid) {
		con=DBConnection.getConnection();
		String tellerId="";
		
		try{
			String query="select * from teller where tellerId LIKE '%FIN"+companyId+branchid+categoryid+"%' order by tellerId DESC;";
			ps=con.prepareStatement(query);
			 rs=ps.executeQuery();
			
			if(rs.next()) {
				int tillid=0;
				tellerId = rs.getString("tellerId");
				String till=tellerId.substring(14,18);
				 tillid=Integer.parseInt(till);
				tillid++;
				String tillId=Integer.toString(tillid);
				if(tillId.length()<4){
					while(tillId.length()<4){
						tillId="0"+tillId;
					}
				}
				tellerId = "FIN"+companyId+branchid+categoryid+tillId;
				
			}
			else{
				tellerId= "FIN"+companyId+branchid+categoryid+"0001";
				
			}
			con.close();
		}
		catch(Exception e){
			System.out.println("get tellertransaction id error"+e);
		}
		return tellerId;
	}
	public String multitransactionidgenerator(String branchid) {
		con=DBConnection.getConnection();
		String transactionid="";
		
		DateFormat yy = new SimpleDateFormat("yy");
		DateFormat mm = new SimpleDateFormat("MM");
		DateFormat dd = new SimpleDateFormat("dd");
		
		Date currentDate=new Date();
		System.out.println(yy.format(currentDate));
		System.out.println(mm.format(currentDate));
		System.out.println(dd.format(currentDate));
		String day=dd.format(currentDate);
		String month=mm.format(currentDate);
		String yr=yy.format(currentDate);
		
		try{
			String query="select transactionId from multipletransactiontbl where transactionId LIKE '%MT"+yr+month+day+branchid+"%' order by id DESC;";
			ps=con.prepareStatement(query);
			 rs=ps.executeQuery();
			
			if(rs.next()) {
				int number=0;
				transactionid = rs.getString("transactionId");
				System.out.println(transactionid);
				System.out.println(branchid);
				String[] splitCode = transactionid.split(yr+month+day);
				
				System.out.println("tid"+splitCode[1]);
				number=Integer.parseInt(splitCode[1]);
				number++;
				String num=String.format("%06d", number);
				
				transactionid = "MT"+yr+month+day+num;
				System.out.println(transactionid);
				
			}
			else{
				transactionid= "MT"+yr+month+day+branchid+"001";
				System.out.println(transactionid);
			}
		}
		catch(Exception e){
			System.out.println("get transaction id error"+e);
		}
		return transactionid;
	}
	public String addHash(String givenValue){
		String[] str=givenValue.split(",");
		String result=null;
		String b="";
		for(int i=0;i<str.length;i++){
			result="#"+str[i];
			b=result+","+b;
		}
		if(b!=null){
			 givenValue=b.substring(0, b.length() - 1);
			 return givenValue;
		}
		return null;
	}
	public String customeridGenerator() {
		int custid;
		String id;
		con=DBConnection.getConnection();
		String query="select max(pid) as pid from customertbl ";
		try {
			ps=con.prepareStatement(query);
			rs=ps.executeQuery();
			
			if(rs.next())
			{
				if(rs.getString("pid")!=null){
				 custid=Integer.parseInt(rs.getString("pid"))+1;
				 id=Integer.toString(custid);
				System.out.println(id);
				return id;
				}
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
		
	}
	
	public String ShareCertificateIdGenerator(String branchid,String companyId,String memberId) {
		con=DBConnection.getConnection();
		String shareCertNo="";
		
		
		
		try{
			String query="select * from sharecertificate where shareCertNo LIKE '%SHA"+companyId+branchid+memberId+"%' order by shareCertNo DESC;";
			ps=con.prepareStatement(query);
			 rs=ps.executeQuery();
			
			if(rs.next()) {
				int tillid=0;
				shareCertNo = rs.getString("shareCertNo");
				
				String till=shareCertNo.substring(15,18);
				 tillid=Integer.parseInt(till);
				tillid++;
				String tillId=Integer.toString(tillid);
				if(tillId.length()<3){
					while(tillId.length()<3){
						tillId="0"+tillId;
					}
				}
				shareCertNo = "SHA"+companyId+branchid+memberId+tillId;
				
			}
			else{
				shareCertNo= "SHA"+companyId+branchid+memberId+"001";
				
			}
			con.close();
		}
		catch(Exception e){
			System.out.println("get tellertransaction id error"+e);
		}
		return shareCertNo;
	}
	
	public String accountGenerator(String branchid,String companyId,String categoryid) {
		con=DBConnection.getConnection();
		 String finalAccountNumber = "";
		
		try{
			String query="select max(accountNumber) as maxAccountNumber from accountstbl where accountNumber LIKE 'FIN"+companyId+branchid+categoryid+"%'";
			ps=con.prepareStatement(query);
			 rs=ps.executeQuery();
		
				String maxAccountNumber = "";
				while(rs.next()){
					maxAccountNumber = rs.getString("maxAccountNumber");
				}
				if(maxAccountNumber==null || maxAccountNumber.isEmpty())
				{
					
					finalAccountNumber= "FIN"+companyId+branchid+categoryid+"0001";
				}
			
			else{
				String lastDigit = maxAccountNumber.substring(13,17);
				
				int lastDigitInc = Integer.parseInt(lastDigit)+1;
				String finalDigits = String.format("%04d", lastDigitInc);
			
				finalAccountNumber = "FIN"+companyId+branchid+categoryid+finalDigits;
			}
			con.close();
		}
		catch(Exception e){
			System.out.println("Generator > accountGenerator error "+e);
		}
		return finalAccountNumber;
	}
	
}
