package com.sahakari.controller;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.FileInputStream;
import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sahakari.dao.OtherActionDAO;
import com.sahakari.daoimpl.OtherActionDaoImpl;

/**
 * Servlet implementation class ViewPictureController
 */
@WebServlet("/ViewPictureController")
public class ViewPictureController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ViewPictureController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Servlet#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uri = request.getRequestURI();
		uri = uri.substring(uri.lastIndexOf("/") + 1, uri.length());
		
		switch (uri) {
	case "viewPhoto.pic":
		String documentname = request.getParameter("documentname");
		OtherActionDAO action = new OtherActionDaoImpl();
		String location = action.getDocumentLocation(documentname);

		String contentType = "image/jpg";
		
		/*ServletOutputStream ot = response.getOutputStream();*/
		response.setContentType(contentType);
		
		ServletOutputStream os;
		os = response.getOutputStream();
		
		FileInputStream fin = new FileInputStream(location + "\\" + documentname);
		
		BufferedInputStream bin = new BufferedInputStream(fin);
		BufferedOutputStream bout = new BufferedOutputStream(os);
		int ch = 0;
		
		while ((ch = bin.read()) != -1) {
			bout.write(ch);
		}

		bin.close();
		fin.close();
		bout.close();
		os.close();
		break;
	}
	}

}
