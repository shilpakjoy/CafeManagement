<%@ Page Title="" Language="C#" MasterPageFile="~/Guest/UserMaster.master" AutoEventWireup="true" CodeFile="View_categ_cakes.aspx.cs" Inherits="Guest_View_categ_cakes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:DataList ID="DataList1" runat="server" DataKeyField="cake_id" DataSourceID="SqlDataSource2">
            <ItemTemplate>
                <%--&nbsp;cake_id:<asp:Label ID="cake_idLabel" runat="server" Text='<%# Eval("cake_id") %>' />
                <br />
                c_id:
                <asp:Label ID="c_idLabel" runat="server" Text='<%# Eval("c_id") %>' />
                <br />
                &nbsp;<br />image:
                <asp:Label ID="imageLabel" runat="server" Text='<%# Eval("image") %>' />
                <br />
                &nbsp;<br />&nbsp;<br />--%>
                <br />
                <table class="w-100">
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>name:<asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>description:<asp:Label ID="descriptionLabel" runat="server" Text='<%# Eval("description") %>' />
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>price:<asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("image") %>' />
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                         <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="btn_cart" runat="server" Text="CART" CommandName="addtocart" OnClick="btn_cart_Click" />&nbsp;
                            <asp:Button ID="btn_buynow" runat="server" CommandName="buyname" OnClick="btn_buynow_Click" Text="BUY NOW" />
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
<br />

            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CafeConnectionString %>" SelectCommand="SELECT * FROM [cake] WHERE ([c_id] = @c_id)">
            <SelectParameters>
                <asp:QueryStringParameter Name="c_id" QueryStringField="id" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <br />
       
    

</asp:Content>

