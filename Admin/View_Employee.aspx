<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="View_Employee.aspx.cs" Inherits="Admin_View_Employee" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <form id="form1" runat="server">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="emp_id" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="emp_id" HeaderText="Emp_id" InsertVisible="False" ReadOnly="True" SortExpression="emp_id"  HeaderStyle-ForeColor="White"/>
                <asp:BoundField DataField="first_name" HeaderText="First_Name" SortExpression="first_name" HeaderStyle-ForeColor="White" />
                <asp:BoundField DataField="last_name" HeaderText="Last_Name" SortExpression="last_name" HeaderStyle-ForeColor="White" />
                <asp:BoundField DataField="housename" HeaderText="Housename" SortExpression="housename" HeaderStyle-ForeColor="White" />
                <asp:BoundField DataField="gender" HeaderText="Gender" SortExpression="gender" HeaderStyle-ForeColor="White" />
                <asp:BoundField DataField="state" HeaderText="State" SortExpression="state" HeaderStyle-ForeColor="White" />
                <asp:BoundField DataField="district" HeaderText="District" SortExpression="district" HeaderStyle-ForeColor="White" />
                <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" HeaderStyle-ForeColor="White" />
                <asp:BoundField DataField="pincode" HeaderText="Pincode" SortExpression="pincode" HeaderStyle-ForeColor="White" />
                <asp:BoundField DataField="phone" HeaderText="Phone" SortExpression="phone" HeaderStyle-ForeColor="White" />
                <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" HeaderStyle-ForeColor="White" />
                <asp:BoundField DataField="image" HeaderText="Image" SortExpression="image" HeaderStyle-ForeColor="White" />
                <asp:BoundField DataField="usertype" HeaderText="Usertype" SortExpression="usertype" HeaderStyle-ForeColor="White" />
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:Image ID="Image2" runat="server" ImageUrl='<%# Eval("image") %>' />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <EmptyDataTemplate>
                <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("image") %>' />
            </EmptyDataTemplate>
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CafeConnectionString %>" DeleteCommand="DELETE FROM [employee] WHERE [emp_id] = @emp_id" InsertCommand="INSERT INTO [employee] ([first_name], [last_name], [housename], [gender], [state], [district], [city], [pincode], [phone], [email], [image], [usertype]) VALUES (@first_name, @last_name, @housename, @gender, @state, @district, @city, @pincode, @phone, @email, @image, @usertype)" SelectCommand="SELECT * FROM [employee]" UpdateCommand="UPDATE [employee] SET [first_name] = @first_name, [last_name] = @last_name, [housename] = @housename, [gender] = @gender, [state] = @state, [district] = @district, [city] = @city, [pincode] = @pincode, [phone] = @phone, [email] = @email, [image] = @image, [usertype] = @usertype WHERE [emp_id] = @emp_id">
            <DeleteParameters>
                <asp:Parameter Name="emp_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="first_name" Type="String" />
                <asp:Parameter Name="last_name" Type="String" />
                <asp:Parameter Name="housename" Type="String" />
                <asp:Parameter Name="gender" Type="String" />
                <asp:Parameter Name="state" Type="String" />
                <asp:Parameter Name="district" Type="String" />
                <asp:Parameter Name="city" Type="String" />
                <asp:Parameter Name="pincode" Type="Decimal" />
                <asp:Parameter Name="phone" Type="Decimal" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="image" Type="String" />
                <asp:Parameter Name="usertype" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="first_name" Type="String" />
                <asp:Parameter Name="last_name" Type="String" />
                <asp:Parameter Name="housename" Type="String" />
                <asp:Parameter Name="gender" Type="String" />
                <asp:Parameter Name="state" Type="String" />
                <asp:Parameter Name="district" Type="String" />
                <asp:Parameter Name="city" Type="String" />
                <asp:Parameter Name="pincode" Type="Decimal" />
                <asp:Parameter Name="phone" Type="Decimal" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="image" Type="String" />
                <asp:Parameter Name="usertype" Type="String" />
                <asp:Parameter Name="emp_id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>

</asp:Content>

