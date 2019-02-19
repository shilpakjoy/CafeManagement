<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="profile.aspx.cs" Inherits="Admin_profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1">
        <ItemTemplate>
            first_name:
            <asp:Label ID="first_nameLabel" runat="server" Text='<%# Eval("first_name") %>' />
            <br />
            last_name:
            <asp:Label ID="last_nameLabel" runat="server" Text='<%# Eval("last_name") %>' />
            <br />
            housename:
            <asp:Label ID="housenameLabel" runat="server" Text='<%# Eval("housename") %>' />
            <br />
            gender:
            <asp:Label ID="genderLabel" runat="server" Text='<%# Eval("gender") %>' />
            <br />
            state:
            <asp:Label ID="stateLabel" runat="server" Text='<%# Eval("state") %>' />
            <br />
            district:
            <asp:Label ID="districtLabel" runat="server" Text='<%# Eval("district") %>' />
            <br />
            city:
            <asp:Label ID="cityLabel" runat="server" Text='<%# Eval("city") %>' />
            <br />
            pincode:
            <asp:Label ID="pincodeLabel" runat="server" Text='<%# Eval("pincode") %>' />
            <br />
            phone:
            <asp:Label ID="phoneLabel" runat="server" Text='<%# Eval("phone") %>' />
            <br />
            email:
            <asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>' />
            <br />
            image:
            <asp:Label ID="imageLabel" runat="server" Text='<%# Eval("image") %>' />
            <br />
            <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("image") %>' />
<br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CafeConnectionString %>" SelectCommand="SELECT * FROM [employee] WHERE (([usertype] = @usertype) AND ([usertype] = @usertype2))">
        <SelectParameters>
            <asp:QueryStringParameter Name="usertype" QueryStringField="admin" Type="String" />
            <asp:CookieParameter CookieName="admin" Name="usertype2" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</form>
</asp:Content>

