﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Guest/UserMaster.master" AutoEventWireup="true" CodeFile="shop.aspx.cs" Inherits="Guest_shops" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Toys Shop an Ecommerce Category Bootstrap Responsive Web Template | Home :: w3layouts</title>
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
      <!--Shoping cart-->
      <link rel="stylesheet" href="css/shop.css" type="text/css" >
      <!--//Shoping cart-->
      <!--price range-->
      <link rel="stylesheet" type="text/css" href="css/jquery-ui1.css">
      <!--//price range-->
      <!--stylesheets-->
      <link href="css/style.css" rel='stylesheet' type='text/css' media="all">
      <!--//stylesheets-->
      <link href="//fonts.googleapis.com/css?family=Sunflower:500,700" rel="stylesheet">
      <link href="//fonts.googleapis.com/css?family=Open+Sans:400,600,700" rel="stylesheet">
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="header-outs" id="home">
      <div class="header-bar">
         <div class="info-top-grid">
            <div class="info-contact-agile">
               <ul>
                  <li>
                     <span class="fas fa-phone-volume"></span>
                     <p>+(000)123 4565 32</p>
                  </li>
                  <li>
                     <span class="fas fa-envelope"></span>
                     <p><a href="mailto:info@example.com">info@example1.com</a></p>
                  </li>
                  <li>
                  </li>
               </ul>
            </div>
         </div>
         <div class="container-fluid">
            <div class="hedder-up row">
               <div class="col-lg-3 col-md-3 logo-head">
                  <h1><a class="navbar-brand" href="index.aspx">Cafe</a></h1>
               </div>
               <div class="col-lg-5 col-md-6 search-right">
                  <form class="form-inline my-lg-0">
                     <input class="form-control mr-sm-2" type="search" placeholder="Search">
                     <button class="btn" type="submit">Search</button>
                  </form>
               </div>
               <div class="col-lg-4 col-md-3 right-side-cart">
                  <div class="cart-icons">
                     <ul>
                        <li>
                           <span class="far fa-heart"></span>
                        </li>
                        <li>
                           <button type="button" data-toggle="modal" data-target="#exampleModal"> <span class="far fa-user"></span></button>
                        </li>
                        <li class="toyscart toyscart2 cart cart box_1">
                           <form action="#" method="post" class="last">
                              <input type="hidden" name="cmd" value="_cart">
                              <input type="hidden" name="display" value="1">
                              <button class="top_toys_cart" type="submit" name="submit" value="">
                              <span class="fas fa-cart-arrow-down"></span>
                              </button>
                           </form>
                        </li>
                     </ul>
                  </div>
               </div>
            </div>
         </div>
         <nav class="navbar navbar-expand-lg navbar-light">
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse justify-content-center" id="navbarSupportedContent">
               <ul class="navbar-nav ">
                  <li class="nav-item ">
                     <a class="nav-link" href="index.aspx">Home <span class="sr-only">(current)</span></a>
                  </li>
                  <li class="nav-item">
                     <a href="about.aspx" class="nav-link">About</a>
                  </li>
                  <li class="nav-item">
                     <a href="service.aspx" class="nav-link">Service</a>
                  </li>
                  <li class="nav-item active">
                     <a href="shop.aspx" class="nav-link">Shop Now</a>
                  </li>
                  <li class="nav-item dropdown">
                     <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                     Pages
                     </a>
                     <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="nav-link" href="icon.html">404 Page</a>
                        <a class="nav-link " href="typography.html">Typography</a>
                     </div>
                  </li>
                  <li class="nav-item dropdown">
                     <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown1" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                     Product
                     </a>
                     <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="nav-link" href="product.html">Kids Toys</a>
                        <a class="nav-link " href="product.html">Dolls</a>
                        <a class="nav-link " href="product.html">Key Toys</a>
                        <a class="nav-link " href="product.html">Boys Toys</a>
                     </div>
                  </li>
                  <li class="nav-item">
                     <a href="contact.html" class="nav-link">Contact</a>
                  </li>
               </ul>
            </div>
         </nav>
      </div>
	  </div>

      <!--//headder-->
      <!-- banner -->
      <div class="inner_page-banner one-img">
      </div>
      <!--//banner -->
      <!-- short -->
      <div class="using-border py-3">
         <div class="inner_breadcrumb  ml-4">
            <ul class="short_ls">
               <li>
                  <a href="index.aspx">Home</a>
                  <span>/ /</span>
               </li>
               <li>Shop Now</li>
            </ul>
         </div>
      </div>
      <!-- //short-->
      <!--show Now-->  
      <!--show Now--> 
    
    
    
    
    
    
     
      <section class="contact py-lg-4 py-md-3 py-sm-3 py-3">
         <div class="container-fluid py-lg-5 py-md-4 py-sm-4 py-3">
            <h3 class="title text-center mb-lg-5 mb-md-4 mb-sm-4 mb-3">Toys Shop</h3>
            <div class="row">
               <div class="side-bar col-lg-3">
                  <div class="search-hotel">
                     <h3 class="agileits-sear-head">Search Here..</h3>
                     <form action="#" method="post">
                        <input type="search" placeholder="Product name..." name="search" required="">
                        <input type="submit" value=" ">
                     </form>
                  </div>
							<!-- price range -->
							<div class="range">
								<h3 class="agileits-sear-head">Price range</h3>
								<ul class="dropdown-menu6">
									<li>

										<div id="slider-range"></div>
										<input type="text" id="amount" style="border: 0; color: #ffffff; font-weight: normal;" />
									</li>
								</ul>
							</div>
							<!-- //price range -->
                  <!--preference -->
                   
                     <div> 
                     <h3 class="agileits-sear-head">Choose Cakes</h3>
                     <ul>
                        <li>
                         
                        </li>
                        <%--<li>
                           <input type="checkbox" class="checked">
                           <span class="span">Kid Play</span>
                        </li>
                        <li>
                           <input type="checkbox" class="checked">
                           <span class="span">Dolls</span>
                        </li>
                        <li>
                           <input type="checkbox" class="checked">
                           <span class="span">Remot</span>
                        </li>--%>
                     </ul>
                  </div>
       

                  <!-- // preference -->
                  <!-- discounts -->
                   
                  <%--<div class="left-side">
                     <h3 class="agileits-sear-head">Discount</h3>
                     <ul>
                        <li>
                           <input type="checkbox" class="checked">
                           <span class="span">5% or More</span>
                        </li>
                        <li>
                           <input type="checkbox" class="checked">
                           <span class="span">10% or More</span>
                        </li>
                        <li>
                           <input type="checkbox" class="checked">
                           <span class="span">20% or More</span>
                        </li>
                        <li>
                           <input type="checkbox" class="checked">
                           <span class="span">30% or More</span>
                        </li>
                        <li>
                           <input type="checkbox" class="checked">
                           <span class="span">50% or More</span>
                        </li>
                        <li>
                           <input type="checkbox" class="checked">
                           <span class="span">60% or More</span>
                        </li>
                     </ul>
                  </div>--%>
                  <!-- //discounts -->
                  <!-- reviews -->
                  <%--<div class="customer-rev left-side">
                     <h3 class="agileits-sear-head">Customer Review</h3>
                     <ul>
                        <li>
                           <a href="#">
                           <i class="fas fa-star"></i>
                           <i class="fas fa-star"></i>
                           <i class="fas fa-star"></i>
                           <i class="fas fa-star"></i>
                           <i class="fas fa-star"></i>
                           <span>5.0</span>
                           </a>
                        </li>
                        <li>
                           <a href="#">
                           <i class="fas fa-star" ></i>
                           <i class="fas fa-star" ></i>
                           <i class="fas fa-star" ></i>
                           <i class="fas fa-star" ></i>
                           <i class="far fa-star"></i>
                           <span>4.0</span>
                           </a>
                        </li>
                        <li>
                           <a href="#">
                           <i class="fas fa-star"></i>
                           <i class="fas fa-star"></i>
                           <i class="fas fa-star"></i>
                           <i class="fas fa-star-half"></i>
                           <i class="far fa-star"></i>
                           <span>3.5</span>
                           </a>
                        </li>
                        <li>
                           <a href="#">
                           <i class="fas fa-star"></i>
                           <i class="fas fa-star"></i>
                           <i class="fas fa-star"></i>
                           <i class="far fa-star"></i>
                           <i class="far fa-star"></i>
                           <span>3.0</span>
                           </a>
                        </li>
                        <li>
                           <a href="#">
                           <i class="fas fa-star"></i>
                           <i class="fas fa-star"></i>
                           <i class="fas fa-star-half"></i>
                           <i class="far fa-star"></i>
                           <i class="far fa-star"></i>
                           <span>2.5</span>
                           </a>
                        </li>
                     </ul>
                  </div>--%>
                  <!-- //reviews -->
                  <!-- deals -->
                 <%-- <div class="deal-leftmk left-side">
                     <h3 class="agileits-sear-head">Special Deals</h3>
                     <div class="row special-sec1">
                        <div class="col-xs-4 img-deals">
                           <img src="images/g1.jpg" alt="" class="img-fluid">
                        </div>
                        <div class="col-xs-8 img-deal1">
                           <h3>toys(barbie)</h3>
                           <a href="single.html">$575.00</a>
                        </div>
                        <div class="clearfix"></div>
                     </div>
                     <div class="row special-sec1">
                        <div class="col-xs-4 img-deals">
                           <img src="images/g2.jpg" alt="" class="img-fluid">
                        </div>
                        <div class="col-xs-8 img-deal1">
                           <h3>toy(todos)</h3>
                           <a href="single.html">$480.00</a>
                        </div>
                        <div class="clearfix"></div>
                     </div>
                     <div class="row special-sec1">
                        <div class="col-xs-4 img-deals">
                           <img src="images/g3.jpg" alt="" class="img-fluid">
                        </div>
                        <div class="col-xs-8 img-deal1">
                           <h3>toys (Grey)</h3>
                           <a href="single.html">$165.00</a>
                        </div>
                        <div class="clearfix"></div>
                     </div>
                     <div class="row special-sec1">
                        <div class="col-xs-4 img-deals">
                           <img src="images/g2.jpg" alt="" class="img-fluid">
                        </div>
                        <div class="col-xs-8 img-deal1">
                           <h3>Soft teddy </h3>
                           <a href="single.html">$225.00</a>
                        </div>
                        <div class="clearfix"></div>
                     </div>
                     <div class="row special-sec1">
                        <div class="col-xs-4 img-deals">
                           <img src="images/g4.jpg" alt="" class="img-fluid">
                        </div>
                        <div class="col-xs-8 img-deal1">
                          <h3>pink bear</h3>
                           <a href="single.html">$169.00</a>
                        </div>
                        <div class="clearfix"></div>
                     </div>
                  </div>--%>
                  <!-- //deals -->
               </div>
               <div class="left-ads-display col-lg-9">
                  <div class="row">
                     <div class="col-lg-4 col-md-6 col-sm-6 product-men women_two">
                        <div class="product-toys-info">
                           <div class="men-pro-item">
                              <div class="men-thumb-item">
                                 <img src="images/a1.jpg" class="img-thumbnail img-fluid" alt="">
                                 <div class="men-cart-pro">
                                    <div class="inner-men-cart-pro">
                                       <a href="single.html" class="link-product-add-cart">Quick View</a>
                                    </div>
                                 </div>
                                 <span class="product-new-top">New</span>
                              </div>
                              <div class="item-info-product">
                                 <div class="info-product-price">
                                    <div class="grid_meta">
                                       <div class="product_price">
                                          <h4>
                                             <a href="single.html">toys(barbie)</a>
                                          </h4>
                                          <div class="grid-price mt-2">
                                             <span class="money ">$575.00</span>
                                          </div>
                                       </div>
                                       <ul class="stars">
                                          <li>
                                             <a href="#">
                                             <i class="fas fa-star"></i>
                                             </a>
                                          </li>
                                          <li>
                                             <a href="#">
                                             <i class="fas fa-star"></i>
                                             </a>
                                          </li>
                                          <li>
                                             <a href="#">
                                             <i class="fas fa-star"></i>
                                             </a>
                                          </li>
                                          <li>
                                             <a href="#">
                                             <i class="fas fa-star" ></i>
                                             </a>
                                          </li>
                                          <li>
                                             <a href="#">
                                             <i class="far fa-star-half-o"></i>
                                             </a>
                                          </li>
                                       </ul>
                                    </div>
                                    <div class="toys single-item hvr-outline-out">
                                       <form action="#" method="post">
                                          <input type="hidden" name="cmd" value="_cart">
                                          <input type="hidden" name="add" value="1">
                                          <input type="hidden" name="toys_item" value="toys(barbie)">
                                          <input type="hidden" name="amount" value="575.00">
                                          <button type="submit" class="toys-cart ptoys-cart">
                                          <i class="fas fa-cart-plus"></i>
                                          </button>
                                       </form>
                                    </div>
                                 </div>
                                 <div class="clearfix"></div>
                              </div>
                           </div>
                        </div>
                     </div>
                     <div class="col-lg-4 col-md-6 col-sm-6 product-men women_two">
                        <div class="product-toys-info">
                           <div class="men-pro-item">
                              <div class="men-thumb-item">
                                 <img src="images/a2.jpg" class="img-thumbnail" alt="">
                                 <div class="men-cart-pro">
                                    <div class="inner-men-cart-pro">
                                       <a href="single.html" class="link-product-add-cart">Quick View</a>
                                    </div>
                                 </div>
                                 <span class="product-new-top">New</span>
                              </div>
                              <div class="item-info-product">
                                 <div class="info-product-price">
                                    <div class="grid_meta">
                                       <div class="product_price">
                                          <h4>
                                             <a href="single.html">toy(todos)</a>
                                          </h4>
                                          <div class="grid-price mt-2">
                                             <span class="money ">$480.00</span>
                                          </div>
                                       </div>
                                       <ul class="stars">
                                          <li>
                                             <a href="#">
                                             <i class="fas fa-star"></i>
                                             </a>
                                          </li>
                                          <li>
                                             <a href="#">
                                             <i class="fa fa-star" aria-hidden="true"></i>
                                             </a>
                                          </li>
                                          <li>
                                             <a href="#">
                                             <i class="fa fa-star" aria-hidden="true"></i>
                                             </a>
                                          </li>
                                          <li>
                                             <a href="#">
                                             <i class="fas fa-star" ></i>
                                             </a>
                                          </li>
                                          <li>
                                             <a href="#">
                                             <i class="far fa-star-half-o" ></i>
                                             </a>
                                          </li>
                                       </ul>
                                    </div>
                                    <div class="toys single-item hvr-outline-out">
                                       <form action="#" method="post">
                                          <input type="hidden" name="cmd" value="_cart">
                                          <input type="hidden" name="add" value="1">
                                          <input type="hidden" name="toys_item" value="toy(todos)">
                                          <input type="hidden" name="amount" value="480.00">
                                          <button type="submit" class="toys-cart ptoys-cart">
                                          <i class="fas fa-cart-plus"></i>
                                          </button>
                                       </form>
                                    </div>
                                 </div>
                                 <div class="clearfix"></div>
                              </div>
                           </div>
                        </div>
                     </div>
                     <div class="col-lg-4 col-md-6 col-sm-6 product-men women_two">
                        <div class="product-toys-info">
                           <div class="men-pro-item">
                              <div class="men-thumb-item">
                                 <img src="images/a3.jpg" class="img-thumbnail" alt="">
                                 <div class="men-cart-pro">
                                    <div class="inner-men-cart-pro">
                                       <a href="single.html" class="link-product-add-cart">Quick View</a>
                                    </div>
                                 </div>
                                 <span class="product-new-top">New</span>
                              </div>
                              <div class="item-info-product">
                                 <div class="info-product-price">
                                    <div class="grid_meta">
                                       <div class="product_price">
                                          <h4>
                                             <a href="single.html">toys (Grey)</a>
                                          </h4>
                                          <div class="grid-price mt-2">
                                             <span class="money ">$265.00</span>
                                          </div>
                                       </div>
                                       <ul class="stars">
                                          <li>
                                             <a href="#">
                                             <i class="fa fa-star" aria-hidden="true"></i>
                                             </a>
                                          </li>
                                          <li>
                                             <a href="#">
                                             <i class="fa fa-star" aria-hidden="true"></i>
                                             </a>
                                          </li>
                                          <li>
                                             <a href="#">
                                             <i class="fa fa-star" aria-hidden="true"></i>
                                             </a>
                                          </li>
                                          <li>
                                             <a href="#">
                                             <i class="fa fa-star" aria-hidden="true"></i>
                                             </a>
                                          </li>
                                          <li>
                                             <a href="#">
                                             <i class="fa fa-star-half-o" aria-hidden="true"></i>
                                             </a>
                                          </li>
                                       </ul>
                                    </div>
                                    <div class="toys single-item hvr-outline-out">
                                       <form action="#" method="post">
                                          <input type="hidden" name="cmd" value="_cart">
                                          <input type="hidden" name="add" value="1">
                                          <input type="hidden" name="toys_item" value="toys (Grey)">
                                          <input type="hidden" name="amount" value="265.00">
                                          <button type="submit" class="toys-cart ptoys-cart">
                                          <i class="fas fa-cart-plus"></i>
                                          </button>
                                       </form>
                                    </div>
                                 </div>
                                 <div class="clearfix"></div>
                              </div>
                           </div>
                        </div>
                     </div>
                     <div class="col-lg-4 col-md-6 col-sm-6 product-men women_two">
                        <div class="product-toys-info">
                           <div class="men-pro-item">
                              <div class="men-thumb-item">
                                 <img src="images/a4.jpg" class="img-thumbnail" alt="">
                                 <div class="men-cart-pro">
                                    <div class="inner-men-cart-pro">
                                       <a href="single.html" class="link-product-add-cart">Quick View</a>
                                    </div>
                                 </div>
                                 <span class="product-new-top">New</span>
                              </div>
                              <div class="item-info-product">
                                 <div class="info-product-price">
                                    <div class="grid_meta">
                                       <div class="product_price">
                                          <h4>
                                             <a href="single.html">toys (red)</a>
                                          </h4>
                                          <div class="grid-price mt-2">
                                             <span class="money ">$67.00</span>
                                          </div>
                                       </div>
                                       <ul class="stars">
                                          <li>
                                             <a href="#">
                                             <i class="fa fa-star" aria-hidden="true"></i>
                                             </a>
                                          </li>
                                          <li>
                                             <a href="#">
                                             <i class="fa fa-star" aria-hidden="true"></i>
                                             </a>
                                          </li>
                                          <li>
                                             <a href="#">
                                             <i class="fa fa-star" aria-hidden="true"></i>
                                             </a>
                                          </li>
                                          <li>
                                             <a href="#">
                                             <i class="fa fa-star" aria-hidden="true"></i>
                                             </a>
                                          </li>
                                          <li>
                                             <a href="#">
                                             <i class="fa fa-star-half-o" aria-hidden="true"></i>
                                             </a>
                                          </li>
                                       </ul>
                                    </div>
                                    <div class="toys single-item hvr-outline-out">
                                       <form action="#" method="post">
                                          <input type="hidden" name="cmd" value="_cart">
                                          <input type="hidden" name="add" value="1">
                                          <input type="hidden" name="toys_item" value="toys (red)">
                                          <input type="hidden" name="amount" value="67.00">
                                          <button type="submit" class="toys-cart ptoys-cart">
                                          <i class="fas fa-cart-plus"></i>
                                          </button>
                                       </form>
                                    </div>
                                 </div>
                                 <div class="clearfix"></div>
                              </div>
                           </div>
                        </div>
                     </div>
                     <div class="col-lg-4 col-md-6 col-sm-6 product-men women_two">
                        <div class="product-toys-info">
                           <div class="men-pro-item">
                              <div class="men-thumb-item">
                                 <img src="images/a3.jpg" class="img-thumbnail" alt="">
                                 <div class="men-cart-pro">
                                    <div class="inner-men-cart-pro">
                                       <a href="single.html" class="link-product-add-cart">Quick View</a>
                                    </div>
                                 </div>
                                 <span class="product-new-top">New</span>
                              </div>
                              <div class="item-info-product">
                                 <div class="info-product-price">
                                    <div class="grid_meta">
                                       <div class="product_price">
                                          <h4>
                                             <a href="single.html">toys(blue)</a>
                                          </h4>
                                          <div class="grid-price mt-2">
                                             <span class="money ">$340.00</span>
                                          </div>
                                       </div>
                                       <ul class="stars">
                                          <li>
                                             <a href="#">
                                             <i class="fa fa-star" aria-hidden="true"></i>
                                             </a>
                                          </li>
                                          <li>
                                             <a href="#">
                                             <i class="fa fa-star" aria-hidden="true"></i>
                                             </a>
                                          </li>
                                          <li>
                                             <a href="#">
                                             <i class="fa fa-star" aria-hidden="true"></i>
                                             </a>
                                          </li>
                                          <li>
                                             <a href="#">
                                             <i class="fa fa-star" aria-hidden="true"></i>
                                             </a>
                                          </li>
                                          <li>
                                             <a href="#">
                                             <i class="fa fa-star-half-o" aria-hidden="true"></i>
                                             </a>
                                          </li>
                                       </ul>
                                    </div>
                                    <div class="toys single-item hvr-outline-out">
                                       <form action="#" method="post">
                                          <input type="hidden" name="cmd" value="_cart">
                                          <input type="hidden" name="add" value="1">
                                          <input type="hidden" name="toys_item" value="toys(blue)">
                                          <input type="hidden" name="amount" value="340.00">
                                          <button type="submit" class="toys-cart ptoys-cart">
                                          <i class="fas fa-cart-plus"></i>
                                          </button>
                                       </form>
                                    </div>
                                 </div>
                                 <div class="clearfix"></div>
                              </div>
                           </div>
                        </div>
                     </div>
                     <div class="col-lg-4 col-md-6 col-sm-6 product-men women_two">
                        <div class="product-toys-info">
                           <div class="men-pro-item">
                              <div class="men-thumb-item">
                                 <img src="images/a1.jpg" class="img-thumbnail" alt="">
                                 <div class="men-cart-pro">
                                    <div class="inner-men-cart-pro">
                                       <a href="single.html" class="link-product-add-cart">Quick View</a>
                                    </div>
                                 </div>
                                 <span class="product-new-top">New</span>
                              </div>
                              <div class="item-info-product">
                                 <div class="info-product-price">
                                    <div class="grid_meta">
                                       <div class="product_price">
                                          <h4>
                                             <a href="single.html">toys(pink)</a>
                                          </h4>
                                          <div class="grid-price mt-2">
                                             <span class="money ">$160.00</span>
                                          </div>
                                       </div>
                                       <ul class="stars">
                                          <li>
                                             <a href="#">
                                             <i class="fa fa-star" aria-hidden="true"></i>
                                             </a>
                                          </li>
                                          <li>
                                             <a href="#">
                                             <i class="fa fa-star" aria-hidden="true"></i>
                                             </a>
                                          </li>
                                          <li>
                                             <a href="#">
                                             <i class="fa fa-star" aria-hidden="true"></i>
                                             </a>
                                          </li>
                                          <li>
                                             <a href="#">
                                             <i class="fa fa-star" aria-hidden="true"></i>
                                             </a>
                                          </li>
                                          <li>
                                             <a href="#">
                                             <i class="fa fa-star-half-o" aria-hidden="true"></i>
                                             </a>
                                          </li>
                                       </ul>
                                    </div>
                                    <div class="toys single-item hvr-outline-out">
                                       <form action="#" method="post">
                                          <input type="hidden" name="cmd" value="_cart">
                                          <input type="hidden" name="add" value="1">
                                          <input type="hidden" name="toys_item" value="toys(pink)">
                                          <input type="hidden" name="amount" value="160.00">
                                          <button type="submit" class="toys-cart ptoys-cart">
                                          <i class="fas fa-cart-plus"></i>
                                          </button>
                                       </form>
                                    </div>
                                 </div>
                                 <div class="clearfix"></div>
                              </div>
                           </div>
                        </div>
                     </div>
                     <div class="col-lg-4 col-md-6 col-sm-6 product-men women_two">
                        <div class="product-toys-info">
                           <div class="men-pro-item">
                              <div class="men-thumb-item">
                                 <img src="images/a2.jpg" class="img-thumbnail" alt="">
                                 <div class="men-cart-pro">
                                    <div class="inner-men-cart-pro">
                                       <a href="single.html" class="link-product-add-cart">Quick View</a>
                                    </div>
                                 </div>
                                 <span class="product-new-top">New</span>
                              </div>
                              <div class="item-info-product">
                                 <div class="info-product-price">
                                    <div class="grid_meta">
                                       <div class="product_price">
                                          <h4>
                                             <a href="single.html">toy(todos)</a>
                                          </h4>
                                          <div class="grid-price mt-2">
                                             <span class="money ">$480.00</span>
                                          </div>
                                       </div>
                                       <ul class="stars">
                                          <li>
                                             <a href="#">
                                             <i class="fa fa-star" aria-hidden="true"></i>
                                             </a>
                                          </li>
                                          <li>
                                             <a href="#">
                                             <i class="fa fa-star" aria-hidden="true"></i>
                                             </a>
                                          </li>
                                          <li>
                                             <a href="#">
                                             <i class="fa fa-star" aria-hidden="true"></i>
                                             </a>
                                          </li>
                                          <li>
                                             <a href="#">
                                             <i class="fa fa-star" aria-hidden="true"></i>
                                             </a>
                                          </li>
                                          <li>
                                             <a href="#">
                                             <i class="fa fa-star-half-o" aria-hidden="true"></i>
                                             </a>
                                          </li>
                                       </ul>
                                    </div>
                                    <div class="toys single-item hvr-outline-out">
                                       <form action="#" method="post">
                                          <input type="hidden" name="cmd" value="_cart">
                                          <input type="hidden" name="add" value="1">
                                          <input type="hidden" name="toys_item" value="toy(todos)">
                                          <input type="hidden" name="amount" value="480.00">
                                          <button type="submit" class="toys-cart ptoys-cart">
                                          <i class="fas fa-cart-plus"></i>
                                          </button>
                                       </form>
                                    </div>
                                 </div>
                                 <div class="clearfix"></div>
                              </div>
                           </div>
                        </div>
                     </div>
                     <div class="col-lg-4 col-md-6 col-sm-6 product-men women_two">
                        <div class="product-toys-info">
                           <div class="men-pro-item">
                              <div class="men-thumb-item">
                                 <img src="images/a3.jpg" class="img-thumbnail" alt="">
                                 <div class="men-cart-pro">
                                    <div class="inner-men-cart-pro">
                                       <a href="single.html" class="link-product-add-cart">Quick View</a>
                                    </div>
                                 </div>
                                 <span class="product-new-top">New</span>
                              </div>
                              <div class="item-info-product">
                                 <div class="info-product-price">
                                    <div class="grid_meta">
                                       <div class="product_price">
                                          <h4>
                                             <a href="single.html">toys (Grey)</a>
                                          </h4>
                                          <div class="grid-price mt-2">
                                             <span class="money ">$265.00</span>
                                          </div>
                                       </div>
                                       <ul class="stars">
                                          <li>
                                             <a href="#">
                                             <i class="fa fa-star" aria-hidden="true"></i>
                                             </a>
                                          </li>
                                          <li>
                                             <a href="#">
                                             <i class="fa fa-star" aria-hidden="true"></i>
                                             </a>
                                          </li>
                                          <li>
                                             <a href="#">
                                             <i class="fa fa-star" aria-hidden="true"></i>
                                             </a>
                                          </li>
                                          <li>
                                             <a href="#">
                                             <i class="fa fa-star" aria-hidden="true"></i>
                                             </a>
                                          </li>
                                          <li>
                                             <a href="#">
                                             <i class="fa fa-star-half-o" aria-hidden="true"></i>
                                             </a>
                                          </li>
                                       </ul>
                                    </div>
                                    <div class="toys single-item hvr-outline-out">
                                       <form action="#" method="post">
                                          <input type="hidden" name="cmd" value="_cart">
                                          <input type="hidden" name="add" value="1">
                                          <input type="hidden" name="toys_item" value="toys (Grey)">
                                          <input type="hidden" name="amount" value="265.00">
                                          <button type="submit" class="toys-cart ptoys-cart">
                                          <i class="fas fa-cart-plus"></i>
                                          </button>
                                       </form>
                                    </div>
                                 </div>
                                 <div class="clearfix"></div>
                              </div>
                           </div>
                        </div>
                     </div>
                     <div class="col-lg-4 col-md-6 col-sm-6 product-men women_two">
                        <div class="product-toys-info">
                           <div class="men-pro-item">
                              <div class="men-thumb-item">
                                 <img src="images/a4.jpg" class="img-thumbnail" alt="">
                                 <div class="men-cart-pro">
                                    <div class="inner-men-cart-pro">
                                       <a href="single.html" class="link-product-add-cart">Quick View</a>
                                    </div>
                                 </div>
                                 <span class="product-new-top">New</span>
                              </div>
                              <div class="item-info-product">
                                 <div class="info-product-price">
                                    <div class="grid_meta">
                                       <div class="product_price">
                                          <h4>
                                             <a href="single.html">toys (Grey)</a>
                                          </h4>
                                          <div class="grid-price mt-2">
                                             <span class="money ">$67.00</span>
                                          </div>
                                       </div>
                                       <ul class="stars">
                                          <li>
                                             <a href="#">
                                             <i class="fas fa-star"></i>
                                             </a>
                                          </li>
                                          <li>
                                             <a href="#">
                                             <i class="fa fa-star" aria-hidden="true"></i>
                                             </a>
                                          </li>
                                          <li>
                                             <a href="#">
                                             <i class="fa fa-star" aria-hidden="true"></i>
                                             </a>
                                          </li>
                                          <li>
                                             <a href="#">
                                             <i class="fa fa-star" aria-hidden="true"></i>
                                             </a>
                                          </li>
                                          <li>
                                             <a href="#">
                                             <i class="fa fa-star-half-o" aria-hidden="true"></i>
                                             </a>
                                          </li>
                                       </ul>
                                    </div>
                                    <div class="toys single-item hvr-outline-out">
                                       <form action="#" method="post">
                                          <input type="hidden" name="cmd" value="_cart">
                                          <input type="hidden" name="add" value="1">
                                          <input type="hidden" name="toys_item" value="toys (Grey)">
                                          <input type="hidden" name="amount" value="67.00">
                                          <button type="submit" class="toys-cart ptoys-cart">
                                          <i class="fas fa-cart-plus"></i>
                                          </button>
                                       </form>
                                    </div>
                                 </div>
                                 <div class="clearfix"></div>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </section>
      <!-- //show Now-->
      <!--subscribe-address-->
     
      <!-- //Modal 1-->
      <!--js working-->
      <script src='js/jquery-2.2.3.min.js'></script>
      <!--//js working-->
      <!-- cart-js -->
      <%-- <script src="js/minicart.js"></script>
      <script>
          toys.render();

          toys.cart.on('toys_checkout', function (evt) {
              var items, len, i;

              if (this.subtotal() > 0) {
                  items = this.items();

                  for (i = 0, len = items.length; i < len; i++) { }
              }
          });
      </script>--%>
      <!-- //cart-js -->
		<!-- price range (top products) -->
		<script src="js/jquery-ui.js"></script>
		<script>
		    //<![CDATA[ 
		    $(window).load(function () {
		        $("#slider-range").slider({
		            range: true,
		            min: 0,
		            max: 9000,
		            values: [50, 6000],
		            slide: function (event, ui) {
		                $("#amount").val("$" + ui.values[0] + " - $" + ui.values[1]);
		            }
		        });
		        $("#amount").val("$" + $("#slider-range").slider("values", 0) + " - $" + $("#slider-range").slider("values", 1));

		    }); //]]>
		</script>
		<!-- //price range (top products) -->

      <!-- start-smoth-scrolling -->
       <script src="js/move-top.js"></script>
      <script src="js/easing.js"></script>
      <script>
          jQuery(document).ready(function ($) {
              $(".scroll").click(function (event) {
                  event.preventDefault();
                  $('html,body').animate({
                      scrollTop: $(this.hash).offset().top
                  }, 900);
              });
          });
      </script>
      <!-- start-smoth-scrolling -->
      <!-- here stars scrolling icon -->
      <script>
          $(document).ready(function () {

              var defaults = {
                  containerID: 'toTop', // fading element id
                  containerHoverID: 'toTopHover', // fading element hover id
                  scrollSpeed: 1200,
                  easingType: 'linear'
              };


              $().UItoTop({
                  easingType: 'easeOutQuart'
              });

          });
      </script>
      <!-- //here ends scrolling icon -->
      <!--bootstrap working-->
      <script src="js/bootstrap.min.js"></script>
      <!-- //bootstrap working--> 

</asp:Content>



