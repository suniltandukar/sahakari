package com.sahakari.daoimpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import com.sahakari.dbconnection.DBConnection;

public class DateConverterDaoImpl implements com.sahakari.dao.DateConverterDao {
	 
	 static PreparedStatement ps=null;
	 	static ResultSet rs=null;
		private static Connection conn=null;
	  
	    public static Connection getConnection(){
	    	
			conn=DBConnection.getConnection();
	        return conn;
	    }
		public String nepaliToEnglish(String nepaliDate){
	    	
	    	String[] ndate=nepaliDate.split("-");
	    	try{
	    		int i;
	    		int a[]=new int[15];
	    		String nyear=ndate[0],
	    				nmonth=ndate[1];
	    						int nday=Integer.parseInt(ndate[2])-1;
	    		String query="select * from tbldateconv where NYr="+nyear+"";
	    		conn=getConnection();
	    		ps=conn.prepareStatement(query);
	    		rs=ps.executeQuery();
	    		int result=0;
	    		int days=0;
	    		String edate="";
	    		if(rs.next()){
	    			edate=rs.getString("EDate");
	    			int nepalimonth=Integer.parseInt(nmonth);
	    			for(i=1;i<nepalimonth;i++){
		    			String b="M"+i;
		    			a[0]=0;
		    			
		    			a[i]=rs.getInt(b);
		    			days=a[i];
		    			result=result+a[i];
	    			}
	    		DateFormat dateformat=new SimpleDateFormat("yyyy-MM-dd");
	    		Date startdate;
	    		startdate=dateformat.parse(edate);
	    		
	    		Calendar c=Calendar.getInstance();
	    		c.setTime(startdate);
	    		c.add(Calendar.DATE, result+nday);
	    		
	    		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
	    		String englishdate=sdf.format(c.getTime());
	    		
	    		return englishdate;
	    		}
	    	}
	    	catch(Exception e){
	    		System.out.println(e);
	    	}
	    	return null;
	    }
	    public String englishToNepali(String englishDate){
	    	DateFormat dateformat=new SimpleDateFormat("yyyy-MM-dd");
	    	Date inputengdate,dbenglishdate;
	    	
	    	String[] edate=englishDate.split("-");
	    	String eyear=edate[0],emonth=edate[1],eday=edate[2];
	    	int a[]=new int[15];
	    	int days=0;
	    	int result=0;
	    	int i;
			int var;
			String convertedNepaliDate="";
	    	try{
	    		String query="select * from tbldateconv where EDate like '"+eyear+"%' ";
	    		conn=getConnection();
	    		ps=conn.prepareStatement(query);
	    		rs=ps.executeQuery();
	    		if(rs.next()){
	    			int nyr=Integer.parseInt(rs.getString("NYr"));
	    			String edateFromDB=rs.getString("EDate");
	    			
	    			//date difference input english date - db english date
	    			inputengdate=dateformat.parse(englishDate);
	    			dbenglishdate=dateformat.parse(edateFromDB);
	    			
	    			//english date comparison 
	    			if(inputengdate.compareTo(dbenglishdate)<0){
	    				nyr=nyr-1;
	    				edateFromDB=engInputDateLess(nyr);
	    				dbenglishdate=dateformat.parse(edateFromDB);
	    			};
	    			
	    			
	    			long datediff=inputengdate.getTime()-dbenglishdate.getTime();//difference result with time
	    			float noOfDays=Math.abs((datediff/(1000*60*60*24)));// calculating days only. year chaiyo vane arkai calculation
	    			
	    			for(i=1;i<=12;i++){
		    			String b="M"+i;
		    			a[0]=0;
		    			a[i]=rs.getInt(b);
		    			days=a[i];
		    			result=result+a[i];
		    			if(result>=noOfDays){
		    				var=result-a[i];
		    				int day=(int) (noOfDays+1-var);
		    				String year=String.valueOf(nyr);
		    				String month=String.valueOf(String.format("%02d", i));
		    				String dayNo=String.valueOf(String.format("%02d",day));
		    				convertedNepaliDate=year+"-"+month+"-"+dayNo;
		    				break;
		    			}
	    			}
	    			return convertedNepaliDate;
	    		}
	    	}
	    	catch(Exception e){
	    		System.out.println(e);
	    	}
	    	return null;
	    }
	    public String engInputDateLess(int nyr){
	    	try{
	    		String query="select * from tbldateconv where NYr='"+nyr+"'";
	    		String newYearEngDate;
	    		conn=getConnection();
	    		ps=conn.prepareStatement(query);
	    		rs=ps.executeQuery();
	    		if(rs.next()){
	    			newYearEngDate=rs.getString("EDate");
	    			return newYearEngDate;
	    		}
	    	}
	    	catch(Exception e){
	    		System.out.println(e);
	    	}
	    	return null;
	    }
}
