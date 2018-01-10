package com.sahakari.action;

import java.text.DateFormat;
import java.text.DecimalFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.sahakari.model.EMImodel;

public class EMICalculator {

 
    public Double calcEmi(double p, double r, double n,double re) {
            double R = (r / re) / 100;
            double e = (p * R * (Math.pow((1 + R), n)) / ((Math.pow((1 + R), n)) - 1));

            return e;
    }

    public List<EMImodel> calcEmiAllMonths(double p, double r, double n,int re,String loanstartdate) {

            double R = r /(re*100);
            double P = p;
            double e = calcEmi(P, r, n,re);
            double totalInt = (e * n) - p;
            double totalAmt =(e * n);
            System.out.println("***************************");
            System.out.println(" Principal-> " + P);
            System.out.println(" Rate of Interest-> " + r);
            System.out.println(" Number of Months-> " + n);
            System.out.println(" EMI -> " + e);
            System.out.println(" Total Interest -> " + totalInt);
            System.out.println(" Total Amount -> " + totalAmt);
            System.out.println("***************************");
            double intPerMonth = totalInt / n;
            
            
          

            EMImodel model=null;
            List<EMImodel> list=new ArrayList<EMImodel>();
           
            
            
            
            //for dynamic date
    		
            
    		try {
    			DateFormat dateformat = new SimpleDateFormat("yyyy-MM-dd");
    			Date todaydate=new Date();
    			Date end;
    				end = dateformat.parse(loanstartdate);
    				SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
    				Calendar c = Calendar.getInstance();
    				c.setTime(end); // Now use today date.
    				Date date=c.getTime();
    				
    				
    				
    				while(todaydate.compareTo(date) > 0){
    				
    					c.add(Calendar.DATE, 30);
    					date=c.getTime();
    					String output = sdf.format(c.getTime());
    					
        				System.out.println("date is"+date);
        				DecimalFormat df = new DecimalFormat("#.##");
                    	model=new EMImodel();
                            intPerMonth = (P * R);
                            P = ((P) - ((e) - (intPerMonth)));
                           
                          
                    		model.setDate(output);
                            model.setInterest(Double.parseDouble(df.format(intPerMonth)));
                            
                            model.setPrincipal(Double.parseDouble(df.format((e) - intPerMonth)));
                            model.setBalance(Double.parseDouble(df.format(P)));
                            list.add(model);
        				
        				
    					
    					
    				}
    				
    			} catch (ParseException ex) {
    				ex.printStackTrace();
    			}
            
          
            if(list.size()>0)
            {
            	return list;
            }
    		
            return null;
    }

	public List<EMImodel> calculate(HttpServletRequest request, HttpServletResponse response) {
		String loanstartdate=request.getParameter("startdateen");
		System.out.println(loanstartdate);
		String mdate=request.getParameter("mdate");
		
		double irate=Double.parseDouble(request.getParameter("irate"));
		System.out.println(irate);
		int repayment=Integer.parseInt(request.getParameter("repayment"));
		double payments=Double.parseDouble(request.getParameter("payments"));
		double amount=Double.parseDouble(request.getParameter("amount"));
		
		
		
		List<EMImodel> list=calcEmiAllMonths(amount, irate, payments,repayment,loanstartdate);
		
		return list;
	}

}