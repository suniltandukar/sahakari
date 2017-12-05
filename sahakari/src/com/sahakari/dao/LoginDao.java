package com.sahakari.dao;

import java.util.List;

import com.sahakari.model.UserModel;

public interface LoginDao {
	public boolean checkuser(UserModel u);
	public UserModel getUserDetail(UserModel u);

}
