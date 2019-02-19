<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="view_cakes.aspx.cs" Inherits="Admin_view_cakes" %>

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
        <table class="tbl">
        <tr>
            <td class="tblhead">
                VIEW PRODUCT -
                <asp:Label ID="lblcnt" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <table class="style2">
                    <tr>
                        <td class="style3">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style3">
                            &nbsp;</td>
                        <td>
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="cake_id" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None">
                                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                <Columns>
                                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                                    <asp:BoundField DataField="cake_id" HeaderText="Cake_id" ReadOnly="True" SortExpression="cake_id" HeaderStyle-ForeColor="White"/>
                                    <asp:BoundField DataField="c_id" HeaderText="C_id" SortExpression="c_id" HeaderStyle-ForeColor="White"/>
                                    <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" HeaderStyle-ForeColor="White"/>
                                    <asp:BoundField DataField="image" HeaderText="Image" SortExpression="image" HeaderStyle-ForeColor="White"/>
                                    <asp:BoundField DataField="description" HeaderText="Description" SortExpression="description" HeaderStyle-ForeColor="White"/>
                                    <asp:BoundField DataField="price" HeaderText="Price" SortExpression="price" HeaderStyle-ForeColor="White"/>
                                    <asp:TemplateField>
                    <ItemTemplate>
                        <asp:Image ID="Image2" runat="server" ImageUrl='<%# Eval("image") %>' />
                    </ItemTemplate>
                </asp:TemplateField>
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
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CafeConnectionString %>" DeleteCommand="DELETE FROM [cake] WHERE [cake_id] = @cake_id" InsertCommand="INSERT INTO [cake] ([cake_id], [c_id], [name], [image], [description], [price]) VALUES (@cake_id, @c_id, @name, @image, @description, @price)" SelectCommand="SELECT * FROM [cake]" UpdateCommand="UPDATE [cake] SET [c_id] = @c_id, [name] = @name, [image] = @image, [description] = @description, [price] = @price WHERE [cake_id] = @cake_id">
                                <DeleteParameters>
                                    <asp:Parameter Name="cake_id" Type="Int32" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="cake_id" Type="Int32" />
                                    <asp:Parameter Name="c_id" Type="Int32" />
                                    <asp:Parameter Name="name" Type="String" />
                                    <asp:Parameter Name="image" Type="String" />
                                    <asp:Parameter Name="description" Type="String" />
                                    <asp:Parameter Name="price" Type="Double" />
                                </InsertParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="c_id" Type="Int32" />
                                    <asp:Parameter Name="name" Type="String" />
                                    <asp:Parameter Name="image" Type="String" />
                                    <asp:Parameter Name="description" Type="String" />
                                    <asp:Parameter Name="price" Type="Double" />
                                    <asp:Parameter Name="cake_id" Type="Int32" />
                                </UpdateParameters>
                            </asp:SqlDataSource>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    </form>
</asp:Content>

