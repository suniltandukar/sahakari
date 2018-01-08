<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <jsp:include page="/includefile"></jsp:include>
    
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body class="background">
<div class="panel-body">
			<table id="example" class="display table table-striped table-bordered"
				cellspacing="0" width="100%">
				<thead>
					<tr>
						<th>S. No.</th>
						<th>Interest</th>
						<th>Principal</th>
						<th>Balance</th>
					</tr>
				</thead>
				<tbody>
					<%int sno=1; %>
				<c:forEach items="${list}" var="list">
											
					<tr>
						<td><%=sno %></td>
						<td>${list.interest }</td>
						<td>${list.principal }</td>
						<td>${list.balance }</td>
					</tr>
					<%sno++; %>
					</c:forEach>
				</tbody>
			</table>
		</div>


</body>
</html>