package com.sahakari.dao;

import java.util.List;

import com.sahakari.model.StaffModel;

public interface StaffDao {

	public boolean insertStaff(StaffModel s);

	public List<StaffModel> getStaff();

}
