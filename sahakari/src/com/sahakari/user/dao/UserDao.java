package com.sahakari.user.dao;

import java.util.List;

import com.sahakari.model.UserModel;

public interface UserDao {

	public boolean adduserdao(String username, String role);
	
	public boolean deleteuserdao(String userid);

	public UserModel edituserdao(String userid);

	public List<UserModel> getexistingusers();

	public boolean updateuserdao(String userid, String username,String givenrole);

}
