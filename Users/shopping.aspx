<%@ Page Title="" Language="C#" MasterPageFile="~/Users/UserMaster.master" AutoEventWireup="true" CodeFile="shopping.aspx.cs" Inherits="Guest_shopping" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style1 {
        height: 26px;
    }
    .auto-style2 {
        color: #000000;
    }
</style>
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
                            <asp:DataList ID="DataList1" runat="server" DataKeyField="c_id" DataSourceID="SqlDataSource1" RepeatColumns="3">
                                <ItemTemplate>
                                    &nbsp;<br />                                    
                                    <br />
                                    <table class="w-100">
                                        <tr>
                                            <td>Category:<asp:Label ID="categoryLabel" runat="server" Text='<%# Eval("category") %>' />
                                            </td>
                                            <td>
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td>&nbsp;</td>
                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr>
                                            
                                            <td>
                                                <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("image") %>' />
                                            </td>
                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style1"></td>
                                            <td class="auto-style1"></td>
                                        </tr>

                                        


                                       <tr>
                                            
                                            <td><a href='View_categ_cake.aspx?id=<%# Eval("c_id") %>' class="auto-style2"><b>View More</b></a>&nbsp;</td>
                                       <td>&nbsp;</td>
                                             </tr>
                                    </table>
                                </ItemTemplate>
                            </asp:DataList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CafeConnectionString %>" SelectCommand="SELECT * FROM [category]"></asp:SqlDataSource>
                           
                        </div>
               </div>  
			</div>
      
		</div>
</section>
</asp:Content>

