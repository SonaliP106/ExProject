<%@ Page Language="C#" AutoEventWireup="true" CodeFile="organizerregister.aspx.cs" Inherits="organizerregister" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<style type="text/css">
    .style1
    {
        width: 18px;
    }
         .style3
         {
             width: 201px;
             color: #000000;
        text-align: center;
    }
         .style5
         {
             width: 201px;
             height: 48px;
        text-align: center;
    }
         .style6
         {
             height: 48px;
        width: 20px;
    }
         .style7
         {
             width: 18px;
             height: 48px;
         }
         .style8
         {
             width: 201px;
         }
     .style9
    {
        width: 20px;
    }
     .style10
    {
        width: 201px;
        text-align: center;
    }
     </style>



</head>

<body background="images/videoblocks-night-party-event-purple-light-blur-video-4k_sax8lb37_m_thumbnail-full01.png">
    <form id="form1" runat="server" 
    >
          

     <table cellpadding="3" cellspacing="2" 
        
         style="border: medium solid #000000; height: 557px; width: 567px; margin-left: 374px; background-color: #FFFFFF; margin-top: 37px;" 
         frame="void">
<tr>
<td class="style8"></td>
<td class="style9">
<p style="font-size: xx-large; width: 282px;"><b><i style="font-size: xx-large"> Register</i></b></p>
</td>
<td class="style1"></td>
</tr>
<tr>
<td colspan="3">
    &nbsp;</td>
</tr>
    <tr>
        <td style="font-size: xx-large; font-weight: bolder;" class="style3">
            Name</td>
        <td class="style9">
            <asp:TextBox ID="TextBox1" runat="server" required="true" Height="38px" 
                Width="198px" BorderColor="Black" Font-Size="Medium"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="TextBox1" ErrorMessage="filled this"></asp:RequiredFieldValidator>
        </td>
        <td class="style1">
        </td>
    </tr>
     <tr>
        <td style="font-size: xx-large; font-weight: bolder;" class="style10">
            Contact</td>
        <td class="style9">
            <asp:TextBox ID="TextBox2" runat="server" required="true" TextMode="Phone" 
                Height="40px" Width="200px" BorderColor="Black" Font-Size="Medium" 
                ontextchanged="TextBox2_TextChanged" style="text-align: center" 
                ></asp:TextBox>
            
        
            
               
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="TextBox2" ErrorMessage="filled this"></asp:RequiredFieldValidator>
            
        
            
               
            <asp:Label ID="Label5" runat="server" Font-Bold="True"></asp:Label>
            
        
            
               
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                ControlToValidate="TextBox2" ErrorMessage="invalid phone number" 
                ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
            
        
            
               
        </td>
        <td class="style1">
            &nbsp;</td>
    </tr>

    <tr>
        <td style="font-size: xx-large; font-weight: bolder;" class="style5">
            Address</td>
        <td class="style6">
            <asp:TextBox ID="TextBox3" runat="server"  Height="40px" 
                required="true"   Width="200px" BorderColor="Black" 
                Font-Size="Medium" style="text-align: center"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="TextBox3" ErrorMessage="filled this"></asp:RequiredFieldValidator>
        </td>
        <td class="style7">
            </td>
    </tr>

    <tr>
        <td style="font-size: xx-large; font-weight: bolder;" class="style10">
            Email</td>
        <td class="style9">
            <asp:TextBox ID="TextBox4" runat="server" 
                pattern="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" required="true" 
                title="Please enter valid Email Address" Height="40px" Width="200px" 
                Font-Size="Medium" TextMode="Email" BorderColor="Black"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                ControlToValidate="TextBox4" ErrorMessage="filled this"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                ControlToValidate="TextBox4" ErrorMessage="invalid email" 
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </td>
        <td class="style1">
            &nbsp;</td>
    </tr>
   
    <tr>
        <td style="font-size: xx-large; font-weight: bolder;" class="style10">
            Username</td>
        <td class="style9">
            <asp:TextBox ID="TextBox5" runat="server" required="true" Height="40px" 
                Width="200px" BorderColor="Black" Font-Size="Medium" 
                style="text-align: center"></asp:TextBox>
            <br />
            <asp:Label ID="Label4" runat="server" style="color: #FF0000" Font-Size="Large"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                ControlToValidate="TextBox5" ErrorMessage="filled this"></asp:RequiredFieldValidator>
        </td>
        <td class="style1">
        </td>
    </tr>
    
     <tr>
        <td style="font-size: xx-large; font-weight: bolder;" class="style10">
           Password</td>
        <td class="style9">
            <asp:TextBox ID="TextBox6" runat="server" Height="40px" Width="200px" 
                Font-Size="Medium" TextMode="Password" BorderColor="Black" 
                style="text-align: center" ></asp:TextBox>
            <br />
            <asp:Label ID="Label2" runat="server" 
                style="color: #FF0000; background-color: #FFFFFF" Font-Size="Large"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                ErrorMessage="filled this" ControlToValidate="TextBox6"></asp:RequiredFieldValidator>
        </td>
    </tr>


     <tr>
        <td style="font-size: xx-large; font-weight: bolder;" class="style10">
           Confirm-Password</td>
        <td class="style9">
            <asp:TextBox ID="TextBox0" runat="server" Height="40px" Width="200px" 
                Font-Size="Medium" TextMode="Password" BorderColor="Black" 
                style="text-align: center" ></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                ControlToValidate="TextBox0" ErrorMessage="filled this"></asp:RequiredFieldValidator>
        &nbsp;
            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                ControlToCompare="TextBox6" ControlToValidate="TextBox0" 
                ErrorMessage="password &amp; confirm password not matched"></asp:CompareValidator>
        </td>
    </tr>
    <tr>
        <td colspan="3">
            <asp:Label ID="Label0" runat="server" Font-Size="Large" style="color: #FF0000"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server"  Text="Submit" 
                Font-Size="X-Large" BackColor="#009900" BorderColor="Black" 
                onclick="Button1_Click" style="text-align: center; margin-left: 67px" 
                Width="143px" />
           <td> &nbsp;</td>
      <td>
            &nbsp;</td>
        <td>
        </td>
    </tr>
</table>



    </form>

</body>
</html>
