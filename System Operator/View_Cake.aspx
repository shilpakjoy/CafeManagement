<%@ Page Title="" Language="C#" MasterPageFile="~/System Operator/OperatorMaster.master" AutoEventWireup="true" CodeFile="View_Cake.aspx.cs" Inherits="System_Operator_View_Cake" %>

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
           
                                <Columns>

                                    <asp:CommandField ShowEditButton="True" />
                                <asp:TemplateField HeaderText="Image">
                                <ItemTemplate>
                                <asp:Image ID="imgg" runat="server" ImageUrl='<%# Eval("Image") %>' Height="40px" Width="40px" />
                                </ItemTemplate>
                                </asp:TemplateField>

                                    <asp:BoundField DataField="cake_id" HeaderText="cake_id" 
                                        SortExpression="cake_id" InsertVisible="False" ReadOnly="True" />
                                    <asp:BoundField DataField="category" HeaderText="category" SortExpression="category" />
                                    <asp:BoundField DataField="name" HeaderText="name" 
                                        SortExpression="name" >
                                    </asp:BoundField>
                                    <asp:BoundField DataField="image" HeaderText="image" 
                                        SortExpression="image" />
                                    <asp:BoundField DataField="description" HeaderText="description" SortExpression="description" />
                                    <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                                </Columns>
                                <FooterStyle BackColor="Tan" />
                                <HeaderStyle BackColor="Tan" Font-Bold="True" />
                                <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
                                    HorizontalAlign="Center" />
                                <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                                <SortedAscendingCellStyle BackColor="#FAFAE7" />
                                <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                                <SortedDescendingCellStyle BackColor="#E1DB9C" />
                                <SortedDescendingHeaderStyle BackColor="#C2A47B" />
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CafeConnectionString %>" DeleteCommand="DELETE FROM [cake] WHERE [cake_id] = @cake_id" InsertCommand="INSERT INTO [cake] ([category], [name], [image], [description], [price]) VALUES (@category, @name, @image, @description, @price)" SelectCommand="SELECT * FROM [cake]" UpdateCommand="UPDATE [cake] SET [category] = @category, [name] = @name, [image] = @image, [description] = @description, [price] = @price WHERE [cake_id] = @cake_id">
                                <DeleteParameters>
                                    <asp:Parameter Name="cake_id" Type="Int32" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="category" Type="String" />
                                    <asp:Parameter Name="name" Type="String" />
                                    <asp:Parameter Name="image" Type="String" />
                                    <asp:Parameter Name="description" Type="String" />
                                    <asp:Parameter Name="price" Type="Double" />
                                </InsertParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="category" Type="String" />
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

