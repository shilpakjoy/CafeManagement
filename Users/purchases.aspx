<%@ Page Language="C#" AutoEventWireup="true" CodeFile="purchases.aspx.cs" Inherits="Users_purchases" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <h1>ORDER-Please call 8281985538</h1>
    <form id="form1" runat="server">
    <div>
    <asp:DataList ID="DataList1" runat="server" >
        <ItemTemplate>
            NAME:
            <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
            <br />
           
            PRICE:
            <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
            <br />                <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("image") %>' />

<br />
        </ItemTemplate>
    </asp:DataList>
<%--    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CafeConnectionString %>" SelectCommand="SELECT [image], [price], [name] FROM [cake]"></asp:SqlDataSource>--%>

    </div>
    </form>
</body>
</html>
