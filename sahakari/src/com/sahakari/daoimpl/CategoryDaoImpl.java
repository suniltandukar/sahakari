package com.sahakari.daoimpl;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.Connection;
import com.sahakari.dao.CategoryDao;
import com.sahakari.dbconnection.DBConnection;
import com.sahakari.model.CategoryModel;

public class CategoryDaoImpl implements CategoryDao {
	Connection con=null;
	PreparedStatement ps=null;
	ResultSet rs=null;
	public boolean insertCategory(CategoryModel cm){
		try{
			String query="insert into categories values (?,?,?,?,?)";
			con=DBConnection.getConnection();
			ps=con.prepareStatement(query);
			ps.setString(1, cm.getCategoryId());
			ps.setString(2, cm.getCategoryHead());
			ps.setString(3, cm.getAccountType());
			ps.setString(4, cm.getInputter());
			ps.setString(5, cm.getAuthorizer());
			int i=ps.executeUpdate();
			if(i>0){
				con.close();
				ps=null;
				return true;
			}
			
		}
		catch(Exception e){
			System.out.println(e);
		}
		return false;
	}
	public List<CategoryModel> selectCategories(){
		List<CategoryModel> list=new ArrayList<CategoryModel>();
		CategoryModel cm=null;
		try{
			String query="select * from categories";
			con=DBConnection.getConnection();
			ps=con.prepareStatement(query);
			rs=ps.executeQuery();
			while(rs.next()){
				cm=new CategoryModel();
				cm.setAccountType(rs.getString("accountType"));
				cm.setAuthorizer(rs.getString("authorizer"));
				cm.setCategoryHead(rs.getString("categoryHead"));
				cm.setCategoryId(rs.getString("categoryId"));
				cm.setInputter(rs.getString("inputter"));
				list.add(cm);
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
	public List<CategoryModel> accounttype(){
		List<CategoryModel> list=new ArrayList<CategoryModel>();
		CategoryModel cm=null;
		try{
			String query="select * from accounttype";
			con=DBConnection.getConnection();
			ps=con.prepareStatement(query);
			rs=ps.executeQuery();
			while(rs.next()){
				cm=new CategoryModel();
				cm.setAccountType(rs.getString("accountType"));
				cm.setAccountHead(rs.getString("accountTypeHead"));
				list.add(cm);
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
	public CategoryModel getSpecificCategoryDetail(String id){
		CategoryModel cm=null;
		try{
			String query="select * from categories where categoryId='"+id+"'";
			con=DBConnection.getConnection();
			ps=con.prepareStatement(query);
			rs=ps.executeQuery();
			if(rs.next()){
				cm=new CategoryModel();
				cm.setAccountType(rs.getString("accountType"));
				cm.setCategoryHead(rs.getString("categoryHead"));
				cm.setCategoryId(rs.getString("categoryId"));
				cm.setInputter(rs.getString("inputter"));
				con.close();
				ps=null;
				rs=null;
				return cm;
			}
			
		}
		catch(Exception e){
			System.out.println(e);
		}
		return null;
	}
	

}
