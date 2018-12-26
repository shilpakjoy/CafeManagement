<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Table_Reservation.aspx.cs" Inherits="Guest_Table_Reservation" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

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
<body style="background:url(images/reservation_1.jpg)">
  
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
          <div class="modal-body">
            <div class="row">
              <div class="col-lg-12">
<%--                <div class="bg-image" style="background-image: url(images/reservation_1.jpg);"></div>--%>
              </div>
              <div class="col-lg-12 p-5">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <small>CLOSE </small><span aria-hidden="true">&times;</span>
                </button>
                <h1 class="mb-4">Reserve A Table</h1>  
                  <form id="form1" runat="server">
                  <div class="row">
                    <div class="col-md-6 form-group">
                        <asp:Label ID="lbl_fname" runat="server" Text="First Name"></asp:Label>
                        <asp:TextBox ID="txt_fname" runat="server" type="text" class="form-control"></asp:TextBox>
                      <%--<label for="m_fname">First Name</label>
                      <input type="text" class="form-control" id="m_fname">--%>
                    </div>
                    <div class="col-md-6 form-group">
                        <asp:Label ID="lbl_lname" runat="server" Text="Last Name"></asp:Label>
                        <asp:TextBox ID="txt_lname" runat="server" type="text" class="form-control"></asp:TextBox>
                      <%--<label for="m_lname">Last Name</label>
                      <input type="text" class="form-control" id="m_lname">--%>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-md-12 form-group">
                        <asp:Label ID="lbl_email" runat="server" Text="Email"></asp:Label>
                        <asp:TextBox ID="txt_email" runat="server" type="email" class="form-control"></asp:TextBox>
                      <%--<label for="m_email">Email</label>
                      <input type="email" class="form-control" id="m_email">--%>
                    </div>
                   </div>
                   <div class="row">
                      <div class="col-md-6 form-group">
                        <asp:Label ID="lbl_pswd" runat="server" Text="Password"></asp:Label>
                        <asp:TextBox ID="txt_pswd" runat="server" type="text" class="form-control"></asp:TextBox>

                      <%--<label for="m_lname">Last Name</label>
                      <input type="text" class="form-control" id="m_lname">--%>
                      </div>
                        <div class="col-md-6 form-group">
                        <asp:Label ID="lbl_confpswd" runat="server" Text=" Confirm Password"></asp:Label>
                        <asp:TextBox ID="txt_confpswd" runat="server" type="text" class="form-control"></asp:TextBox>
                            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txt_pswd" ControlToValidate="txt_confpswd" ErrorMessage="CompareValidator"></asp:CompareValidator>
                      <%--<label for="m_lname">Last Name</label>
                      <input type="text" class="form-control" id="m_lname">--%>
                      </div>
                  </div>
                  <div class="row">
                    <div class="col-md-6 form-group">
                        <asp:Label ID="Label4" runat="server" Text="How Many People"></asp:Label>
                        <asp:DropDownList ID="DropDownList1_people" runat="server" class="form-control">
                            <asp:ListItem>1 People</asp:ListItem>
                            <asp:ListItem>2 People</asp:ListItem>
                            <asp:ListItem>3 People</asp:ListItem>
                            <asp:ListItem>4+ People</asp:ListItem>
                        </asp:DropDownList>
                      <%--<label for="m_people">How Many People</label>
                      <select name="" id="m_people" class="form-control">
                        <option value="1">1 People</option>
                        <option value="2">2 People</option>
                        <option value="3">3 People</option>
                        <option value="4+">4+ People</option>
                      </select>--%>
                    </div>
                    <div class="col-md-6 form-group">
                        <asp:Label ID="lbl_phone" runat="server" Text="Phone"></asp:Label>
                        <asp:TextBox ID="txt_phone" runat="server" type="text" class="form-control"></asp:TextBox>
                      <%--<label for="m_phone">Phone</label>
                      <input type="text" class="form-control" id="m_phone">--%>
                    </div>
                  </div>

                  <div class="row">
                    <div class="col-md-6 form-group">
                        <asp:Label ID="lbl_date" runat="server" Text="Date"></asp:Label>
                        <asp:TextBox ID="txt_date" runat="server" type="text" class="form-control" TextMode="Date"></asp:TextBox>
                      <%--<label for="m_date">Date</label>
                      <input type="text" class="form-control" id="m_date">--%>
                    </div>
                    <div class="col-md-6 form-group">
                        <asp:Label ID="lbl_time" runat="server" Text="Time"></asp:Label>
                        <asp:TextBox ID="txt_time" runat="server" type="text" class="form-control"></asp:TextBox>
                     <%-- <label for="m_time">Time</label>
                      <input type="text" class="form-control" id="m_time">--%>
                    </div>
                  </div>

                  <div class="row">
                    <div class="col-md-12 form-group">
                        <asp:Label ID="lbl_msg" runat="server" Text="Message"></asp:Label>
                        <asp:TextBox ID="txt_msg" runat="server" class="form-control" TextMode="MultiLine"></asp:TextBox>
                      <%--<label for="m_message">Message</label>
                      <textarea class="form-control" id="m_message" cols="30" rows="7"></textarea>--%>
                    </div>
                  </div>
                  
                  <div class="row">
                    <div class="col-md-12 form-group">
                        <asp:Button ID="Button1" runat="server" class="btn btn-primary btn-lg btn-block" Text="Reserve Now" OnClick="Button1_Click" />
<%--                      <input type="submit" class="btn btn-primary btn-lg btn-block" value="Reserve Now">--%>
                    </div>
                  </div>

                  </form>
              </div>
            </div>
            
          </div>
        </div>
      </div>
    </div>
         <script src="js/bootstrap.min.js"></script>

</body>
</html>
