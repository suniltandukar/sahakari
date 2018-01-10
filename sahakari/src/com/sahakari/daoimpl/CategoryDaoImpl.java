package com.sahakari.daoimpl;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
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
		
		return null;
	}

}
