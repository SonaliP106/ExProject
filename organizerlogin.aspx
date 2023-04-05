<%@ Page Language="C#" AutoEventWireup="true" CodeFile="organizerlogin.aspx.cs" Inherits="organizerlogin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">

    body{
margin: 0px 0px 100px 0px;
padding:0px;
text-align:center;
align:center;
}
input[type=text], input[type=password]{
padding:7px 10px;
margin: 8px 0 8px 169px;
display:inline-block;
border: 1px solid #ccc;
box-sizing: border-box;
}
button{
background-color:#4CAF50;
width: 10%;
padding: 9px 5px;
margin:5px 0;
cursor:pointer;
border:none;
color:#ffffff;
}
button:hover{
opacity:0.8;
}
#un,#ps{
font-family:’Lato’, sans-serif;
color: gray;
}

    #flogin
    {
        height: 296px;
        width: 497px;
        margin-left: 416px;
        margin-right: 167px;
        margin-top: 0px;
    }
    #container
    {
        margin-top: 216px;
    }

</style>
    
</head>
<body background="images/videoblocks-night-party-event-purple-light-blur-video-4k_sax8lb37_m_thumbnail-full01.png">
    

<div id="container">

    <form id="flogin" runat="server" 
    style="background-color: #FFFFFF; border-style: solid; border-width: medium; border-color: #000000">
    <h2 style="margin-left: 0px; margin-top: 0px" >Login Form</h2>
<label for="uname" id="un" style="color: #000000">Email Id:</label>&nbsp;
<asp:TextBox ID="TextBox1" runat="server" Height="36px" Width="210px"></asp:TextBox>
    <br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ControlToValidate="TextBox1" ErrorMessage="fill this"></asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
        ControlToValidate="TextBox1" ErrorMessage="enter valid enail id" 
        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
    <br/><br/>
<label for="upass" id="ps" style="color: #000000">&nbsp;&nbsp; Password:</label><asp:TextBox ID="TextBox2" 
        runat="server" Width="210px" TextMode="Password" Height="36px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
        ControlToValidate="TextBox2" ErrorMessage="fill this"></asp:RequiredFieldValidator>
    <asp:Label ID="Label1" runat="server"></asp:Label>
    <br/><br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:Button ID="Button1" runat="server" Text="Login" onclick="Button1_Click" 
        BackColor="#3366FF" BorderColor="#3333CC" Height="33px" Width="63px" />


&nbsp;&nbsp;&nbsp;&nbsp; <a href="organizerregister.aspx">New Member</a>

    </form>

</div>
        
</body>
</html>
