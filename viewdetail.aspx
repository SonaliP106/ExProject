<%@ Page Language="C#" AutoEventWireup="true" CodeFile="viewdetail.aspx.cs" Inherits="viewdetail" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .button
        {
            margin-left: 137px;
        }
        .style1
        {
            color: #FFFFFF;
        }
    </style>
</head>
<body background="images/bigstock-exhibition-event-hall-blur-bac-260661151.jpg">
    <form id="form1" runat="server">
    <p>
    
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/displayex.aspx" 
            style="color: #FFFFFF">Back</asp:HyperLink>
    
        <br />
        <asp:DataList ID="DataList1" runat="server" DataKeyField="id" 
            DataSourceID="SqlDataSource1" BorderColor="Black" BorderStyle="Solid" 
            
            
            
            style="text-align: center; margin-left: 350px; margin-right: 92px; margin-top: 94px" onitemcommand="DataList1_ItemCommand" 
           >
            <ItemTemplate>
               <table class="style1">
                    <tr>
                        <td style="text-align: center">
                            <table class="style3">
                                <tr>
                                    <td class="style1">
                                        <strong>id</strong></td>
                                    <td>
                                        <asp:Label ID="Label10" runat="server" Text='<%# Eval("id") %>' 
                                            CssClass="style1"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style1">
                                        <strong>Organizer Name:</strong></td>
                                    <td>
                                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("organizername") %>' 
                                            CssClass="style1"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style1">
                                        <strong>Exhibition Type:</strong></td>
                                    <td class="style7">
                                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("exhibitiontype") %>' 
                                            CssClass="style1"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style1">
                                        <strong>Address:</strong></td>
                                    <td>
                                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("address") %>' 
                                            CssClass="style1"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style1">
                                        <strong>Starting Date:</strong></td>
                                    <td>
                                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("startingdate") %>' 
                                            CssClass="style1"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style1">
                                        <strong>Ending Date:</strong></td>
                                    <td>
                                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("endingdate") %>' 
                                            CssClass="style1"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style1">
                                        <strong>Cost per Stall:</strong></td>
                                    <td>
                                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("costperstall") %>' 
                                            CssClass="style1"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style1">
                                        <strong>Exhibition:</strong></td>
                                    <td>
                                        <asp:Label ID="Label8" runat="server" Text='<%# Eval("exhibition") %>' 
                                            CssClass="style1"></asp:Label>
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
                                Width="153px" CommandName="book" 
                                  />
                        </td>
                    </tr>
                </table>
                <br />
                <br />
            </ItemTemplate>
           
        </asp:DataList>
    </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="Data Source=DESKTOP-IEKF71P;Initial Catalog=Exhibition;User ID=sa;Password=06091999" 
            
            SelectCommand="SELECT [id], [organizername], [exhibitiontype], [address], [startingdate], [endingdate], [costperstall], [exhibition], [eximage] FROM [exhibitiondetail] WHERE ([id] = @id)">
            <SelectParameters>
                <asp:QueryStringParameter Name="id" QueryStringField="id" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
    <div>
    
    </div>
    </form>
</body>
</html>
