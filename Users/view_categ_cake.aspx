<%@ Page Language="C#" AutoEventWireup="true" CodeFile="view_categ_cake.aspx.cs" Inherits="Guest_view_catog_cake" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:DataList ID="DataList1" runat="server" DataKeyField="cake_id" DataSourceID="SqlDataSource2" BorderColor="#999999" RepeatColumns="3">
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
                        <td>NAME:<asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>DESCRIPTION:<asp:Label ID="descriptionLabel" runat="server" Text='<%# Eval("description") %>' />
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>PRICE:<asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
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
                            &nbsp;
  <a href='purchases.aspx?id=<%# Eval("c_id") %>&amp;item=<%# Eval("cake_id") %>'>Interested?</a>

                            <asp:Button ID="btn_buynow" runat="server" CommandName="buyname"  Text="BOOK NOW" OnClick="btn_buynow_Click" />
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
       
    </div>
    </form>
</body>
</html>
