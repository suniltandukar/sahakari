package com.sahakari.action;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.mysql.jdbc.Connection;
import com.sahakari.dbconnection.DBConnection;

public class Generator {
	Connection con=null;
	PreparedStatement ps=null;
	ResultSet rs=null;
	public Generator(String branchdb){
		con=DBConnection.getConnection();
	}
	public String accountidgenerator(String branchid, String memberid,String accountno) {
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
	public String transactionidgenerator(String branchcode, String year) {
		String transactionid="";
		try{
			String query="select * from inventorytbl where transactionid LIKE '%"+year+branchcode+"%' order by transactionid DESC;";
			ps=con.prepareStatement(query);
			 rs=ps.executeQuery();
			
			if(rs.next()) {
				int number=0;
				transactionid = rs.getString("transactionid");
				String[] splitCode = transactionid.split(branchcode);
				System.out.println("tid"+splitCode[1]);
				number=Integer.parseInt(splitCode[1]);
				number++;
				number++;
				String num=Integer.toString(number);
				if(num.length()<4){
					while(num.length()<4){
						num="0"+num;
					}
				}
				transactionid = year+branchcode+num;
				System.out.println(transactionid);
				
			}
			else{
				transactionid=year+branchcode+"0001";
				System.out.println(transactionid);
			}
		}
		catch(Exception e){
			System.out.println("get transaction id error"+e);
		}
		return transactionid;
	}
}
