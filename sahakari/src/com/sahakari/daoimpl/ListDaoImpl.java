package com.sahakari.daoimpl;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.Connection;
import com.sahakari.dao.ListDao;
import com.sahakari.dbconnection.DBConnection;
import com.sahakari.model.BranchModel;

public class ListDaoImpl implements ListDao{
	Connection con=null;
	PreparedStatement ps=null;
	ResultSet rs=null;
	public List<BranchModel> branch(){
		List<BranchModel> list=new ArrayList<BranchModel>();
		BranchModel bm=null;
		try{
			String query="select * from branchtbl";
			con=DBConnection.getConnection();
			ps=con.prepareStatement(query);
			rs=ps.executeQuery();
			while(rs.next()){
				bm=new BranchModel();
				bm.setBranchAddress(rs.getString("branchAddress"));
				bm.setBranchFax(rs.getString("branchFax"));
				bm.setBranchId(rs.getString("branchId"));
				bm.setBranchName(rs.getString("branchName"));
				bm.setBranchPhone(rs.getString("branchPhone"));
				bm.setCompanyId(rs.getString("companyId"));
				list.add(bm);
			}
			if(list.size()>0){
				con.close();
				ps.close();
				rs=null;
				return list;
			}
		}
		catch(Exception e){
			System.out.println("Branch List "+e);
		}
		return null;
	}
}
