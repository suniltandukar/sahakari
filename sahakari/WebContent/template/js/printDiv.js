 function printData(divname)
{
   var divToPrint=document.getElementById(divname);
   newWin= window.open("");
   newWin.document.write(divToPrint.outerHTML);
   newWin.print();
   newWin.close();
}
