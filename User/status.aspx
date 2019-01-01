<%@ Page Title="" Language="C#" MasterPageFile="~/User/Usermaster.master" AutoEventWireup="true" CodeFile="status.aspx.cs" Inherits="User_status" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<form id="form1" runat="server">
    <asp:DataList ID="DataList1" runat="server" BackColor="#FFFFCC" DataSourceID="SqlDataSource1" Width="268px">
        <ItemTemplate>
            email:
            <asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>' />
            <br />
            date:
            <asp:Label ID="dateLabel" runat="server" Text='<%# Eval("date") %>' />
            <br />
            time:
            <asp:Label ID="timeLabel" runat="server" Text='<%# Eval("time") %>' />
            <br />
            people:
            <asp:Label ID="peopleLabel" runat="server" Text='<%# Eval("people") %>' />
<br />
            status:
            <asp:Label ID="statusLabel" runat="server" Text='<%# Eval("status") %>' />
            <br />
            <br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CafeConnectionString %>" SelectCommand="SELECT [email], [date], [time], [people], [status] FROM [table_reservation] WHERE ([email] = @email)">
        <SelectParameters>
            <asp:SessionParameter Name="email" SessionField="email" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</form>
</asp:Content>

