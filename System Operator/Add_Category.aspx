<%@ Page Title="" Language="C#" MasterPageFile="~/System Operator/OperatorMaster.master" AutoEventWireup="true" CodeFile="Add_Category.aspx.cs" Inherits="System_Operator_Add_Category" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <table class="style1" style="height: 256px; width: 100%">
    <tr>
        <td colspan="2" class="tblhead">
            <h1><b>Add Category</b></h1></td>
    </tr>
   
   
    <tr>
        <td class="lbl">
            Category Name:</td>
        <td style="text-align: left">
            <asp:TextBox ID="txtname" runat="server" placeholder="Enter Category Name!!!" 
                CssClass="txt" Width="141px" ></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="txtname" ErrorMessage="Enter Category" 
                ForeColor="#CC0000"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style17">
            Image</td>
        <td><asp:FileUpload ID="FileUpload1" runat="server" />
                    <asp:Image ID="Image1" runat="server"/>        
                    <asp:Button ID="btn_upload" runat="server" Text="UPLOAD" class="btn btn-primary" OnClick="btn_upload_Click"/>&nbsp;
                        </td>
    </tr>
    <tr>
        <td class="style17">
            </td>
        <td style="text-align: left" class="style17">
            <asp:Button ID="btnadd" runat="server" BorderColor="#FFFF99" CssClass="btn" 
                style="margin-left: 0px" Text="ADD" Width="70px" onclick="btnadd_Click" 
                Height="30px" />
        </td>
    </tr>
    <tr>
        <td class="style17">
            &nbsp;</td>
        <td style="text-align: left" class="style17">
            &nbsp;</td>
    </tr>
    
</table>

</form>

</asp:Content>

