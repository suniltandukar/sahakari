<%@page import='java.sql.*'%>
<%@page import='com.sahakari.dbconnection.DBConnection'%>


<%
System.out.println("reached viewMuncipality");
  String id="";
  id = request.getParameter("id");
   try {
       Connection con=DBConnection.getConnection();
        Statement smt = con.createStatement(); //Create Statement to interact
        ResultSet rs = smt.executeQuery("select * from vdccodes where (DistrictCode='" + id + "');");
        %>
        <option value="0" selected>Select muncipality or VDC</option>
        <%
        while (rs.next()) {
         %>
         <option value="<%=rs.getString(1)%>"><%=rs.getString(2) %></option>
         <%
          
        }
   
   } catch (Exception e) {
        e.printStackTrace();
   }
  
%>