<%@ Page Title="" Language="C#" MasterPageFile="~/System Operator/OperatorMaster.master" AutoEventWireup="true" CodeFile="view_menu.aspx.cs" Inherits="System_Operator_view_menut" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <form id="form1" runat="server">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="menu_id" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="menu_id" HeaderText="menu_id" InsertVisible="False" ReadOnly="True" SortExpression="menu_id" />
                <asp:BoundField DataField="type" HeaderText="type" SortExpression="type" />
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="image" HeaderText="image" SortExpression="image" />
                <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
            </Columns>
            <EmptyDataTemplate>
                <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("image") %>' />
            </EmptyDataTemplate>
        </asp:GridView>
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

