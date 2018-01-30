//----------------------------------SELECT SUBGROUP BY GROUP------------------
$(document).ready(function()
{
$(".group").change(function()
{
var id=$(this).val();
var dataString = 'id='+ id;

$.ajax
({
type: "POST",
url: "viewsubgroup.jsp",
data: dataString,
cache: false,
success: function(html)
{
$(".subgroup").html(html);
} 
});

});

});
