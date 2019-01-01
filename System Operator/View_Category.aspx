<%@ Page Title="" Language="C#" MasterPageFile="~/System Operator/OperatorMaster.master" AutoEventWireup="true" CodeFile="View_Category.aspx.cs" Inherits="System_Operator_View_Category" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="c_id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="66px" Width="366px">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="c_id" HeaderText="C_id" ReadOnly="True" SortExpression="c_id"  HeaderStyle-ForeColor="White"/>
            <asp:BoundField DataField="category" HeaderText="Category" SortExpression="category"  HeaderStyle-ForeColor="White"/>

        </Columns>
        <EditRowStyle BackColor="#999999" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CafeConnectionString %>" DeleteCommand="DELETE FROM [category] WHERE [c_id] = @c_id" InsertCommand="INSERT INTO [category] ([category], [c_id]) VALUES (@category, @c_id)" SelectCommand="SELECT [category], [c_id] FROM [category]" UpdateCommand="UPDATE [category] SET [category] = @category WHERE [c_id] = @c_id">
        <DeleteParameters>
            <asp:Parameter Name="c_id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="c_id" Type="Int32" />
            <asp:Parameter Name="category" Type="String" />

        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="c_id" Type="Int32" />
            <asp:Parameter Name="category" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</form>
</asp:Content>

