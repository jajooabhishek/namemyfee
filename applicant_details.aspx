<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="applicant_details.aspx.cs" Inherits="NameMyFee.applicant_details" %>


<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
    <title>Applicants Details</title>

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
        <asp:Image ID="Image1" runat="server" src="../assets/images/loader.svg" class="loader-img " alt=""/>
    </div>
    <!-- Horizontal Header -->
    <div class="horizontal-header clearfix ">
        <div class="container">
            <a id="horizontal-navtoggle" class="animated-arrow"><span></span></a>
            <span class="smllogo"><asp:Image ID="Image2" runat="server" src="../assets/images/logo1.png" width="120" alt=""/></span>
            <a href="tel:245-6325-3256" class="callusbtn"><i class="fa fa-phone" aria-hidden="true"></i></a>
        </div>
    </div>
    <!-- /Horizontal Header -->

    <!-- Horizontal Main -->
    <div class="horizontal-main bg-dark-transparent clearfix">
        <div class="horizontal-mainwrapper container clearfix">
            <div class="desktoplogo">
                <a href="index.html"><asp:Image ID="Image3" runat="server" src="../assets/images/logo1.png" alt=""/></a>
            </div>
            <div class="desktoplogo-1">
                <a href="index.html"><asp:Image ID="Image4" runat="server" src="../assets/images/logo2.png" alt=""/></a>
            </div>
            <!--Nav-->
            <nav class="horizontalMenu clearfix d-md-flex">
                <ul class="horizontalMenu-list">
                    <li aria-haspopup="true"><a href="university_dash.aspx">Home </a>
                        <!-- <ul class="sub-menu"> //not in use
                                <li aria-haspopup="true"><a href="index.html">Home-default</a></li>
                                <li aria-haspopup="true"><a href="cars-text.html">Home Text</a></li>
                                <li aria-haspopup="true"><a href="cars-slides.html">Home Slides</a></li>
                                <li aria-haspopup="true"><a href="cars-video.html">Home Video</a></li>
                                <li aria-haspopup="true"><a href="cars-animation.html">Home Animation </a></li>
                                <li aria-haspopup="true"><a href="cars-map.html">Home Map</a></li>
                                <li aria-haspopup="true"><a href="banner.html">Home Banner</a></li>
                                <li aria-haspopup="true"><a href="intro-page.html">Home Intro Page</a></li>
                                <li aria-haspopup="true"><a href="popup-login.html">Home Pop-up login</a></li>
                                <li aria-haspopup="true"><a href="car-auction.html">Car Auction</a></li>
                                <li aria-haspopup="true"><a href="car-rental.html">Car Rental</a></li>
                                <li aria-haspopup="true"><a href="car-parts.html">Car Spare Parts</a></li>
                                <li aria-haspopup="true"><a href="car-service.html">Car Services</a></li>
                            </ul> -->
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
                    <li aria-haspopup="true"><a href="home_page.aspx"> LOGOUT <span class="horizontalarrow"></span></a></li>

                </ul>
            </nav>
            <!--Nav-->
        </div>
    </div>
    <!-- /Horizontal Main -->
    <form id="form1" runat="server">   
        <!--Breadcrumb-->
    <section>
        <div class="bannerimg cover-image bg-background3" data-image-src="../assets/images/banners/banner2.jpg">
            <div class="header-text mb-0">
                <div class="container">
                    <div class="text-center text-white ">
                        <h1 class="">Ahmed Sheikh</h1>
                       
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--/Breadcrumb-->

        <section class="sptb">
        <div class="container">
            <div class="row ">
               
                <div class="col-lg-12">
                    <div class="card ">
                        <div class="card-header ">
                            <h3 class="card-title">Program Details</h3>
                        </div>
                        <div class="row">
                            <div class="col-lg-6 ">
                                <div class="card-body">
                                    <div class="form-group">
                                        <label class="form-label text-dark">Programme</label>
                                        <asp:TextBox ID="TextBox1" runat="server" class="form-control" ReadOnly="True">B.Tech Computer Science and Engineering</asp:TextBox>
                                    </div>

                                    <div class="form-group">
                                        <label class="form-label text-dark">Full Tuition Fee</label>
                                        <asp:TextBox ID="TextBox2" runat="server" class="form-control" ReadOnly="True">AED 44,800</asp:TextBox>
                                    </div>

                                    <div class="form-group">
                                        <label class="form-label text-dark">Other Fees</label>
                                       <asp:TextBox ID="TextBox3" runat="server" class="form-control" ReadOnly="True">AED 3500</asp:TextBox>
                                    </div>

                                    <div class="form-group">
                                        <label class="form-label text-dark">Ackowledged Fee</label>
                                        <asp:TextBox ID="TextBox4" class="form-control" runat="server" ReadOnly="True">AED 40000</asp:TextBox>
                                    </div>

                                    <div class="form-group">
                                        <label class="form-label text-dark">Total Fee</label>
                                        <asp:TextBox ID="TextBox5" class="form-control" runat="server" ReadOnly="True">AED 43500</asp:TextBox>
                                    </div>

                                    <div class="card-footer ">
                                        <a href="#" class="btn btn-primary">View Documents</a>


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

    </form>

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
    <!-- Message Modal -->
   

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

    <!-- Count Down-->
    <script src="../assets/plugins/count-down/jquery.lwtCountdown-1.0.js"></script>

    <!-- sticky Js-->
    <script src="../assets/js/sticky.js"></script>

    <!-- Custom scroll bar Js-->
    <script src="../assets/plugins/scroll-bar/jquery.mCustomScrollbar.js"></script>

    <!-- Owl Carousel Js-->
    <script src="../assets/js/owl-carousel.js"></script>

    <!-- Custom Js-->
    <script src="../assets/js/custom.js"></script>
</body>
</html>
