<%@ Page Title="" Language="C#" MasterPageFile="~/Guest/UserMaster.master" AutoEventWireup="true" CodeFile="blackforest.aspx.cs" Inherits="Guest_blackforest" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section class="contact py-5">
	<div class="container">
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
			<div class="mail_grid_w3l">

               	<div class="row">
						<div class="col-md-6 contact_left_grid" data-aos="fade-right">
                       
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" RepeatColumns="3">
        <ItemTemplate>
            name:
            <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
            <br />
            image:
            <asp:Label ID="imageLabel" runat="server" Text='<%# Eval("image") %>' />
            <br />
            description:
            <asp:Label ID="descriptionLabel" runat="server" Text='<%# Eval("description") %>' />
            <br />
            price:
            <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
            <br />
            <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("image") %>' />
<br />
            <asp:Button ID="Button1" runat="server" CommandName="View More"  Text="View More" class="btn scroll" />
<br />
                                    <br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CafeConnectionString %>" SelectCommand="SELECT [name], [image], [description], [price] FROM [cake] WHERE ([category] = @category)">
        <SelectParameters>
            <asp:Parameter DefaultValue="STRAWBERRY" Name="category" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
                               
                        </div>
               </div>  
			</div>
      
		</div>
</section>
 
</asp:Content>

