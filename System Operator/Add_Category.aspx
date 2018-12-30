<%@ Page Title="" Language="C#" MasterPageFile="~/System Operator/OperatorMaster.master" AutoEventWireup="true" CodeFile="Add_Category.aspx.cs" Inherits="System_Operator_Add_Category" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <table class="style1" style="height: 256px; width: 100%">
    <tr>
        <td colspan="2" class="tblhead">
            Add Category</td>
    </tr>
    <tr>
        <td class="style12">
            &nbsp;</td>
        <td class="style14">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style12">
            &nbsp;</td>
        <td class="style14">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="lbl">
            Category Name:</td>
        <td style="text-align: left">
            <asp:TextBox ID="txtname" runat="server" placeholder="Enter Category Name!!!" 
                CssClass="txt" Width="141px" ></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="txtname" ErrorMessage="Enter Category" 
                ForeColor="#CC0000"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style17">
            </td>
        <td style="text-align: left" class="style17">
            <asp:Button ID="btnadd" runat="server" BorderColor="#FFFF99" CssClass="btn" 
                style="margin-left: 0px" Text="ADD" Width="70px" onclick="btnadd_Click" 
                Height="30px" />
        </td>
    </tr>
    <tr>
        <td class="style17">
            &nbsp;</td>
        <td style="text-align: left" class="style17">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style12">
            &nbsp;</td>
        <td class="style14">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="c_id" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None">
                
                <AlternatingRowStyle BackColor="#DCDCDC" />
                
                <Columns>
                    <asp:CommandField ShowEditButton="True" ShowDeleteButton="True" />
                    <asp:BoundField DataField="c_id" HeaderText="c_id" 
                        SortExpression="c_id" InsertVisible="False" ReadOnly="True" />
                    <asp:BoundField DataField="category" HeaderText="category" SortExpression="category" />
                </Columns>
                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#0000A9" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#000065" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CafeConnectionString %>" DeleteCommand="DELETE FROM [category] WHERE [c_id] = @c_id" InsertCommand="INSERT INTO [category] ([category]) VALUES (@category)" SelectCommand="SELECT * FROM [category]" UpdateCommand="UPDATE [category] SET [category] = @category WHERE [c_id] = @c_id">
                <DeleteParameters>
                    <asp:Parameter Name="c_id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="category" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="category" Type="String" />
                    <asp:Parameter Name="c_id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
</table>

</form>

</asp:Content>

