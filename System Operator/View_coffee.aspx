<%@ Page Title="" Language="C#" MasterPageFile="~/System Operator/OperatorMaster.master" AutoEventWireup="true" CodeFile="View_coffee.aspx.cs" Inherits="System_Operator_ViewMenu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <form id="form1" runat="server">
       <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="menu_id" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="menu_id" HeaderText="Menu_Id" InsertVisible="False" ReadOnly="True" SortExpression="menu_id" HeaderStyle-ForeColor="White" />
                <asp:BoundField DataField="type" HeaderText="Type" SortExpression="type" HeaderStyle-ForeColor="White" />
                <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" HeaderStyle-ForeColor="White" />
                <asp:BoundField DataField="image" HeaderText="Image" SortExpression="image" HeaderStyle-ForeColor="White" />
                <asp:BoundField DataField="price" HeaderText="Price" SortExpression="price" HeaderStyle-ForeColor="White" />
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:Image ID="Image2" runat="server" ImageUrl='<%# Eval("image") %>' />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <EmptyDataTemplate>
                <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("image") %>' />
            </EmptyDataTemplate>
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CafeConnectionString %>" DeleteCommand="DELETE FROM [menu] WHERE [menu_id] = @menu_id" InsertCommand="INSERT INTO [menu] ([type], [name], [image], [price]) VALUES (@type, @name, @image, @price)" SelectCommand="SELECT * FROM [menu] WHERE ([type] = @type2)" UpdateCommand="UPDATE [menu] SET [type] = @type, [name] = @name, [image] = @image, [price] = @price WHERE [menu_id] = @menu_id">
            <DeleteParameters>
                <asp:Parameter Name="menu_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="type" Type="String" />
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="image" Type="String" />
                <asp:Parameter Name="price" Type="Int32" />
            </InsertParameters>
            <SelectParameters>
                <asp:QueryStringParameter DefaultValue="coffee" Name="type2" QueryStringField="coffee" Type="String" />
            </SelectParameters>
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

