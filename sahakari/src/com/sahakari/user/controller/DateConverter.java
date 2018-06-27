package com.sahakari.user.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sahakari.dao.DateConverterDao;
import com.sahakari.daoimpl.DateConverterDaoImpl;

@WebServlet("/DateConverter")
public class DateConverter extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public DateConverter() {
        super();
    }

	public void init(ServletConfig config) throws ServletException {
	}

	public void destroy() {
	}

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uri=request.getRequestURI();
		PrintWriter out=response.getWriter();
		DateConverterDao dateConverter = new DateConverterDaoImpl();
		if(uri.endsWith("englishToNepali.convertDate"))
		{
			
			String englishDate=request.getParameter("date");
			out.println(dateConverter.englishToNepali(englishDate));
		}
		else if(uri.endsWith("nepaliToEnglish.convertDate"))
		{
			String nepaliDate=request.getParameter("date");
			out.println(dateConverter.nepaliToEnglish(nepaliDate));
		}
	}

}
