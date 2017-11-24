package com.sahakari.connection;

import java.sql.DriverManager;

import com.mysql.jdbc.Connection;

public class DbConnection {
	private static Connection con=null;
    static{//instantiation block-called before constructor static-once work is done remains constant
        try{
            Class.forName("com.mysql.jdbc.Driver");
        }catch(Exception e){
            e.printStackTrace();
        }
    }
    public static Connection getConnection(){
        try{
            con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/sahakaridb","root","");//javproject name of database
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return con;
    }
}
