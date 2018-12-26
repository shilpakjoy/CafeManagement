<%@ Page Title="" Language="C#" MasterPageFile="~/System Operator/OperatorMaster.master" AutoEventWireup="true" CodeFile="View_tbl_reservation.aspx.cs" Inherits="System_Operator_View_tbl_reservation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <form id="form1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" BackColor="#FFFFCC">
        <Columns>
            <asp:BoundField DataField="reserve_id" HeaderText="reserve_id" SortExpression="reserve_id" />
            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
            <asp:BoundField DataField="status" HeaderText="Status" SortExpression="status" />
            <asp:ButtonField CommandName="Select" Text="SELECT" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:panthrandamchalConnectionString %>" SelectCommand="SELECT * FROM [viewroom] WHERE ([status] = @status)">
        <SelectParameters>
            <asp:Parameter DefaultValue="waiting" Name="status" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
</form>
</asp:Content>

