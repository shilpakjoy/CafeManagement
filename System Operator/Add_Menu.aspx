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
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form runat="server" style="height: 486px; width: 671px; margin-right: 0px">

        <table class="auto-style1">
            <tr>
                <td>
                    <asp:Label ID="lbl_type" runat="server" Text="Type"></asp:Label>&nbsp;
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList1_type" runat="server">
                        <asp:ListItem>Coffee</asp:ListItem>
                        <asp:ListItem>Cake</asp:ListItem>
                    </asp:DropDownList>&nbsp;
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lbl_name" runat="server" Text="Name"></asp:Label>&nbsp;
                </td>
                <td>
                    <asp:TextBox ID="txt_name" runat="server"></asp:TextBox>&nbsp;
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lbl_image" runat="server" Text="Image"></asp:Label>&nbsp;
                </td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                    <asp:Image ID="Image1" runat="server"/>        
                    <asp:Button ID="btn_upload" runat="server" Text="UPLOAD" class="btn btn-primary" OnClick="btn_upload_Click1"/>&nbsp;
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lbl_price" runat="server" Text="Price"></asp:Label>&nbsp;
                </td>
                <td>
                    <asp:TextBox ID="txt_price" runat="server"></asp:TextBox>&nbsp;
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="btn_submit" runat="server" Text="ADD" class="btn btn-primary" OnClick="btn_submit_Click"/>&nbsp;
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
           
        </table>

        </form>
</asp:Content>

