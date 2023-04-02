<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication1._Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Data from .xls to sql</title>
    <style type="text/css">
        #form1
        {
            height: 202px;
        }
        #File1
        {
            width: 229px;
            margin-left: 81px;
        }
    </style>

    <script language="javascript" type="text/javascript">
// <!CDATA[

// ]]>
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
          
        <p style="height: 38px">
            <asp:Label ID="Label1" runat="server" Text="Select File: "> </asp:Label>
            <asp:FileUpload ID="FileUpload1" runat="server" style="margin-left: 86px" />
        </p>
        <p style="height: 54px">
            <asp:Label ID="Label2" runat="server" 
                Text="Enter Sheet Name:"></asp:Label>
            <asp:TextBox ID="txtSheetname" runat="server" style="margin-left: 34px" 
                Width="376px"></asp:TextBox>
                
                 
        </p>
        
                   
   

            <p style="height: 70px">
        <asp:Label ID="Label3" runat="server" Text="Select Table:"></asp:Label>
                <asp:DropDownList ID="DropDownList1" runat="server" Height="21px" 
                    style="margin-left: 70px" Width="380px">
                    <asp:ListItem>temp_prac_data_from_excel</asp:ListItem>
                    <asp:ListItem>randomTable1</asp:ListItem>
                    <asp:ListItem>table0</asp:ListItem>
                    <asp:ListItem>table1</asp:ListItem>
                </asp:DropDownList>
          
          
                <asp:Button ID="Button1" runat="server" Text="Upload File" Width="100px" 
                    style="margin-left:50px" Height="39px" OnClick="button1_Click"/>
    </p>
          
              </div>
    <p align="left" style="height: 70px">
                <asp:Label ID="Label4" runat="server" BorderColor="Black" 
            BorderStyle="None" BorderWidth="5px" Font-Bold="True" Font-Size="Larger" 
            ForeColor="Black" Height="25px" Width="485px"></asp:Label>
    </p>
    </form>
</body>
</html>