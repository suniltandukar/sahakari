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

public class OtherActionDaoImpl implements OtherActionDAO {
	PreparedStatement ps=null;
	Connection con=null;
	ResultSet rs=null;
	public String getUploadDirectory(){
		String uploaddir="C:/Program Files/xampp/tomcat/webapps/sahakariimages";
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
}
