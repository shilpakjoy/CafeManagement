<%@ Page Title="" Language="C#" MasterPageFile="~/System Operator/OperatorMaster.master" AutoEventWireup="true" CodeFile="Add_cakes.aspx.cs" Inherits="System_Operator_Add_cakes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <style type="text/css">
        .style2
        {
            width: 664px;
        }
        .style3
        {
            width: 186px;
        }
        .style4
        {
            text-align: right;
            color: #fff;
            font-size: medium;
            height: 35px;
            width: 186px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form runat="server">
     <table class="tbl">
        <tr>
            <td class="tblhead">
                ADD NEW PRODUCT</td>
        </tr>
        <tr>
            <td>
                <table align="center" class="style2">
                    <tr>
                        <td class="style3">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style4">
                            &nbsp;</td>
                        <td class="lbl">
                            Category :&nbsp;
                        </td>
                        <td>
                            <asp:DropDownList ID="drpcategory" runat="server" CssClass="txt" 
                                ForeColor="#006600">
                                <asp:ListItem>SELECT CAKE</asp:ListItem>
                                <asp:ListItem>VANILA</asp:ListItem>
                                <asp:ListItem>CHOCOLATE</asp:ListItem>
                                <asp:ListItem>STRAWBERRY</asp:ListItem>
                                <asp:ListItem>BLACK FOREST</asp:ListItem>
                                <asp:ListItem>WHITE FOREST</asp:ListItem>
                                <asp:ListItem>RED VELVET</asp:ListItem>
                                <asp:ListItem>PINEAPPLE</asp:ListItem>
                                <asp:ListItem>SPECIAL</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="style4">
                            &nbsp;</td>
                        <td class="lbl">
                            Name :&nbsp;&nbsp;
                        </td>
                        <td>
                            <asp:TextBox ID="txtname" runat="server" CssClass="txt"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style4">
                            &nbsp;</td>
                        <td class="lbl">
                            Price :&nbsp;&nbsp;
                        </td>
                        <td>
                            <asp:TextBox ID="txtprice" runat="server" CssClass="txt"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style4">
                            &nbsp;</td>
                        <td class="lbl">
                            Image :&nbsp;&nbsp;
                        </td>
                        <td>
                            <asp:FileUpload ID="FileUpload1" runat="server" />
                    <asp:Image ID="Image1" runat="server"/>        
                    <asp:Button ID="btn_upload" runat="server" Text="UPLOAD" class="btn btn-primary" OnClick="btn_upload_Click"/>&nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td class="style4">
                            &nbsp;</td>
                        <td class="lbl">
                            Detail :&nbsp; 
                        </td>
                        <td>
                            <asp:TextBox ID="txtdetail" runat="server" CssClass="txt" Height="45px" 
                                TextMode="MultiLine" Width="200px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style4">
                            &nbsp;</td>
                        <td class="lbl">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style3">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            <asp:Button ID="btn_add" runat="server" CssClass="btn" Text="ADD CAKE" OnClick="btn_add_Click"/>
                        </td>
                    </tr>
                    <tr>
                        <td class="style3">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            <asp:Label ID="lblmsg" runat="server" ForeColor="Yellow"></asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
        </form>
</asp:Content>

