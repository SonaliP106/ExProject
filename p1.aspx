<%@ Page Language="C#" AutoEventWireup="true" CodeFile="p1.aspx.cs" Inherits="p1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .style1
        {
            width: 43%;
            height: 357px;
            margin-top: 94px;
            background-color: #FFFFFF;
            margin-left: 445px;
        }
        .style3
        {
            text-align: center;
        }
        .style5
        {
            width: 219px;
        }
        .style4
        {
            height: 33px;
            text-align: center;
        }
        .style2
        {
            height: 33px;
            width: 219px;
        }
        #form1
        {
            margin-top: 0px;
        }
        </style>
</head>
<body background="images/bigstock-exhibition-event-hall-blur-bac-260661151.jpg">
    <form id="form1" runat="server">
       
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/displayex.aspx" 
            style="color: #FFFFFF">Back</asp:HyperLink>
    
        <table align="center" class="style1">
            <tr>
                <td class="style3">
                    &nbsp;Organizer Name</td>
                <td class="style5">
        <asp:DropDownList ID="dd1" runat="server" 
            onselectedindexchanged="dd1_SelectedIndexChanged" AutoPostBack="True" 
                        style="text-align: center">
        </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="dd1" ErrorMessage="select this"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    Name</td>
                <td class="style5">
        <asp:TextBox ID="TextBox1" runat="server" style="text-align: center"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBox1" ErrorMessage="fill this"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    Email ID&nbsp;&nbsp;</td>
                <td class="style2">
        <asp:TextBox ID="TextBox2" runat="server" style="text-align: center"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="TextBox2" ErrorMessage="fill this"></asp:RequiredFieldValidator>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="TextBox2" ErrorMessage="enter valid email id" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="style3">
        Phone Number&nbsp;&nbsp;</td>
                <td class="style5">
        <asp:TextBox ID="TextBox3" runat="server" style="text-align: center"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="TextBox3" ErrorMessage="fill this"></asp:RequiredFieldValidator>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                        ControlToValidate="TextBox3" ErrorMessage="enter valid phone number" 
                        ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    Cost</td>
                <td class="style5">
        <asp:TextBox ID="TextBox0" runat="server" style="text-align: center"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       <input type="hidden" runat="server" id="key" name="key" value="gtKFFx" />
        <input type="hidden" runat="server" id="salt" name="salt" value="eCwWELxi" />
        <input type="hidden" runat="server" id="hash" name="hash" value=""  />
        <input type="hidden" runat="server" id="txnid" name="txnid" value="" />
        <asp:Button ID="Button1" runat="server" Text="pay" onclick="Button1_Click" Width="77px" 
                        style="text-align: center" Height="26px"  />
    
                </td>
            </tr>
        </table>
      
    <div>
    
    </div>
    </form>
</body>
</html>
