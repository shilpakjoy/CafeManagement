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
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="cake_id" DataSourceID="SqlDataSource1">
                                <Columns>
                                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                                    <asp:BoundField DataField="cake_id" HeaderText="cake_id" ReadOnly="True" SortExpression="cake_id" />
                                    <asp:BoundField DataField="c_id" HeaderText="c_id" SortExpression="c_id" />
                                    <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                                    <asp:BoundField DataField="image" HeaderText="image" SortExpression="image" />
                                    <asp:BoundField DataField="description" HeaderText="description" SortExpression="description" />
                                    <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                                    <asp:TemplateField>
                    <ItemTemplate>
                        <asp:Image ID="Image2" runat="server" ImageUrl='<%# Eval("image") %>' />
                    </ItemTemplate>
                </asp:TemplateField>
                                </Columns>
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

