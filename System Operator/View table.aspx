<%@ Page Title="" Language="C#" MasterPageFile="~/System Operator/OperatorMaster.master" AutoEventWireup="true" CodeFile="View table.aspx.cs" Inherits="System_Operator_View_table" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 902px;
        }
        .style3
        {
            width: 161px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="table_id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="161px" Width="353px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="table_id" HeaderText="Table_id" ReadOnly="True" SortExpression="table_id" HeaderStyle-ForeColor="White"/>
                <asp:BoundField DataField="chair" HeaderText="Chair" SortExpression="chair" HeaderStyle-ForeColor="White"/>
                <asp:BoundField DataField="floor" HeaderText="Floor" SortExpression="floor" HeaderStyle-ForeColor="White"/>
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CafeConnectionString %>" DeleteCommand="DELETE FROM [tables] WHERE [table_id] = @table_id" InsertCommand="INSERT INTO [tables] ([table_id], [chair], [floor]) VALUES (@table_id, @chair, @floor)" SelectCommand="SELECT * FROM [tables]" UpdateCommand="UPDATE [tables] SET [chair] = @chair, [floor] = @floor WHERE [table_id] = @table_id">
            <DeleteParameters>
                <asp:Parameter Name="table_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="table_id" Type="Int32" />
                <asp:Parameter Name="chair" Type="Int32" />
                <asp:Parameter Name="floor" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="chair" Type="Int32" />
                <asp:Parameter Name="floor" Type="String" />
                <asp:Parameter Name="table_id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</asp:Content>

