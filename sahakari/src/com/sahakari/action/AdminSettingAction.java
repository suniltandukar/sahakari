package com.sahakari.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sahakari.dao.StaffDao;
import com.sahakari.daoimpl.StaffDaoImpl;
import com.sahakari.model.StaffModel;

public class AdminSettingAction {

	public void addNewStaff(HttpServletRequest request, HttpServletResponse response) {
		StaffModel s = new StaffModel();
		s.setStaffCode(request.getParameter("staffCode"));
		s.setStaffName(request.getParameter("staffName"));
		s.setStaffAddress(request.getParameter("staffAddress"));
		s.setPost(request.getParameter("Post"));
		s.setBranchCode(request.getParameter("branchCode"));
		s.setPid(request.getParameter("Pid"));

		StaffDao st = new StaffDaoImpl();
		boolean status = st.insertStaff(s);
		if (status) {
			request.setAttribute("msg", "SUCCESSFULLY added new Staff!");
		} else {
			request.setAttribute("msg", "Add new staff FAILED!");
		}
		RequestDispatcher rd = request.getRequestDispatcher("staffinsert.click");
		try {
			rd.forward(request, response);
		} catch (ServletException | IOException e) {
			e.printStackTrace();
		}
	}

}
