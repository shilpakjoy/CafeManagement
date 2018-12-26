<%@ Page Title="" Language="C#" MasterPageFile="~/System Operator/OperatorMaster.master" AutoEventWireup="true" CodeFile="View_tblresrv_details.aspx.cs" Inherits="System_Operator_View_tblresrv_details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <form id="form1" runat="server">
       
        <asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False" DataSourceID="SqlDataSource2" Height="50px" Width="125px" BackColor="#FFFFCC" DataKeyNames="reserve_id">
            <Fields>
                <asp:BoundField DataField="reserve_id" HeaderText="reserve_id" SortExpression="reserve_id" InsertVisible="False" ReadOnly="True" />
                <asp:BoundField DataField="f_name" HeaderText="f_name" SortExpression="f_name" />
                <asp:BoundField DataField="l_name" HeaderText="l_name" SortExpression="l_name" />
                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
<%--                <asp:BoundField DataField="imagepath" HeaderText="imagepath" SortExpression="imagepath" />--%>
                <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                <asp:BoundField DataField="people" HeaderText="people" SortExpression="people" />
                <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                <asp:BoundField DataField="time" HeaderText="time" SortExpression="time" />
                <asp:BoundField DataField="message" HeaderText="message" SortExpression="message" />
                <asp:BoundField DataField="status" HeaderText="status" SortExpression="status" />
            </Fields>
           
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CafeConnectionString %>" SelectCommand="SELECT * FROM [table_reservation]">
            <SelectParameters>
                <asp:QueryStringParameter Name="reserve_id" QueryStringField="id" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        
        <br />
        <br />
        <asp:Button ID="btn_approve" runat="server" OnClick="Button1_Click" Text="Approve" />
        <asp:Button ID="btn_reject" runat="server" OnClick="Button2_Click" Text="Reject" />
    </form>
</asp:Content>

