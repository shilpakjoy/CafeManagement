<%@ Page Title="" Language="C#" MasterPageFile="~/System Operator/OperatorMaster.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="System_Operator_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <form id="form1" runat="server">
        <asp:DataList ID="DataList1" runat="server" DataKeyField="menu_id" DataSourceID="SqlDataSource1">
            <ItemTemplate>
                menu_id:
                <asp:Label ID="menu_idLabel" runat="server" Text='<%# Eval("menu_id") %>' />
                <br />
                type:
                <asp:Label ID="typeLabel" runat="server" Text='<%# Eval("type") %>' />
                <br />
                name:
                <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                <br />
                image:
                <asp:Label ID="imageLabel" runat="server" Text='<%# Eval("image") %>' />
                <br />
                price:
                <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
                <br />
                <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("image") %>' />
<br />
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CafeConnectionString %>" DeleteCommand="DELETE FROM [menu] WHERE [menu_id] = @menu_id" InsertCommand="INSERT INTO [menu] ([type], [name], [image], [price]) VALUES (@type, @name, @image, @price)" SelectCommand="SELECT * FROM [menu]" UpdateCommand="UPDATE [menu] SET [type] = @type, [name] = @name, [image] = @image, [price] = @price WHERE [menu_id] = @menu_id">
            <DeleteParameters>
                <asp:Parameter Name="menu_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="type" Type="String" />
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="image" Type="String" />
                <asp:Parameter Name="price" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="type" Type="String" />
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="image" Type="String" />
                <asp:Parameter Name="price" Type="Int32" />
                <asp:Parameter Name="menu_id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>

</asp:Content>

