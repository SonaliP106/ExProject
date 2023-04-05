<%@ Page Language="C#" AutoEventWireup="true" CodeFile="displayex.aspx.cs" Inherits="displayex" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
      
        .button {
    border-style: none;
        border-color: inherit;
        border-width: medium;
        padding: 15px 25px;
        font-size: 24px;
        text-align: center;
        cursor: pointer;
        outline: none;
        color: #000000;
        background-color: blue;
        border-radius: 15px;
        box-shadow: 0 9px #999;
        margin-left: 0px;
    }

.button:hover {background-color: #3e8e41}

.button:active {
  background-color: #3e8e41;
  box-shadow: 0 5px #666;
  transform: translateY(4px);
}
        .style1
        {
            width: 100%;
            height: 305px;
            margin-right: 0px;
        }
        .style3
        {
            width: 95%;
            height: 324px;
            margin-right: 50px;
        }
        .style5
        {
            width: 166px;
            text-align: center;
        }
        .style6
        {
            width: 166px;
            text-align: center;
            height: 25px;
        }
        .style7
        {
            height: 25px;
        }
        .style8
        {
            width: 100%;
            height: 60px;
        }
    </style>
</head>
<body style="background-image: url('images/bigstock-exhibition-event-hall-blur-bac-260661151.jpg'); ">
    <form id="form1" runat="server">
    <div>
    
        &nbsp;&nbsp;<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/bookhome.aspx" 
            style="color: #FFFFFF">Back</asp:HyperLink>
    
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label9" runat="server" Font-Size="XX-Large" 
            style="text-align: center; font-weight: 700; color: #FFFFFF;" 
            Text="List of Exhibition"></asp:Label>
    
        <asp:DataList ID="DataList1" runat="server" BackColor="White" 
            BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" 
            DataSourceID="SqlDataSource1" GridLines="Vertical" Height="16px" 
            style="margin-left: 411px; margin-right: 386px; margin-top: 152px; margin-bottom: 0px" 
            Width="547px" ForeColor="Black" onitemcommand="DataList1_ItemCommand">
            <AlternatingItemStyle BackColor="#CCCCCC" />
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <ItemTemplate>
                <table class="style1">
                    <tr>
                        <td style="text-align: center">
                            <table class="style3">
                                <tr>
                                    <td class="style5">
                                        id</td>
                                    <td>
                                        <asp:Label ID="Label10" runat="server" Text='<%# Eval("id") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style5">
                                        Organizer Name:</td>
                                    <td>
                                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("organizername") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style6">
                                        Exhibition Type:</td>
                                    <td class="style7">
                                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("exhibitiontype") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style5">
                                        Address:</td>
                                    <td>
                                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("address") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style5">
                                        Starting Date:</td>
                                    <td>
                                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("startingdate") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style5">
                                        Ending Date:</td>
                                    <td>
                                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("endingdate") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style5">
                                        Cost per Stall:</td>
                                    <td>
                                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("costperstall") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style5">
                                        Exhibition:</td>
                                    <td>
                                        <asp:Label ID="Label8" runat="server" Text='<%# Eval("exhibition") %>'></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("eximage") %>' 
                                style="text-align: center" Height="300px" Width="300px" />
                        </td>
                    </tr>
                </table>
                <table class="style8">
                    <tr>
                        <td style="text-align: center">
                            <asp:Button ID="Button1" runat="server" Font-Bold="True" Text="select" 
                                BorderColor="Black" CssClass="button" Font-Size="Medium" Height="71px" 
                                Width="124px" CommandArgument='<%#Eval("id")%>' CommandName="viewdetail" />
                        </td>
                    </tr>
                </table>
                <br />
                <br />
            </ItemTemplate>
            <SelectedItemStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        </asp:DataList>
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="Data Source=DESKTOP-IEKF71P;Initial Catalog=Exhibition;User ID=sa;Password=06091999" 
            
            
            SelectCommand="SELECT [id], [organizername], [exhibitiontype], [address], [startingdate], [endingdate], [costperstall], [exhibition], [eximage] FROM [exhibitiondetail]">
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
