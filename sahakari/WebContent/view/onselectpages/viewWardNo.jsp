<%@page import='java.sql.*'%>
<%@page import='com.sahakari.dbconnection.DBConnection'%>
<%
  String id="";
  id = request.getParameter("id");
  
   try {
	   Connection con=DBConnection.getConnection();
        Statement smt = con.createStatement(); //Create Statement to interact
        ResultSet rs = smt.executeQuery("select WardCount from vdccodes where (VDCCode='" + id + "');");
        int i=0;
        %>
       <option value="0">Select Ward No</option>
        <%
        while (rs.next()) {
        	for(i=1;i<=Integer.parseInt(rs.getString(1));i++){
         %>
         <option value="<%=i%>"><%=i %></option>
         <%
        	}
        }
   
   } catch (Exception e) {
        e.printStackTrace();
   }
  
%>