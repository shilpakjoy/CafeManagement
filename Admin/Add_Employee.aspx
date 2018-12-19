<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="Add_Employee.aspx.cs" Inherits="Admin_Add_Employee" %>

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
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form runat="server" style="height: 486px; width: 671px; margin-right: 0px">


        <table class="nav-justified">
            <tr>
                <td class="auto-style2">First Name&nbsp;</td>
                
                <td>
                    <asp:TextBox ID="txt_fname" runat="server" class="form-control"></asp:TextBox>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Last Name&nbsp;</td>
                
                <td>
                    <asp:TextBox ID="txt_lname" runat="server" class="form-control"></asp:TextBox>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Address Line&nbsp;</td>
                <td>
                    <asp:TextBox ID="txt_address" runat="server" TextMode="MultiLine" class="form-control"></asp:TextBox>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Gender&nbsp;</td>
                <td>
                    <asp:RadioButtonList ID="RadioBtnList1_gender" runat="server">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:RadioButtonList>
                    </td>
                <td>&nbsp;</td>
            </tr>
            
            <tr>
                <td class="auto-style2">State&nbsp;</td>
                <td>
                    <asp:DropDownList ID="DropDownList2_state" runat="server">
                        <asp:ListItem>Select</asp:ListItem>
                        <asp:ListItem>Kerala</asp:ListItem>
                        <asp:ListItem>aaa</asp:ListItem>
                        <asp:ListItem>bbb</asp:ListItem>
                        <asp:ListItem>ddd</asp:ListItem>
                    </asp:DropDownList>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">District&nbsp;</td>
                <td>
                    <asp:TextBox ID="txt_district" runat="server" class="form-control"></asp:TextBox>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">City&nbsp;</td>
                <td>
                    <asp:TextBox ID="txt_city" runat="server" class="form-control"></asp:TextBox>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Pincode&nbsp;</td>
                <td>
                    <asp:TextBox ID="txt_pincode" runat="server" class="form-control"></asp:TextBox>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            
            <tr>
                <td class="auto-style2">Phone&nbsp;</td>
                <td class="auto-style1">
                    <asp:TextBox ID="txt_phone" runat="server" class="form-control"></asp:TextBox>&nbsp;</td>
                <td class="auto-style1"></td>
            </tr>
            <tr>
                <td class="auto-style2">Email&nbsp;</td>
                <td class="auto-style1">
                    <asp:TextBox ID="txt_email" runat="server" class="form-control"></asp:TextBox>&nbsp;</td>
                <td class="auto-style1"></td>
            </tr>
            <tr>
                <td class="auto-style2">Image&nbsp;</td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
 
                    <asp:Image ID="Image1" runat="server"/>        
                                <asp:Button ID="Button2" runat="server" Text="UPLOAD" OnClick="Button2_Click1" />

        </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Type</td>
                <td>
                    <asp:DropDownList ID="DropDownList1_type" runat="server">
                        <asp:ListItem>Select</asp:ListItem>
                        <asp:ListItem>Baker</asp:ListItem>
                        <asp:ListItem>Servers</asp:ListItem>
                        <asp:ListItem>System Operator</asp:ListItem>
                        <asp:ListItem>Delivery Guy</asp:ListItem>
                    </asp:DropDownList>

        </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    </td>
                
                <td class="auto-style1">
                    <asp:Button ID="Button1" runat="server" Text="Button" class="btn btn-primary" OnClick="Button1_Click"/></td>
                <td class="auto-style1"></td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                
                <td class="auto-style1">
                    &nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
            </tr>
        </table>


 </form>
</asp:Content>

