<%@ Page Language="C#" AutoEventWireup="true" CodeFile="purchases.aspx.cs" Inherits="Users_purchases" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <h1>CHECKOUT</h1>
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

    <table class="w-100">
        <tr>
            <td>
                <asp:Label ID="Label6" runat="server" Text="Email"></asp:Label>&nbsp;</td>
            <td>
                <asp:TextBox ID="txt_email" runat="server"></asp:TextBox>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Landmark"></asp:Label>&nbsp;</td>
            <td>
                <asp:TextBox ID="txt_landmark" runat="server"></asp:TextBox>&nbsp;</td>
        </tr>
        <tr>
            <td><asp:Label ID="Label2" runat="server" Text="Town"></asp:Label>&nbsp;</td>
            <td>
                <asp:TextBox ID="txt_town" runat="server"></asp:TextBox>&nbsp;</td>
        </tr>
        <tr>
            <td><asp:Label ID="Label3" runat="server" Text="Date"></asp:Label>&nbsp;</td>
            <td>
                <asp:TextBox ID="txt_date" runat="server"></asp:TextBox>&nbsp;</td>
        </tr>
        <tr>
            <td><asp:Label ID="Label4" runat="server" Text="Time"></asp:Label>&nbsp;</td>
            <td>
                <asp:TextBox ID="txt_time" runat="server"></asp:TextBox>&nbsp;</td>
        </tr>
        
        <tr>
            <td><asp:Label ID="Label5" runat="server" Text="Quantity"></asp:Label>&nbsp;</td>
            <td> <asp:TextBox ID="txt_quantity" runat="server" OnTextChanged="txt_quantity_TextChanged"></asp:TextBox>&nbsp;</td>
        </tr>
        <tr>
            <td><asp:Label ID="lbl_totalprice" runat="server" Text="Total Price"></asp:Label>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="Button1" runat="server" Text="ORDER" OnClick="Button1_Click1" />&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
   
    </div>
    </form>
</body>
</html>
