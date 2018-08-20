package com.sahakari.reports;

import java.sql.Connection;
import java.util.HashMap;
import java.util.List;

import com.sahakari.dbconnection.DBConnection;

import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JRExporterParameter;
import net.sf.jasperreports.engine.JasperCompileManager;
import net.sf.jasperreports.engine.JasperExportManager;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperReport;
import net.sf.jasperreports.engine.export.JRXlsExporter;

public class SimpleiReport {

	//private static LogManager LoggerFactory;

	/*
	 * JasperReport is the object that holds our compiled jrxml file
	 */
	JasperReport jasperReport;

	/*
	 * JasperPrint is the object contains report after result filling process
	 */
	JasperPrint jasperPrint;

	@SuppressWarnings("rawtypes")
	HashMap jasperParameter = new HashMap();

	Connection connection = null;

	String reportRootPath = "C:/Users/DELL/git/sahakari/sahakari/reports/";
	
	/*String reportRootPath = "C:/Reports/";*/
	

	/**
	 * The method generate report according to parameter
	 * 
	 * @param jrxmlFileName
	 *            jasper file name without .jrxml extension
	 * @param parameterName
	 *            name of parameter defined in jasper report design
	 * @param parameterValue
	 *            value for parameter which need to be passed for jasper
	 * @param parameter
	 *            set true for parameter otherwise false
	 * @return	absolute file path of current file location
	 */

	@SuppressWarnings("unchecked")
	public String reportgen(String jrxmlFileName, List<String> parameterName,
			List<String> parameterValue, boolean parameter) {
		
		try {

			// connection is the data source we used to fetch the data from
			connection = DBConnection.getConnection();
			String jrxmlFileNameWithPath = reportRootPath + jrxmlFileName+".jrxml";
			

			if (parameter == true) {
				for (int i = 0; i < parameterName.size(); i++) {
					jasperParameter.put(parameterName.get(i),
							parameterValue.get(i));
				}
			}
			// jrxml compiling process
			
			jasperReport = JasperCompileManager.compileReport(jrxmlFileNameWithPath);
			
			//TODO need to load .jasper file rather then .jrxml file
			//jasperReport = (JasperReport)JRLoader.loadObjectFromFile(jrxmlFileNameWithPath1);

			// filling report with data from data source
			jasperPrint = JasperFillManager.fillReport(jasperReport,
					jasperParameter, connection);

			// exporting process
			// 1- export to PDF
			JasperExportManager.exportReportToPdfFile(jasperPrint,
					reportRootPath+jrxmlFileName+".pdf");

			// 2- export to HTML
			JasperExportManager.exportReportToHtmlFile(jasperPrint,
					reportRootPath+jrxmlFileName+".html");

			// 3- export to Excel sheet
			JRXlsExporter exporter = new JRXlsExporter();
			exporter.setParameter(JRExporterParameter.JASPER_PRINT, jasperPrint);
			exporter.setParameter(JRExporterParameter.OUTPUT_FILE_NAME,
					reportRootPath+jrxmlFileName+".csv");
			System.out.println("System OK mm: "+jrxmlFileNameWithPath);
			exporter.exportReport();

			connection.close();
			
		} catch (JRException e1) {
			e1.printStackTrace();
			System.exit(1);
		} catch (Exception e) {
			e.printStackTrace();
			System.exit(1);
		}
		return reportRootPath;
	}
}
