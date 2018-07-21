package com.sahakari.dao;


import com.sahakari.model.UserModel;

public interface LoginDao {
	public boolean checkuser(UserModel u);
	public UserModel getUserDetail(UserModel u);
	public boolean checkCurStatus(UserModel u);
	public boolean setCurStatus(UserModel u, int curStatus);

}
