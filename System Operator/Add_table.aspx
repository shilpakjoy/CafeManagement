<%@ Page Title="" Language="C#" MasterPageFile="~/System Operator/OperatorMaster.master" AutoEventWireup="true" CodeFile="Add_table.aspx.cs" Inherits="System_Operator_Add_table" %>

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
        
        <br />
        
     <table class="tbl">
        <tr>
            <td class="tblhead">
                ADD TABLE DETAILS</td>
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
                            ID :&nbsp;&nbsp;
                        </td>
                        <td>
                            <asp:TextBox ID="txtid" runat="server" CssClass="txt"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style4">
                            &nbsp;</td>
                        <td class="lbl">
                            Chairs :&nbsp;&nbsp;
                        </td>
                        <td>
                            <asp:TextBox ID="txtchair" runat="server" CssClass="txt"></asp:TextBox>
                        </td>
                    </tr>
                    
                    <tr>
                        <td class="style4">
                            &nbsp;</td>
                        <td class="lbl">
                            Floor :&nbsp; 
                        </td>
                        <td>
                            <asp:TextBox ID="txtfloor" runat="server" CssClass="txt"></asp:TextBox>
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
                            <asp:Button ID="btn_add" runat="server" CssClass="btn" Text="ADD TABLE" OnClick="btn_add_Click" />
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

