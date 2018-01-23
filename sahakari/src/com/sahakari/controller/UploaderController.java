package com.sahakari.controller;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.sahakari.action.OtherAction;
import com.sahakari.dao.OtherActionDAO;
import com.sahakari.daoimpl.OtherActionDaoImpl;
import com.sahakari.model.Document;

/**
 * Servlet implementation class UploaderController
 */
@WebServlet("/UploaderController")
public class UploaderController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	OtherActionDAO oa=new OtherActionDaoImpl();
	String Uploaddirectory=oa.getUploadDirectory();
	private final String UPLOAD_DIRECTORY = Uploaddirectory;

	Map<String, String> formMap = new HashMap<String, String>();

	public UploaderController() {
		super();
	}

	public void init(ServletConfig config) throws ServletException {
	}

	public void destroy() {
	}

	protected void service(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		System.out.println("uploader controller reached");
		MultipartRequest req = new MultipartRequest(request, UPLOAD_DIRECTORY,
				1024 * 1024 * 1024);
		String memberid = req.getParameter("memberid");
		String documenttype = req.getParameter("documenttype");

		String generatedfilename = memberid + documenttype;

		Document document = new Document();
		document.setMemberid(memberid);
		document.setDocumenttype(documenttype);
		document.setGeneratedfilename(generatedfilename);
		document.setFilepath(UPLOAD_DIRECTORY);
		// document.setBillimagegeneratedname(billimagegeneratedname);

		try{	   
		    Enumeration files = req.getFileNames();
		    while (files.hasMoreElements()) {
		        String name = (String) files.nextElement();
		        String filename = req.getFilesystemName(name);
		        System.out.println(filename);
		        document.setFilename(filename);
		        String type = req.getContentType(name);
		        System.out.println(type);
		      
		        File uploadedFile = req.getFile(name);
		        System.out.println(uploadedFile);
		    	
		        FileInputStream fis = new FileInputStream(uploadedFile);
		        BufferedReader in = new BufferedReader(new InputStreamReader(fis));

		        FileWriter fstream = new FileWriter(UPLOAD_DIRECTORY + name, true);
		        BufferedWriter out11 = new BufferedWriter(fstream);

		        String aLine = null;
		        while ((aLine = in.readLine()) != null) {
		            //Process each line and add output to Dest.txt file
		            out11.write(aLine);
		            out11.newLine();
		        }
		        in.close();
		        out11.close();
	               }    
		    OtherAction action = new OtherAction();
			action.saveFileData(request, response, document);
		} catch (Exception ex) {
			request.setAttribute("message", "File Upload Failed due to " + ex);
		}

	}

}
