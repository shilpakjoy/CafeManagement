﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="checkouts.aspx.cs" Inherits="Guest_checkouts" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Yummy Cafe</title>
      <!--meta tags -->
      <!--//Shoping cart-->
      <!--checkout-->
      <link rel="stylesheet" type="text/css" href="css/checkout.css">
      <!--//checkout-->
      <!--stylesheets-->
      <link href="css/style.css" rel='stylesheet' type='text/css' media="all">
      <!--//stylesheets-->
      <link href="//fonts.googleapis.com/css?family=Sunflower:500,700" rel="stylesheet">
      <link href="//fonts.googleapis.com/css?family=Open+Sans:400,600,700" rel="stylesheet">
    <style type="text/css">
        .auto-style1 {
            width: 308px;
        }
    </style>
</head>
<body>
    <!--headder-->
      <div class="header-outs" id="home">
       
		  </div>
         <!--//headder-->
         <!-- banner -->
         <div class="inner_page-banner one-img">
         </div>
         <!-- short -->
         <div class="using-border py-3">
            <div class="inner_breadcrumb  ml-4">
               <ul class="short_ls">
                  <li>
                     <a href="index.html">Home</a>
                     <span>/ /</span>
                  </li>
                  <li>Checkout</li>
               </ul>
            </div>
         </div>
         <!-- //short-->
         <!--Checkout-->  
         <!-- //banner -->
         <!-- top Products -->
         <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
          <div class="modal-body">
            <div class="row">
              <div class="col-lg-12">
              </div>
              <div class="col-lg-12 p-5">
    <form id="form1" runat="server">
    <h1 class="mb-4">Checkout<asp:Button ID="Button2" runat="server" Text="Back" Width="164px" /> 

        </h1>
        <p class="mb-4">&nbsp;</p>
        <p class="mb-4"> <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource2" BorderColor="#999999" RepeatColumns="3">
            <ItemTemplate>
                <%--&nbsp;cake_id:<asp:Label ID="cake_idLabel" runat="server" Text='<%# Eval("cake_id") %>' />
                <br />
                c_id:
                <asp:Label ID="c_idLabel" runat="server" Text='<%# Eval("c_id") %>' />
                <br />
                &nbsp;<br />image:
                <asp:Label ID="imageLabel" runat="server" Text='<%# Eval("image") %>' />
                <br />
                &nbsp;<br />&nbsp;<br />--%>
                &nbsp;<asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                <br />
                description:
                <asp:Label ID="descriptionLabel" runat="server" Text='<%# Eval("description") %>' />
<br />

                price:
                <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
                <br />
                <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("image") %>' />
                <br />

            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CafeConnectionString %>" SelectCommand="SELECT [name], [image], [description], [price] FROM [cake] WHERE ([cake_id] = @cake_id)">
            <SelectParameters>
                <asp:QueryStringParameter Name="cake_id" QueryStringField="id" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>&nbsp;</p>

    <div>

        <table class="auto-style1">
            <tr>
                <td colspan="2" style="text-align: center">Proceed Checkout</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
            </tr>
            <tr>
                <td>
                    Name</td>
                <td class="auto-style1">
                    <asp:TextBox ID="txt_name" runat="server" class="form-control" placeholder="Full name"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Email</td>
                <td class="auto-style1">
                    <asp:TextBox ID="txt_email" runat="server" class="form-control" placeholder="Username"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Password</td>
                <td class="auto-style1">
                    <asp:TextBox ID="txt_pswd" runat="server" class="form-control" placeholder="Password"></asp:TextBox>                    
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ControlToValidate="txt_pswd" ForeColor="Red"></asp:RequiredFieldValidator>

                </td>
            </tr>
            <tr>
                <td>
                    Confirm Password</td>
                <td class="auto-style1">
                    <asp:TextBox ID="txt_confpswd" runat="server" class="form-control" ></asp:TextBox>
                
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*" ControlToValidate="txt_confpswd" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txt_pswd" ControlToValidate="txt_confpswd" ErrorMessage="CompareValidator" ForeColor="Red"></asp:CompareValidator>
                    
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    Mob No:</td>
                <td class="auto-style1">
                    <asp:TextBox ID="txt_mob" runat="server" class="form-control"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Landmark</td>
                <td class="auto-style1">
                    <asp:TextBox ID="txt_landmark" runat="server" class="form-control"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Town/City</td>
                <td class="auto-style1">
                    <asp:TextBox ID="txt_town" runat="server" class="form-control"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Address Type</td>
                <td class="auto-style1">
                     <asp:DropDownList ID="DropDownList1_people" runat="server" class="form-control">
                            <asp:ListItem>Home</asp:ListItem>
                            <asp:ListItem>Office</asp:ListItem>
                            <asp:ListItem>Commercial</asp:ListItem>
                            
                        </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style1"></td>
            </tr>

           


            <tr>
                <td>&nbsp;</td>
                <td class="auto-style1">
                    <asp:Button ID="btn_register" runat="server" Text="REGISTER" class="btn btn-primary btn-lg btn-block" />
                    <asp:Button ID="Button1" runat="server" Text="Close" class="btn btn-secondary" data-dismiss="modal"/>
                </td>
            </tr>
        </table>

    </div>
    </form>
                    </div>
            </div>
            
          </div>
        </div>
      </div>
         <script src="js/bootstrap.min.js"></script>
</body>
</html>
