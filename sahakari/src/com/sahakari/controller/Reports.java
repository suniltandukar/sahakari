package com.sahakari.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;

import com.sahakari.dao.ViewDao;
import com.sahakari.daoimpl.ViewDaoImpl;

@WebServlet("/Reports")
public class Reports extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Reports() {
        super();
    }

	public void init(ServletConfig config) throws ServletException {
	}

	public void destroy() {
	}

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
PrintWriter out=response.getWriter();

		String uri = request.getRequestURI();
		if (uri.endsWith("sharecertificate.report")) {
			ViewDao view = new ViewDaoImpl();
			JSONObject list = view.viewShareCertificate();
			
			String jsonString=list.toString();
			System.out.println("data"+jsonString);
			out.println(jsonString);
			
			
		}
	
	}

}
