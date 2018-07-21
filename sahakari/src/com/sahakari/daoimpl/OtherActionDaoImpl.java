package com.sahakari.daoimpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.sahakari.dbconnection.DBConnection;
import com.sahakari.dao.OtherActionDAO;
import com.sahakari.model.Document;
import com.sahakari.model.TellerModel;

public class OtherActionDaoImpl implements OtherActionDAO {
	PreparedStatement ps=null;
	Connection con=null;
	ResultSet rs=null;
	public String getUploadDirectory(){
		String uploaddir="C:/Users/Sunil/Desktop/adbl/uploaded images";
		String query="select uploadpath from documentportpathtbl";
		try{
			con=DBConnection.getConnection();
			ps=con.prepareStatement(query);
			rs=ps.executeQuery();
			if(rs.next()){
				uploaddir=rs.getString("uploadpath");
				con.close();
				ps.close();
				rs=null;
			}
		}
		catch(Exception e){
			System.out.println(e);
		}
		return uploaddir;
	}
	public boolean uploaddocumentDao(Document document) {
		
		int rs=0;
		con=DBConnection.getConnection();
		
		try {
			ps=con.prepareStatement("insert into memberdocuments(memberid,documenttype,originalfilename,generatedname,documentpath) values(?,?,?,?,?)");
			
			ps.setString(1, document.getMemberid());
			ps.setString(2, document.getDocumenttype());
			ps.setString(3, document.getFilename());
			ps.setString(4, document.getGeneratedfilename());
			ps.setString(5, document.getFilepath());
			rs=ps.executeUpdate();
			if (rs > 0) {
				con.close();
				ps = null;
				rs = 0;
				return true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return false;
	}
	public List<Document> getDocumentDetails(){
		List<Document> list=new ArrayList<Document>();
		Document d=null;
		try{
			String query="select * from memberdocuments";
			con=DBConnection.getConnection();
			ps=con.prepareStatement(query);
			rs=ps.executeQuery();
			while(rs.next()){
				d=new Document();
				d.setMemberid(rs.getString("memberid"));
				d.setDocumenttype(rs.getString("documenttype"));
				d.setFilepath(rs.getString("documentpath"));
				d.setFilename(rs.getString("originalfilename"));
				d.setGeneratedfilename(rs.getString("generatedname"));
				list.add(d);
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
	public String getDocumentLocation(String documentName){
		String location=null;
		try{
			String query="select documentpath from memberdocuments where generatedname='"+documentName+"'";
			con=DBConnection.getConnection();
			ps=con.prepareStatement(query);
			rs=ps.executeQuery();
			if(rs.next()){
				location=rs.getString("documentpath");
				con.close();
				ps.close();
				rs=null;
				return location;
			}
		}
		catch(Exception e){
			System.out.println(e);
		}
		return null;
		
	}
	public boolean saveNewTeller(String tellerId, String userId, String accountNumber, String openDateN,String openDate,String accountName,String categoryId)
	{
		String query="insert into teller(tellerId,userId,accountNumber,openDateN,openDate,accountName,categoryId) values(?,?,?,?,?,?,?)";
		
		con=DBConnection.getConnection();
		try {
			ps=con.prepareStatement(query);
			ps.setString(1, tellerId);
			ps.setString(2, userId);
			ps.setString(3, accountNumber);
			ps.setString(4, openDateN);
			ps.setString(5, openDate);
			ps.setString(6, accountName);
			ps.setString(7, categoryId);
			int rs=0;
			rs=ps.executeUpdate();
			
			if(rs>0)
			{
				return true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
	
	public List<TellerModel> viewTeller()
	{
		List<TellerModel> list=new ArrayList<TellerModel>();
		String query="select * from teller";
		con=DBConnection.getConnection();
		try {
			ps=con.prepareStatement(query);
			rs=ps.executeQuery();
			while(rs.next())
			{
				TellerModel tm=new TellerModel();
				tm.setAccountName(rs.getString("accountName"));
				tm.setAccountNumber(rs.getString("accountNumber"));
				tm.setOpenDate(rs.getString("openDate"));
				tm.setOpenDateN(rs.getString("openDateN"));
				tm.setTellerId(rs.getString("tellerId"));
				tm.setUserId(rs.getString("userId"));
				list.add(tm);
			}
			return list;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
		
	}
	@Override
	public TellerModel getTellerDetails(String id) {
		String sql="select *,categoryHead from teller join categories on teller.categoryid=categories.categoryId where tellerId=?";
		con=DBConnection.getConnection();
		try {
			ps=con.prepareStatement(sql);
			ps.setString(1, id);
			rs=ps.executeQuery();
			if(rs.next())
			{
				TellerModel tm=new TellerModel();
				tm.setAccountName(rs.getString("accountName"));
				tm.setAccountNumber(rs.getString("accountNumber"));
				tm.setOpenDate(rs.getString("openDate"));
				tm.setOpenDateN(rs.getString("openDateN"));
				tm.setTellerId(rs.getString("tellerId"));
				tm.setUserId(rs.getString("userId"));
				tm.setCategoryId(rs.getString("categoryid"));
				tm.setCategoryHead(rs.getString("categoryHead"));
				return tm;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
			
		return null;
	}
	@Override
	public boolean updateTeller(String tellerId, String userId, String accountNumber, String openDateN, String openDate,
			String accountName, String categoryId) {
		String query="update teller set userid=?, accountNumber=?, openDateN=?, openDate=?,accountName=? where tellerId=?";
		con=DBConnection.getConnection();
		
		try {
			ps=con.prepareStatement(query);
			ps.setString(1, userId);
			ps.setString(2, accountNumber);
			ps.setString(3, openDateN);
			ps.setString(4, openDate);
			ps.setString(5, accountName);
			ps.setString(6, tellerId);
			int rst=ps.executeUpdate();
			
			if(rst>0)
			{
				return true;
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("update Failed");
		}
		return false;
		
	}
}
