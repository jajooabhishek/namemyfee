<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="NameMyFee.register" %>

<!doctype html>
<html lang="en" dir="ltr">

<head>
    <meta charset="UTF-8">
    <meta name='viewport' content='width=device-width, initial-scale=1.0, user-scalable=0'>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="msapplication-TileColor" content="#162946">
    <meta name="theme-color" content="#e72a1a">
    <meta name="apple-mobile-web-app-status-bar-style" content="black-translucent" />
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="mobile-web-app-capable" content="yes">
    <meta name="HandheldFriendly" content="True">
    <meta name="Duplex VehiclesOptimized" content="320">
    <meta name="description" content="Car Listing,Dealer,Rental Auto Classifieds Bootstrap Modern Responsive Clean HTML Template">
    <meta name="keywords" content="autotrader,autotrader dealer portal,car classifieds,autoportal,auto classifieds,car dealer template,Autolist,vehicle sale template,car dealer website,car sale template,automotive websites,auto websites,template for selling car,automotive template,car dealer website template,automotive classifieds,car for sale template,car dealer html template,automotive template,car dealer template,car dealer website template,car service template,html template,bootstrap templates,css templates,responsive template,premium html templates,template premium">
    <link rel="icon" href="favicon.ico" type="image/x-icon" />
    <link rel="shortcut icon" type="image/x-icon" href="favicon.ico" />

    <!-- Title -->
    <title>Car Listing,Dealer,Rental Auto Classifieds Bootstrap Modern Responsive Clean HTML Template</title>

    <!-- Bootstrap Css -->
    <link href="../assets/plugins/bootstrap-4.3.1/css/bootstrap.min.css" rel="stylesheet" />

    <!-- Dashboard Css -->
    <link href="../assets/css/style.css" rel="stylesheet" />

    <!-- Font-awesome  Css -->
    <link href="../assets/css/icons.css" rel="stylesheet" />

    <!--Select2 Plugin -->
    <link href="../assets/plugins/select2/select2.min.css" rel="stylesheet" />

    <!-- Custom scroll bar css-->
    <link href="../assets/plugins/scroll-bar/jquery.mCustomScrollbar.css" rel="stylesheet" />

    <!-- Color-Skins -->
    <link id="theme" rel="stylesheet" type="text/css" media="all" href="../assets/color-skins/color15.css" />

</head>

