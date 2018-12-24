<%@ Page Title="" Language="C#" MasterPageFile="~/System Operator/OperatorMaster.master" AutoEventWireup="true" CodeFile="Add_Menu.aspx.cs" Inherits="System_Operator_Add_Menu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <div class="using-border py-3">
         <div class="inner_breadcrumb  ml-4">
            <ul class="short_ls">
               <li>
                  <a href="index.aspx">Home</a>
                  <span>/ /</span>
               </li>
               <li>Service</li>
            </ul>
         </div>
      </div>
    <style type="text/css">
        .auto-style1 {
            width: 350px;
        }
    </style>
    <style type="text/css">
        .auto-style1 {
            width: 443px;
        }
    </style>
    <style type="text/css">
        .auto-style1 {
            height: 28px;
        }
        .auto-style2 {
            height: 28px;
            width: 308px;
        }
    </style>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
    <style type="text/css">
        .auto-style1 {
            width: 401px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
        <form runat="server" style="height: 486px; width: 455px; margin-right: 0px">

        <table style="border: 3px solid #181720">
<%--    <form runat="server" style="height: 486px; width: 671px; margin-right: 0px">--%>

<%--        <table class="auto-style1">--%>
            <tr>
                <td style="color: #000000;">
                    <asp:Label ID="lbl_type" runat="server" font-size="Large" Text="Type"></asp:Label>&nbsp;
                </td>
                <td class="auto-style1">
                    <asp:DropDownList ID="DropDownList1_type" runat="server">
                        <asp:ListItem>Coffee</asp:ListItem>
                        <asp:ListItem>Cake</asp:ListItem>
                    </asp:DropDownList>&nbsp;
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lbl_name" runat="server" style="color: #000000" font-size="Large" Text="Name"></asp:Label>&nbsp;
                </td>
                <td class="auto-style1">
                    <asp:TextBox ID="txt_name" runat="server" class="form-control"></asp:TextBox>&nbsp;
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lbl_image" runat="server" style="color: #000000" font-size="Large" Text="Image"></asp:Label>&nbsp;
                </td>
                <td class="auto-style1">
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                    <asp:Image ID="Image1" runat="server"/>        
                    <asp:Button ID="btn_upload" runat="server" Text="UPLOAD" class="btn btn-primary" OnClick="btn_upload_Click1"/>&nbsp;
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lbl_price" runat="server" style="color: #000000" font-size="Large" Text="Price"></asp:Label>&nbsp;
                </td>
                <td class="auto-style1">
                    <asp:TextBox ID="txt_price" runat="server" class="form-control"></asp:TextBox>&nbsp;
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style1">
                    <asp:Button ID="btn_submit" runat="server" Text="ADD" class="btn btn-primary" OnClick="btn_submit_Click"/>&nbsp;
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
            </tr>
           
        </table>

        </form>
</asp:Content>

