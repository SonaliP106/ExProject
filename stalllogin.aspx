<%@ Page Language="C#" AutoEventWireup="true" CodeFile="stalllogin.aspx.cs" Inherits="stalllogin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">

    body{
margin: 3px 0px 100px 0px;
padding:0px;
text-align:center;
align:center;
}
input[type=text], input[type=password]{
padding:7px 10px;
margin: 8px 0 8px 112px;
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
        height: 286px;
        width: 490px;
        margin-left: 418px;
        margin-right: 167px;
        margin-top: 0px;
    }
    #container
    {
        margin-top: 216px;
    }

</style>
    
</head>
<body background="images/bigstock-exhibition-event-hall-blur-bac-260661151.jpg">

<div id="container">

    <form id="flogin" runat="server" 
    style="background-color: #FFFFFF; border-style: solid; border-width: medium; border-color: #000000">
<h2>Login Form</h2>
<label for="uname" id="un">Email id:</label>&nbsp;
<asp:TextBox ID="TextBox1" runat="server" Height="36px" Width="190px"></asp:TextBox>
    <br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
        ControlToValidate="TextBox1" ErrorMessage="fill this"></asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
        ControlToValidate="TextBox1" ErrorMessage="enter valid email id" 
        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
    <br/><br/>
<label for="upass" id="ps">&nbsp;&nbsp; Password:</label><asp:TextBox ID="TextBox2" 
        runat="server" Width="192px" TextMode="Password" Height="36px"></asp:TextBox>
    <br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
        ControlToValidate="TextBox2" ErrorMessage="fill this"></asp:RequiredFieldValidator>
&nbsp;<asp:Label ID="Label1" runat="server"></asp:Label>
    <br/><br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:Button ID="Button1" runat="server" Text="Login" onclick="Button1_Click" />


<a href="stallregister.aspx">New Member</a>

    </form>

</div>
        
</body>
</html>