<body>

    <!--Loader-->
    <div id="global-loader">
        <img src="../assets/images/loader.svg" class="loader-img " alt="">
    </div>

    

    <!-- Horizontal Header -->
    <div class="horizontal-header clearfix ">
        <div class="container">
            <a id="horizontal-navtoggle" class="animated-arrow"><span></span></a>
            <span class="smllogo"><img src="../assets/images/logo3.png" width="120" alt=""/></span>
            <a href="tel:245-6325-3256" class="callusbtn"><i class="fa fa-phone" aria-hidden="true"></i></a>
        </div>
    </div>
    <!-- /Horizontal Header -->

    <!-- Horizontal Main -->
    <div class="horizontal-main bg-dark-transparent clearfix">
        <div class="horizontal-mainwrapper container clearfix">
            <div class="desktoplogo">
                <a href="home_page.aspx"><asp:Image ID="Image3" runat="server" src="../assets/images/logo3.png" alt="" Height="60" Width="250" /></a>
            </div>
            <div class="desktoplogo-1" style="margin-top:-10px;">
                <a href="home_page.aspx"><asp:Image ID="Image1" runat="server" src="../assets/images/logo6.png" alt="" Height="60" Width="250" /></a>
            </div>
            <!--Nav-->
            <nav class="horizontalMenu clearfix d-md-flex">
                <ul class="horizontalMenu-list">
                    <li aria-haspopup="true"><a href="home_page.aspx">Home </a>
                       
                    </li>
                    <li aria-haspopup="true"><a href="#">Explore <span class="fa fa-caret-down m-0"></span></a>
                        <div class="horizontal-megamenu clearfix">
                            <div class="container">
                                <div class="megamenu-content">
                                    <div class="row">
                                        <ul class="col link-list">
                                            <li class="title">Programs</li>
                                            <li><a href="cars-list.html">Undergraduate</a></li>
                                            <li><a href="cars-list-right.html">Postgraduate</a></li>
                                            <li><a href="cars-list-map.html">PHD</a></li>
                                            <li><a href="cars-list-map2.html">Certificate</a></li>
                                        </ul>
                                        <ul class="col link-list">
                                            <li class="title">Discipline</li>
                                            <li><a href="cars.html">Humanities</a></li>
                                            <li><a href="cars-right.html">Business</a></li>
                                            <li><a href="car-details.html">Natural Sciences</a></li>
                                            <li><a href="car-details2.html">Applied Sciences</a></li>
                                            <li><a href="car-details3.html">Social Sciences</a></li>
                                        </ul>
                                        <ul class="col link-list">
                                            <li class="title">Popular Courses</li>
                                            <li><a href="mydash.html">Engineering</a></li>
                                            <li><a href="myads.html">Medical</a></li>
                                            <li><a href="myfavorite.html">Design</a></li>
                                            <li><a href="managed.html">Law</a></li>
                                            <li><a href="payments.html">Psychology</a></li>
                                            <li><a href="orders.html">Management</a></li>
                                        </ul>
                                       
                                    </div>
                                </div>
                            </div>
                        </div>
                    </li>
                    
                    <li aria-haspopup="true"><a href="contact.html"> Contact Us <span class="horizontalarrow"></span></a></li>

                    <li aria-haspopup="true">
                        <a href="login.aspx" style="background-color: #06a006;color: white">Login</a>
                    </li>
                    <li class="nav-item">
                        <a href="register.aspx" style="background-color: #06a006;color: white">Register</a>
                    </li>

                </ul>
               
            </nav>
            <!--Nav-->
        </div>
    </div>
    <!-- /Horizontal Main -->

    <!--Topbar-->

    <!--Section-->
    <section>
        <div class="bannerimg cover-image bg-background3" data-image-src="../assets/images/banners/banner2.jpg">
            <div class="header-text mb-0">
                <div class="container">
                    <div class="text-center text-white">
                        <h1 class="">Register</h1>
                        
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--Section-->
 
    <!--Login-Section-->
    <section class="sptb">
        <div class="container customerpage">
            <div class="row">
                <div class="col-lg-5 col-xl-4 col-md-6 d-block mx-auto">
                    <div class="row">
                        <div class="col-xl-12 col-md-12 col-md-12 register-right">
                            <ul class="nav nav-tabs nav-justified mb-5 p-2 border" id="myTab" role="tablist">
                                <li class="nav-item">
                                    <a class="nav-link m-1" href="reg_stud.aspx" aria-selected="false">Student</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link active m-1" href="register.aspx" aria-selected="true">University</a>
                                </li>
                            </ul>
                            <div class="tab-content" id="myTabContent">
                                
                                    <div class="single-page w-100  p-0">
                                        <div class="wrapper wrapper2">
                                            <form id="Register" runat="server" class="card-body" tabindex="500">
                                                <h3 class="pb-1">Register as a University <asp:Label ID="Label1" runat="server" Text="Admin"></asp:Label></h3>
                                                
                                                <div class="name">
                                                    <asp:TextBox id="TextBox1" runat="server"></asp:TextBox>
                                                    <label>Full Name of Admin</label>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Please Enter your Name" ControlToValidate="TextBox1" ForeColor="Red"></asp:RequiredFieldValidator>
                                                    
                                                </div>
                                                <div class="name">
                                                    <asp:TextBox id="name" runat="server"></asp:TextBox>
                                                    <label>Name of University</label>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter the Name" ControlToValidate="name" ForeColor="Red"></asp:RequiredFieldValidator>
                                                    
                                                </div>
                                                <div class="mail">
                                                    <asp:DropDownList ID="DropDownList1" class="form-control custom-select select2" runat="server">
                                                        <asp:ListItem >UAE</asp:ListItem>
                                            <asp:ListItem >Malaysia</asp:ListItem>
                                                    </asp:DropDownList>
                                                    <label>Country</label>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Enter the Country" ControlToValidate="DropDownList1" ForeColor="Red"></asp:RequiredFieldValidator>
                                                </div>
                                                <div class="city">
                                                    <asp:TextBox id="city" runat="server"/>
                                                    <label>City</label>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please Enter the City" ControlToValidate="city" ForeColor="Red"></asp:RequiredFieldValidator>
                                                </div>
                                                <div class="email">
                                                    <asp:TextBox id="email" runat="server"/>
                                                    <label>Email</label>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please Enter the Email" ControlToValidate="email" ForeColor="Red"></asp:RequiredFieldValidator>
                                                </div>

                                                <div class="passwd">
                                                    <asp:TextBox id="password" runat="server" TextMode="Password" ValidateRequestMode="Enabled" />
                                                    <label>Password</label>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please Enter the Password" ControlToValidate="password" ForeColor="Red"></asp:RequiredFieldValidator>
                                                </div>

                                                

                                                <div class="mob">
                                                    <asp:TextBox id="TextBox3" Placeholder="Example: +971" runat="server"/>
                                                    <label>Country Code</label>
                                                    <asp:RequiredFieldValidator  ID="RequiredFieldValidator7" runat="server" ErrorMessage="Please Enter the Contact Number" ControlToValidate="number" ForeColor="Red"></asp:RequiredFieldValidator>
                                                </div>

                                                <div class="mob">
                                                    <asp:TextBox id="number" runat="server"/>
                                                    <label>Contact Number</label>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Please Enter the Contact Number" ControlToValidate="number" ForeColor="Red"></asp:RequiredFieldValidator>
                                                </div>

                                                <div class="license">
                                                    <asp:TextBox id="license" runat="server"/>
                                                    <label>Contact Number</label>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="Please Enter the University License" ControlToValidate="license" ForeColor="Red"></asp:RequiredFieldValidator>
                                                </div>
                                                
                                                <div class="uni_link">
                                                    <asp:TextBox id="uni_link" runat="server"/>
                                                    <label>University Link</label>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Please Enter the Link" ControlToValidate="uni_link" ForeColor="Red"></asp:RequiredFieldValidator>
                                                </div>
                                                <asp:Label ID="Label2" runat="server" ForeColor="Red"></asp:Label>
                                                <div class="submit">
                                                    <asp:Button ID="Button1" onclick="Button1_Click" class="btn btn-primary btn-block" runat="server" Text="Register" />
                                                </div>
                                                <p class="text-dark mb-0">Already have an account?<a href="login.aspx" class="text-primary ml-1">Sign In</a></p>
                                            </form>
                                        
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--/Login-Section-->



    <!--Footer Section-->
    <section>
        <footer class="bg-dark-purple text-white">
            <div class="footer-main">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-2 col-md-12">
                            <h6>Resources</h6>
                            <hr class="deep-purple text-primary accent-2 mb-4 mt-0 d-inline-block mx-auto">
                            <ul class="list-unstyled mb-0">
                                <li><a href="javascript:;">Our Team</a></li>
                                <li><a href="javascript:;">Contact US</a></li>
                                <li><a href="javascript:;">About</a></li>
                                <li><a href="javascript:;">CrusaderRecusandae</a></li>
                                <li><a href="javascript:;">Blog</a></li>
                                <li><a href="javascript:;">Terms and Conditions</a></li>
                            </ul>
                        </div>
                        <div class="col-lg-3 col-md-12">
                            <h6>Contact</h6>
                            <hr class="deep-purple  text-primary accent-2 mb-4 mt-0 d-inline-block mx-auto">
                            <ul class="list-unstyled mb-0">
                                <li>
                                    <a href="#"><i class="fa fa-car mr-3 text-primary"></i> New York, NY 10012, US</a>
                                </li>
                                <li>
                                    <a href="#"><i class="fa fa-envelope mr-3 text-primary"></i> info12323@example.com</a></li>
                                <li>
                                    <a href="#"><i class="fa fa-phone mr-3 text-primary"></i> + 01 234 567 88</a>
                                </li>
                                <li>
                                    <a href="#"><i class="fa fa-print mr-3 text-primary"></i> + 01 234 567 89</a>
                                </li>
                            </ul>
                        </div>
                        <div class="col-lg-4 col-md-12">
                            <h6>Download App</h6>
                            <hr class="deep-purple  accent-2 mb-4 mt-0 d-inline-block mx-auto">
                            <div class="">
                                <a class="btn bg-store fs-16" href=""><i class="fa fa-apple mr-2"></i> App Store</a>
                                <a class="btn bg-store fs-16" href=""><i class="fa fa-android mr-2"></i> Google Pay</a>
                            </div>
                            <h6 class="mb-0 mt-5">Payments</h6>
                            <hr class="deep-purple  text-primary accent-2 mb-2 mt-3 d-inline-block mx-auto">
                            <div class="clearfix"></div>
                            <ul class="footer-payments">
                                <li class="pl-0"><a href="javascript:;"><i class="fa fa-cc-amex" aria-hidden="true"></i></a></li>
                                <li><a href="javascript:;"><i class="fa fa-cc-visa" aria-hidden="true"></i></a></li>
                                <li><a href="javascript:;"><i class="fa fa-credit-card-alt" aria-hidden="true"></i></a></li>
                                <li><a href="javascript:;"><i class="fa fa-cc-mastercard" aria-hidden="true"></i></a></li>
                                <li><a href="javascript:;"><i class="fa fa-cc-paypal" aria-hidden="true"></i></a></li>
                            </ul>
                        </div>
                        <div class="col-lg-3 col-md-12">
                            <h6>Subscribe</h6>
                            <hr class="deep-purple  text-primary accent-2 mb-4 mt-0 d-inline-block mx-auto">
                            <div class="clearfix"></div>
                            <div class="input-group w-100">
                                <input type="text" class="form-control br-tl-3  br-bl-3 " placeholder="Email">
                                <div class="input-group-append ">
                                    <button type="button" class="btn btn-primary br-tr-3  br-br-3"> Subscribe </button>
                                </div>
                            </div>
                            <h6 class="mt-5 mb-3">Follow Us</h6>
                            <hr class="deep-purple  accent-2 mb-4 mt-0 d-inline-block mx-auto">
                            <ul class="list-unstyled list-inline">
                                <li class="list-inline-item">
                                    <a class="btn-floating btn-sm rgba-white-slight mx-1 waves-effect waves-light">
                                        <i class="fa fa-facebook bg-facebook"></i>
                                    </a>
                                </li>
                                <li class="list-inline-item">
                                    <a class="btn-floating btn-sm rgba-white-slight mx-1 waves-effect waves-light">
                                        <i class="fa fa-twitter bg-info"></i>
                                    </a>
                                </li>
                                <li class="list-inline-item">
                                    <a class="btn-floating btn-sm rgba-white-slight mx-1 waves-effect waves-light">
                                        <i class="fa fa-google-plus bg-danger"></i>
                                    </a>
                                </li>
                                <li class="list-inline-item">
                                    <a class="btn-floating btn-sm rgba-white-slight mx-1 waves-effect waves-light">
                                        <i class="fa fa-linkedin bg-linkedin"></i>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="bg-dark-purple text-white p-0">
                <div class="container">
                    <div class="row d-flex">
                        <div class="col-lg-12 col-sm-12 mt-3 mb-3 text-center ">
                            Copyright © 2019 <a href="#" class="fs-14 text-primary">Autolist</a>. Designed by <a href="#" class="fs-14 text-primary">Spruko</a> All rights reserved.
                        </div>
                    </div>
                </div>
            </div>
        </footer>
    </section>
    <!--Footer Section-->

    <!-- Back to top -->
    <a href="#top" id="back-to-top"><i class="fa fa-rocket"></i></a>

    <!-- JQuery js-->
    <script src="../assets/js/jquery-3.2.1.min.js"></script>

    <!-- Bootstrap js -->
    <script src="../assets/plugins/bootstrap-4.3.1/js/popper.min.js"></script>
    <script src="../assets/plugins/bootstrap-4.3.1/js/bootstrap.min.js"></script>

    <!--JQueryVehiclerkline Js-->
    <script src="../assets/js/jquery.sparkline.min.js"></script>

    <!-- Circle Progress Js-->
    <script src="../assets/js/circle-progress.min.js"></script>

    <!-- Star Rating Js-->
    <script src="../assets/plugins/rating/jquery.rating-stars.js"></script>

    <!--Owl Carousel js -->
    <script src="../assets/plugins/owl-carousel/owl.carousel.js"></script>

    <!--Horizontal Menu-->
    <script src="../assets/plugins/horizontal-menu/horizontal.js"></script>

    <!--JQuery TouchSwipe js-->
    <script src="../assets/js/jquery.touchSwipe.min.js"></script>

    <!--Select2 js -->
    <script src="../assets/plugins/select2/select2.full.min.js"></script>
    <script src="../assets/js/select2.js"></script>

    <!-- Cookie js 
    <script src="../assets/plugins/cookie/jquery.ihavecookies.js"></script>
    <script src="../assets/plugins/cookie/cookie.js"></script>
    -->

    <!-- Custom scroll bar Js-->
    <script src="../assets/plugins/scroll-bar/jquery.mCustomScrollbar.js"></script>

    <!-- sticky Js-->
    <script src="../assets/js/sticky.js"></script>

    <!-- Swipe Js-->
    <script src="../assets/js/swipe.js"></script>

    <!-- Owl Carousel Js-->
    <script src="../assets/js/owl-carousel.js"></script>

    <!-- Custom Js-->
    <script src="../assets/js/custom.js"></script>
</body>

</html>