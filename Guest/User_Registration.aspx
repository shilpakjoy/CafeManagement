<%@ Page Language="C#" AutoEventWireup="true" CodeFile="User_Registration.aspx.cs" Inherits="Guest_User_Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Yummy Cafe</title>
      <!--meta tags -->
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <meta name="keywords" content="Toys Shop Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
         Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
      <script>
          addEventListener("load", function () {
              setTimeout(hideURLbar, 0);
          }, false);

          function hideURLbar() {
              window.scrollTo(0, 1);
          }
      </script>
      <!--//meta tags ends here-->
      <!--booststrap-->
      <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all">
      <!--//booststrap end-->
      <!-- font-awesome icons -->
      <link href="css/fontawesome-all.min.css" rel="stylesheet" type="text/css" media="all">
      <!-- //font-awesome icons -->
      <!-- For Clients slider -->
      <link rel="stylesheet" href="css/flexslider.css" type="text/css" media="all" />
      <!--flexs slider-->
      <link href="css/JiSlider.css" rel="stylesheet">
      <!--Shoping cart-->
      <link rel="stylesheet" href="css/shop.css" type="text/css" />
      <!--//Shoping cart-->
      <!--stylesheets-->
      <link href="css/style.css" rel='stylesheet' type='text/css' media="all">
      <!--//stylesheets-->
      <link href="//fonts.googleapis.com/css?family=Sunflower:500,700" rel="stylesheet">
      <link href="//fonts.googleapis.com/css?family=Open+Sans:400,600,700" rel="stylesheet">
</head>
<body>
    
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
          <div class="modal-body">
            <div class="row">
              <div class="col-lg-12">
              </div>
              <div class="col-lg-12 p-5">
    <form id="form1" runat="server">
    <h1 class="mb-4">Register now</h1> <asp:Button ID="Button2" runat="server" Text="Back" OnClick="Button2_Click1" /> 

    <div>

        <table class="auto-style1">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    Name</td>
                <td>
                    <asp:TextBox ID="txt_name" runat="server" class="form-control"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Email</td>
                <td>
                    <asp:TextBox ID="txt_email" runat="server" class="form-control"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Password</td>
                <td>
                    <asp:TextBox ID="txt_password" runat="server" class="form-control" TextMode="Password" ></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    Mob No:</td>
                <td class="auto-style2">
                    <asp:TextBox ID="txt_mob" runat="server" class="form-control"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    House Name</td>
                <td>
                    <asp:TextBox ID="txt_housename" runat="server" class="form-control"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    City</td>
                <td>
                    <asp:TextBox ID="txt_city" runat="server" class="form-control"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="btn_register" runat="server" Text="REGISTER" class="btn btn-primary btn-lg btn-block" OnClick="btn_register_Click" />
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
