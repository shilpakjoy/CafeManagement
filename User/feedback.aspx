<%@ Page Title="" Language="C#" MasterPageFile="~/User/Usermaster.master" AutoEventWireup="true" CodeFile="feedback.aspx.cs" Inherits="User_feedback" %>

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
                GIVE FEEDBACK</td>
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
                            Feedback :&nbsp;&nbsp;
                        </td>
                        <td>
                            <asp:TextBox ID="txtfeedback" runat="server" CssClass="txt"></asp:TextBox>
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
                            <asp:Button ID="btn_submit" runat="server" CssClass="btn" Text="SUBMIT" OnClick="btn_add_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td class="style3">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
        </form>
</asp:Content>

