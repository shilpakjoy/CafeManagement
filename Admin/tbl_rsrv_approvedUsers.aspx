<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="tbl_rsrv_approvedUsers.aspx.cs" Inherits="Admin_tbl_rsrv_approvedUsers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <form id="form1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="reserve_id" HeaderText="Reserve_id" SortExpression="reserve_id" InsertVisible="False" ReadOnly="True" HeaderStyle-ForeColor="White">
<HeaderStyle ForeColor="White"></HeaderStyle>
            </asp:BoundField>
            <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" HeaderStyle-ForeColor="White">
<HeaderStyle ForeColor="White"></HeaderStyle>
            </asp:BoundField>
            <asp:BoundField DataField="status" HeaderText="Status" SortExpression="status" HeaderStyle-ForeColor="White">
<HeaderStyle ForeColor="White"></HeaderStyle>
            </asp:BoundField>
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CafeConnectionString %>" SelectCommand="SELECT * FROM [table_reservation] WHERE ([status] = @status)">
    <SelectParameters>
            <asp:Parameter DefaultValue="Approve" Name="status" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</form>
</asp:Content>

