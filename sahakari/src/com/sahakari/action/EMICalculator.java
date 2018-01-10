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

import org.joda.time.Period;

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
           
            
            for (int i = 1; i <= n; i++) {
            	DecimalFormat df = new DecimalFormat("#.##");
            	model=new EMImodel();
                    intPerMonth = (P * R);
                    P = ((P) - ((e) - (intPerMonth)));
                   
                    //for dynamic date
            		
                    DateFormat dateformat = new SimpleDateFormat("yyyy-MM-dd");
            		
            		Date end;
            	
            	
            		
            		
            			try {
            				end = dateformat.parse(loanstartdate);
            				
                    		Calendar cal=new GregorianCalendar();
                    		cal.setTime(end);

                    		Calendar today=new GregorianCalendar();
                    		today.setTime(new Date());
                    		
                    		int yearsInBetween = today.get(Calendar.YEAR) - cal.get(Calendar.YEAR);
                    		int monthsDiff = today.get(Calendar.MONTH) - cal.get(Calendar.MONTH);

                    		System.out.println(yearsInBetween+"years");
                    		System.out.println("Months "+monthsDiff);
                    		
            				SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            				Calendar c = Calendar.getInstance();
            				c.setTime(end); // Now use today date.
            				
            				c.add(Calendar.DATE, i); // Adding 5 days
            				String output = sdf.format(c.getTime());
            				System.out.println("date is"+output);
            			
            				model.setDate(output);
            			} catch (ParseException ex) {
            				ex.printStackTrace();
            			}
                    model.setMonth((int)i);
                    model.setInterest(Double.parseDouble(df.format(intPerMonth)));
                    
                    model.setPrincipal(Double.parseDouble(df.format((e) - intPerMonth)));
                    model.setBalance(Double.parseDouble(df.format(P)));
                    list.add(model);
                   
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