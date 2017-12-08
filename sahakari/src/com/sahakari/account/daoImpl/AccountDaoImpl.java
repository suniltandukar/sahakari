package com.sahakari.account.daoImpl;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.Connection;
import com.sahakari.account.dao.AccountDao;
import com.sahakari.dbconnection.DBConnection;
import com.sahakari.model.AccountModel;

public class AccountDaoImpl implements AccountDao{
	Connection con=null;
	PreparedStatement ps=null;
	ResultSet rs=null;
	int i=0;
	public String selectAccountTypeFromCategory(String categoryId){
		String accountType="";
		try{
			String query="select accountType from categories where categoryId=?";
			
			con=DBConnection.getConnection();
			ps=con.prepareStatement(query);
			ps.setString(1, categoryId);
			rs=ps.executeQuery();
			if(rs.next()){
				accountType=rs.getString("accountType");
				con.close();
				ps=null;
				rs=null;
				return accountType;
			}
			
		}catch(Exception e){System.out.println(e);}
		return null;
	}
	public AccountModel getAccountTypes(String accountType){
		String query="select * from accounttype where accountType=?";
		AccountModel am=null;
		try{
			con=DBConnection.getConnection();
			ps=con.prepareStatement(query);
			ps.setString(1, accountType);
			rs=ps.executeQuery();
			if(rs.next()){
				am=new AccountModel();
				am.setAccountType(rs.getString("accountType"));
				am.setAccountTypeHead(rs.getString("accountTypeHead"));
				con.close();
				ps=null;
				rs=null;
				return am;
			}
			
		}catch(Exception e){System.out.println(e);}
		return null;
	}
	public List<AccountModel> getCategories(){
		List<AccountModel> list=new ArrayList<AccountModel>();
		String query="select * from categories";
		AccountModel am=null;
		try{
			con=DBConnection.getConnection();
			ps=con.prepareStatement(query);
			rs=ps.executeQuery();
			while(rs.next()){
				am=new AccountModel();
				am.setCategoryId(rs.getString("categoryId"));
				am.setCategoryHead(rs.getString("categoryHead"));
				list.add(am);
			}
			if(list.size()>0){
				con.close();
				ps=null;
				rs=null;
				return list;
			}
		}catch(Exception e){System.out.println(e);}
		return null;
	}
	public String selectpid(AccountModel am){
		String pid="";
		try{
			String query="select pid from customertbl where memberid=?";
			con=DBConnection.getConnection();
			ps=con.prepareStatement(query);
			ps.setString(1, am.getMemberid());
			rs=ps.executeQuery();
			if(rs.next()){
				pid=rs.getString("pid");
				con.close();
				ps=null;
				rs=null;
				return pid;
			}
		}catch(Exception e){
			System.out.println(e);
		}
		return null;
	}
	public boolean insertAccount(AccountModel am){
		try{
		String query="insert into accountsTbl (accountNumber, pid, memberid, alternativeAccounId, categoryId, accountType, accountName, limitRef, inputter) values (?,?,?,?,?,?,?,?,?)";
		con=DBConnection.getConnection();
		ps=con.prepareStatement(query);
		ps.setString(1, am.getAccountNumber());
		ps.setString(2, am.getPid());
		ps.setString(3, am.getMemberid());
		ps.setString(4, am.getAlternativeAccounId());
		ps.setString(5, am.getCategoryId());
		ps.setString(6, am.getAccountType());
		ps.setString(7, am.getAccountName());
		ps.setString(8, am.getLimitRef());
		ps.setString(9,am.getInputter());
		i=ps.executeUpdate();
		if(i>0){
			con.close();
			ps=null;
			i=0;
			return true;
		}
		}catch(Exception e)
		{
			System.out.println(e);
		}		return false;
	}
}
