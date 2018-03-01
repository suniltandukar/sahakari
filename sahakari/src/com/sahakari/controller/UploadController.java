package com.sahakari.controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.sahakari.action.OtherAction;
import com.sahakari.dao.OtherActionDAO;
import com.sahakari.dao.ValidationDao;
import com.sahakari.daoimpl.OtherActionDaoImpl;
import com.sahakari.daoimpl.ValidationDaoImpl;
import com.sahakari.model.Document;
import com.sahakari.model.UserModel;

@WebServlet("/UploadController")
public class UploadController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	static OtherActionDAO action=new OtherActionDaoImpl();
	static String location=action.getUploadDirectory();
	
	private static final String UPLOAD_DIRECTORY = location;
	private static final int THRESHOLD_SIZE = 1024 * 1024 * 1024 * 2; // 3MB
	private static final int MAX_FILE_SIZE = 8 * 1024 * 1024 * 40; // 40MB
	private static final int MAX_REQUEST_SIZE = 8 * 1024 * 1024 * 100; // 100MB

	public UploadController() {
		super();
	}

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		System.out.println(request.getParameter("fileName"));
		HttpSession session = request.getSession(true);
		UserModel sessionUser = (UserModel) session.getAttribute("userDetail");
		if (sessionUser == null) {
			request.setAttribute("message", "Session Expired");
			getServletContext().getRequestDispatcher("/message.jsp").forward(
					request, response);
		} else {
			
			// checks if the request actually contains upload file
			if (!ServletFileUpload.isMultipartContent(request)) {
				PrintWriter writer = response.getWriter();
				writer.println("Request does not contain upload data");
				writer.flush();
				return;
			}
			
			// configures upload settings
			DiskFileItemFactory factory = new DiskFileItemFactory();
			factory.setSizeThreshold(THRESHOLD_SIZE);
			factory.setRepository(new File(System.getProperty("java.io.tmpdir")));
			
			ServletFileUpload upload = new ServletFileUpload(factory);
			upload.setFileSizeMax(MAX_FILE_SIZE);
			upload.setSizeMax(MAX_REQUEST_SIZE);

			// constructs the directory path to store upload file
			// String uploadPath = getServletContext().getRealPath("")
			// + File.separator + UPLOAD_DIRECTORY;
			String uploadPath = UPLOAD_DIRECTORY;
			// creates the directory if it does not exist

			File uploadDir = new File(uploadPath);
			if (!uploadDir.exists()) {
				uploadDir.mkdir();
			}
			try {
				// parses the request's content to extract file data
				@SuppressWarnings("rawtypes")
				List formItems = upload.parseRequest(request);
				@SuppressWarnings("rawtypes")
				Iterator iter = formItems.iterator();
				String memberid = null, documenttype = null, saveFileName = null;
				int i = 0;
				// iterates over form's fields
				while (iter.hasNext()) {

					FileItem item = (FileItem) iter.next();
					if (item.isFormField()) {

						if (i == 0) {
							memberid = item.getString();
						}
						if (i == 1) {
							documenttype = item.getString();
						}
						i++;
					}
					if (!item.isFormField()) {
					saveFileName = memberid + documenttype;
					// remove "/" and "-" charector if present
					saveFileName = saveFileName.replace("/", "").replace("-",
							"")
							+ ".png";

					String filePath = uploadPath + File.separator
							+ saveFileName;
					File storeFile = new File(filePath);
					// check filename in database already uploaded or not
					ValidationDao val = new ValidationDaoImpl();
					boolean bol = val.fileDuplicateValidation(saveFileName);
					if (bol == true) {
						request.setAttribute("msg",
								"Can't upload file. File already stored with name "
										+ saveFileName + "!");
						getServletContext()
								.getRequestDispatcher("/memberdocument.click").forward(
										request, response);
						return;
					}
					
					Document document = new Document();
					document.setMemberid(memberid);
					document.setDocumenttype(documenttype);
					document.setFilename("");
					document.setGeneratedfilename(saveFileName);
					document.setFilepath(UPLOAD_DIRECTORY);
					// saves the file on disk
					item.write(storeFile);
					 OtherAction action = new OtherAction();
						action.saveFileData(request, response, document);
				}
				}

			} catch (Exception e) {
				System.out.println(e);
			}

		}
	}
}
