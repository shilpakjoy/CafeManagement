<%@ Page Language="C#" AutoEventWireup="true" CodeFile="forgetpassword.aspx.cs" Inherits="Guest_forgetpassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
     <form id="form1" runat="server">
    <div>
        <table class="auto-style1" style="border-style: solid">
            <tr>
                <td colspan="2" style="text-align: center" class="auto-style11">
                    <h1>
                        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="BACK" />
                    </h1>
                    <h1>PASSWORD CHANGE</h1><asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                </td>
            </tr>
       <tr><td> <asp:Label ID="Label1" runat="server" Text="Email"></asp:Label></td>
        <td><asp:TextBox ID="txtemail" runat="server" ></asp:TextBox></td></tr>
        <tr><td> <asp:Label ID="Label2" runat="server" Text="Phone"></asp:Label></td>
        <td><asp:TextBox ID="txtphn" runat="server" ></asp:TextBox></td></tr>
        <tr><td></td><td><asp:Button ID="Button1" runat="server" Text="SUBMIT" OnClick="Button1_Click" /></td></tr>
            </table>
    </div>
    </form>
</body>
</html>
