<%@ Page Title="" Language="C#" MasterPageFile="~/System Operator/OperatorMaster.master" AutoEventWireup="true" CodeFile="tbl_rsrv_approvedUsers.aspx.cs" Inherits="System_Operator_tbl_rsrv_approvedUsers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" BackColor="#FFFFCC">
        <Columns>
            <asp:BoundField DataField="reserve_id" HeaderText="reserve_id" SortExpression="reserve_id" InsertVisible="False" ReadOnly="True" />
            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
            <asp:BoundField DataField="status" HeaderText="status" SortExpression="status" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CafeConnectionString %>" SelectCommand="SELECT * FROM [table_reservation] WHERE ([status] = @status)">
    <SelectParameters>
            <asp:Parameter DefaultValue="Approve" Name="status" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</form>
</asp:Content>

