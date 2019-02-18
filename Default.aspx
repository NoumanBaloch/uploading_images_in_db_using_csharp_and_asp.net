<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
       
    table
    {
        border-collapse:collapse;        
    }
    </style>
</head>
<body>
<h1 align="center">Welcome to the system</h1>
<form id="form1" runat="server">
    <div >
<table align="center" >
<tr>
<td><p>Username:</p> </td>
<td><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
</tr>
<tr>
<td><p>Upload Image:</p> </td>
<td><asp:FileUpload ID="FileUpload1" runat="server" /></td>
</tr>
<tr>
<td colspan="2" align="center"> <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" /></td>

</tr>
<tr><td colspan="2" align="center"><asp:Label ID="Label1" runat="server"></asp:Label></td></tr>

</table>
  </div>
    </form>  
    
    
</body>
</html>
