<%@ Page Language="C#" AutoEventWireup="true" CodeFile="stallregister.aspx.cs" Inherits="stallregister" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<style type="text/css">
         .style3
         {
             width: 180px;
             color: #FFFFFF;
        text-align: center;
        height: 49px;
    }
         .style6
         {
             height: 48px;
        width: 52px;
    }
         .style9
    {
        width: 20px;
        text-align: center;
        color: #FFFFFF;
    }
     .style11
    {
        width: 52px;
    }
    .style13
    {
        height: 55px;
    }
     .style14
    {
        color: #000000;
    }
    .style15
    {
        color: #FFFFFF;
    }
    .style16
    {
        color: #FFFFFF;
        text-align: center;
    }
     </style>



</head>

<body background="images/bigstock-exhibition-event-hall-blur-bac-260661151.jpg">
    <form id="form1" runat="server" >
    
          <div>

     <table cellpadding="3" cellspacing="2" 
                  
                  style="border-style: solid; border-width: medium; border-color: #FFFFFF; font-size: xx-large; width: 607px; margin-left: 414px;" 
                  border="1">
<tr>
<td class="style15" colspan="2">
<p style="width: 525px; font-size: xx-large;" class="style9"><strong>Register for Stall 
    Booking</strong></p>
    </td>
</tr>
    <tr>
        <td style="font-size: xx-large; font-weight: 700;" class="style16">
            Name</td>
        <td class="style11">
            <asp:TextBox ID="TextBox1" runat="server" required="true" Height="40px" 
                Width="200px" Font-Size="Medium" CssClass="style14"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ErrorMessage="filled this" Font-Size="Small" ControlToValidate="TextBox1" 
                CssClass="style14"></asp:RequiredFieldValidator>
        </td>
    </tr>
     <tr>
        <td style="font-size: xx-large" class="style3">
            <strong>Contact</strong></td>
        <td class="style6">
            <asp:TextBox ID="TextBox2" runat="server" required="true" Height="40px" 
                Width="200px" TextMode="Phone" Font-Size="Medium" AutoPostBack="True" 
                style="margin-left: 3px" ontextchanged="TextBox2_TextChanged" 
                CssClass="style14"></asp:TextBox>
           
            
               
            <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Small" 
                CssClass="style14"></asp:Label>
           
            
               
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ErrorMessage="filled this" Font-Size="Small" ControlToValidate="TextBox2" 
                CssClass="style14"></asp:RequiredFieldValidator>
           
            
               
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                ControlToValidate="TextBox2" ErrorMessage="invalid phone number" 
                Font-Size="Small" ValidationExpression="\d{10}" CssClass="style14"></asp:RegularExpressionValidator>
           
            
               
        </td>
    </tr>

    <tr>
        <td style="font-size: xx-large" class="style16">
            <strong>Email</strong></td>
        <td class="style11">
            <asp:TextBox ID="TextBox3" runat="server" 
                pattern="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" required="true" 
                title="Please enter valid Email Address" Height="40px" Width="200px" 
                Font-Size="Medium" TextMode="Email" CssClass="style14"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ErrorMessage="filled this" Font-Size="Small" ControlToValidate="TextBox3" 
                CssClass="style14"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                ControlToValidate="TextBox3" ErrorMessage="invalid email" Font-Size="Small" 
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                CssClass="style14"></asp:RegularExpressionValidator>
        </td>
    </tr>
   
    <tr>
        <td style="font-size: xx-large" class="style16">
            <strong>Address</strong></td>
        <td class="style11">
            <asp:TextBox ID="TextBox4" runat="server"  Height="40px" 
                required="true"   Width="200px" Rows="2" 
                Font-Size="Medium" CssClass="style14"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                ErrorMessage="filled this" Font-Size="Small" ControlToValidate="TextBox4" 
                CssClass="style14"></asp:RequiredFieldValidator>
        </td>
    </tr>

    <tr>
        <td style="font-size: xx-large" class="style16">
            <strong>Username</strong></td>
        <td class="style11" style="font-size: large">
            <asp:TextBox ID="TextBox5" runat="server" required="true" Height="40px" 
                Width="200px" Font-Size="Medium" CssClass="style14"></asp:TextBox>
            <br class="style14" />
            <asp:Label ID="Label4" runat="server" Font-Size="Large" CssClass="style14"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                ErrorMessage="filled this" Font-Size="Small" ControlToValidate="TextBox5" 
                CssClass="style14"></asp:RequiredFieldValidator>
        </td>
    </tr>
     <tr>
        <td style="font-size: xx-large" class="style16">
            <strong>Password</strong></td>
        <td class="style11" style="font-size: large">
            <asp:TextBox ID="TextBox6" runat="server" TextMode="Password" Height="40px" 
                style="text-align: center; margin-left: 4px" Width="199px" 
                Font-Size="Medium" CssClass="style14" ></asp:TextBox>
            <br class="style14" />
            <span class="style14">&nbsp;&nbsp;&nbsp;&nbsp;</span><asp:Label 
                ID="Label2" runat="server" Font-Overline="False" 
                Font-Size="Large" CssClass="style14"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                ErrorMessage="filled this" Font-Size="Small" ControlToValidate="TextBox6" 
                CssClass="style14"></asp:RequiredFieldValidator>
        </td>
    </tr>


     <tr>
        <td style="font-size: xx-large" class="style16">
            <strong>Confirm-Password</strong></td>
        <td class="style11">
            <asp:TextBox ID="TextBox0" runat="server" TextMode="Password" Height="40px" 
                style="text-align: center; margin-left: 0px" Width="200px" 
                Font-Size="Medium" CssClass="style14" ></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                ErrorMessage="filled this" Font-Size="Small" ControlToValidate="TextBox0" 
                CssClass="style14"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                ControlToCompare="TextBox6" ControlToValidate="TextBox0" 
                ErrorMessage="password &amp; confirm password not matched" Font-Size="Medium"></asp:CompareValidator>
        </td>
    </tr>
    <tr>
        <td colspan="2" class="style13">
            <asp:Label ID="Label0" runat="server" Font-Size="Large" CssClass="style15"></asp:Label>
            <span class="style15">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </span>
            <asp:Button ID="Button1" runat="server"  Text="Submit" 
                onclick="Button1_Click" Font-Size="X-Large" style="text-align: center" 
                CssClass="style15" ForeColor="Black" />
           </tr>
</table>
</div>
</form>

</body>
</html>
