<%String[] list=new String[10];
list=(String[])request.getAttribute("list");
%>
<script>
var accountName= <%=list[0]%>;
var memberid= <%=list[1]%>;
<%-- var cusname= <%=list[2]%>; --%>

$('.memberid').val(memberid);
$('.accountName').html(accountName);
/* $('#customername').html(cusname); */
</script>