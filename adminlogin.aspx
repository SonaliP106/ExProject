<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminlogin.aspx.cs" Inherits="adminlogin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 29%;
            height: 242px;
        }
        .style2
        {
            height: 14px;
            width: 203px;
        }
        .style4
        {
            height: 14px;
            width: 182px;
            text-align: center;
        }
        .style6
        {
            height: 27px;
            text-align: center;
        }
        .style7
        {
            height: 148px;
            width: 182px;
            text-align: center;
        }
        .style8
        {
            height: 148px;
            width: 203px;
        }
    </style>
</head>
<body bgcolor="#3366ff">
    <form id="form1" runat="server">
    <div style="margin-left: 0px">
    
        <table align="center" class="style1" bgcolor="White" 
            style="border-style: groove; margin-left: 524px; margin-top: 169px;">
            <tr>
                <td class="style4">
                    <br />
                    <br />
                    Username</td>
                <td class="style2">
                    <br />
                    <br />
                    <asp:TextBox ID="TextBox1" runat="server" style="text-align: center"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style7">
                    Password</td>
                <td class="style8">
                    <asp:TextBox ID="TextBox2" runat="server" style="text-align: center" 
                        TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style6" colspan="2">
                    <asp:Button ID="Button1" runat="server" Text="Login" onclick="Button1_Click" />
                    <br />
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
