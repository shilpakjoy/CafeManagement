<%@ Page Title="" Language="C#" MasterPageFile="~/System Operator/OperatorMaster.master" AutoEventWireup="true" CodeFile="View_table_reservation.aspx.cs" Inherits="System_Operator_View_table_reservation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <form id="form1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" BackColor="#FFFFCC">
        <Columns>
            <asp:BoundField DataField="reserve_id" HeaderText="reserve_id" SortExpression="reserve_id" />
            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
            <asp:BoundField DataField="status" HeaderText="status" SortExpression="status" />
            <asp:ButtonField CommandName="Select" Text="SELECT" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CafeConnectionString %>" SelectCommand="SELECT * FROM [table_reservation] WHERE ([status] = @status)">
        <SelectParameters>
            <asp:Parameter DefaultValue="waiting" Name="status" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
</form>
</asp:Content>

