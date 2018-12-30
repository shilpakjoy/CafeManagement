<%@ Page Title="" Language="C#" MasterPageFile="~/Guest/UserMaster.master" AutoEventWireup="true" CodeFile="menu_pastry.aspx.cs" Inherits="Guest_menu_pastry" %>

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
                                    NAME:
                                    <asp:Label ID="nameLabel" runat="server" Font-Bold="True" ForeColor="Black" Text='<%# Eval("name") %>' />
                                    <br />
                                   
                                    <asp:Image ID="Image1" runat="server" Height="200px" Width="300px" ImageUrl='<%# Eval("image") %>' />
                                    <br />
                                    PRICE:
                                    <asp:Label ID="priceLabel" runat="server" Font-Bold="True" ForeColor="Black" Text='<%# Eval("price") %>' />
                                    <br />
<br />
                                </ItemTemplate>
                            </asp:DataList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CafeConnectionString %>" SelectCommand="SELECT [name], [image], [price] FROM [menu] WHERE ([type] = @type2)">
                                <SelectParameters>
                                    <asp:Parameter DefaultValue="Cake" Name="type2" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                            
                           
                        </div>
               </div>  
			</div>
      
		</div>
</section>
</asp:Content>

