package com.sahakari.action;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sahakari.model.EMImodel;

public class EMICalculator {

 
    public Double calcEmi(double p, double r, double n,double re) {
            double R = (r / re) / 100;
            double e = (p * R * (Math.pow((1 + R), n)) / ((Math.pow((1 + R), n)) - 1));

            return e;
    }

    public List<EMImodel> calcEmiAllMonths(double p, double r, double n,double re) {

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
           
            
            for (double i = 1; i <= n; i++) {
            	
            	model=new EMImodel();
                    intPerMonth = (P * R);
                    P = ((P) - ((e) - (intPerMonth)));
                   
                 
                    System.out.println(" Month -> " + (int) i);
                    System.out.println(" Interest per month -> "
                                    +intPerMonth);
                    
                    System.out.println(" Principal per month -> "
                            + Math.round((e) - intPerMonth));
                    System.out.println(" Balance Principal -> " + Math.round(P));
                    System.out.println("***************************");
                   
                    model.setMonth((int)i);
                    model.setInterest(intPerMonth);
                    model.setPrincipal((e) - intPerMonth);
                    model.setBalance(P);
                    list.add(model);
                   
            }
            if(list.size()>0)
            {
            	return list;
            }
            return null;
    }

	public List<EMImodel> calculate(HttpServletRequest request, HttpServletResponse response) {
		String sdate=request.getParameter("sdate");
		String mdate=request.getParameter("mdate");
		
		
		double irate=Double.parseDouble(request.getParameter("irate"));
		double repayment=Double.parseDouble(request.getParameter("repayment"));
		double payments=Double.parseDouble(request.getParameter("payments"));
		double amount=Double.parseDouble(request.getParameter("amount"));
		
		
		List<EMImodel> list=calcEmiAllMonths(amount, irate, payments,repayment);
		
		return list;
	}

}