package com.sahakari.user.dao;

import java.util.List;

import com.sahakari.model.UserModel;

public interface UserDao {

	public boolean adduserdao(String username);

	public List<UserModel> getexistingusers();

}
