package com.sahakari.reports;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/TestReportServlet")
public class TestReportServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public TestReportServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// Get parameter from jsp
		
		String fileFormat ="pdf";
		
		
		SimpleiReport sr = new SimpleiReport();

		List<String> name = new ArrayList<String>();
		List<String> value = new ArrayList<String>();
		boolean parameter = true;
		
		
		//System.out.println("SysNepDate :"+testDate);

		String fileNameWithoutExt;
		

		fileNameWithoutExt = "test";

		/*else if (categoryCode.toString()=="abc"){
				fileNameWithoutExt = "balcncescheck";	
				}*/

		System.out.println("OKKKK");
		// Generate .csv, html, .pdf file and return file location
		String fileLocation = sr.reportgen(fileNameWithoutExt, name, value,
				parameter);


		// Get file name with extension e.g. hobalances.pdf
		String fileNameWithExt = fileNameWithoutExt + "." + fileFormat;

		// Get file name with absolution file path location
		File fileNameWithAbsolutePath = new File(fileLocation + "/"
				+ fileNameWithExt);
		response.setContentType("application/" + fileFormat);

		response.addHeader("Content-Disposition", "attachment; filename="
				+ fileNameWithExt);

		response.setContentLength((int) fileNameWithAbsolutePath.length());

		@SuppressWarnings("resource")
		FileInputStream fileInputStream = new FileInputStream(
				fileNameWithAbsolutePath);
		OutputStream responseOutputStream = response.getOutputStream();
		int bytes;
		while ((bytes = fileInputStream.read()) != -1) {
			responseOutputStream.write(bytes);
		}

		/*request.getRequestDispatcher("view/forms/index.jsp").forward(request,
				response);*/
	}
	}
