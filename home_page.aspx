<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/home.Master" CodeBehind="home_page.aspx.cs" Inherits="NameMyFee.home_page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="IE=edge">
    <meta name='viewport' content='width=device-width, initial-scale=1.0, user-scalable=0'>
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
    <title>NameMyFee</title>

    <!-- Bootstrap Css -->
    <link href="../assets/plugins/bootstrap-4.3.1/css/bootstrap.min.css" rel="stylesheet" />

    <!-- Dashboard Css -->
    <link href="../assets/css/style.css" rel="stylesheet" />

    <!-- Font-awesome  Css -->
    <link href="../assets/css/icons.css" rel="stylesheet" />

    <!--Select2 Plugin -->
    <link href="../assets/plugins/select2/select2.min.css" rel="stylesheet" />

    <!-- Owl Theme css-->
    <link href="../assets/plugins/owl-carousel/owl.carousel.css" rel="stylesheet" />

    <!-- Custom scroll bar css-->
    <link href="../assets/plugins/scroll-bar/jquery.mCustomScrollbar.css" rel="stylesheet" />

    <!-- Color-Skins -->
    <link id="theme" rel="stylesheet" type="text/css" media="all" href="../assets/color-skins/color15.css" /> 
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

   
        <!--Section-->
    <section>
        <div class="banner-2 cover-image sptb-2 sptb-tab bg-background2" data-image-src="../assets/images/banners/banner1.jpg">
            <div class="header-text mb-0">
                <div class="container">
                    <div class="text-center text-white ">
                        <h1 class="mb-1">Get the Education you desire for less</h1>
                        <p>Now you can bid for the unsold seats in Universities Programs</p>
                    </div>
                    <div class="row">
                        <div class="col-xl-10 col-lg-12 col-md-12 d-block mx-auto">
                            <div class="item-search-tabs">
                                <div class="item-search-menu">
                                    <ul class="nav">
                                        <li class=""><a href="#tab1" class="active" data-toggle="tab">Search</a></li>
                                        <li><a href="#tab2" data-toggle="tab">Advanced Search</a></li>
                                    </ul>
                                </div>
                                <div class="tab-content index-search-select">
                                    <div class="tab-pane active" id="tab1">
                                        <div class="search-background">
                                            <div class="search_bar">
                                                <div class="search_bar">
                                                    <div class="row no-gutters bg-white br-2">
                                                        <div class="form-group  col-xl-8 col-lg-7 col-md-12 mb-0">
                                                            <asp:TextBox ID="TextBox1" placeholder="Search Universities" runat="server" class="form-control border"></asp:TextBox>
                                                        </div>
                                                        <div class="col-xl-4 col-lg-5 col-md-12 mb-0">
                                                            <asp:LinkButton ID="LinkButton1" OnClick="LinkButton_Click" runat="server" CssClass="btn btn-block btn-primary  fs-14"><i class="fa fa-search"></i> Search</asp:LinkButton>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane" id="tab2">
                                        <div class="search-background">
                                            <div class="form row no-gutters">
                                                <div class="form-group col-xl-2 col-lg-2 col-md-12 mb-0">
                                                    <asp:DropDownList ID="DropDownList1" runat="server" class="form-control select2-show-search border-bottom-0 w-100">
                                                        <asp:ListItem Value="0">Choose Country</asp:ListItem>
                                                        <asp:ListItem Value="1">Malaysia</asp:ListItem>
                                                        <asp:ListItem Value="2">UAE</asp:ListItem>
                                                    </asp:DropDownList>
                                                    
                                                </div>
                                                <div class="form-group col-xl-2 col-lg-2 col-md-12 mb-0">
                                                    <asp:DropDownList ID="DropDownList2" runat="server" class="form-control select2-show-search border-bottom-0 w-100">
                                                        <asp:ListItem Value="0">Discipline</asp:ListItem>
                                                        <asp:ListItem Value="1">Engineering</asp:ListItem>
                                                        <asp:ListItem Value="2">Medical</asp:ListItem>
                                                        <asp:ListItem Value="3">IT</asp:ListItem>
                                                        <asp:ListItem Value="4">Law</asp:ListItem>
                                                        <asp:ListItem Value="5">Arts</asp:ListItem>
                                                    </asp:DropDownList>
                                                    
                                                </div>
                                                <div class="form-group col-xl-2 col-lg-2 col-md-12 mb-0">
                                                    <asp:DropDownList ID="DropDownList3" runat="server" class="form-control select2-show-search border-bottom-0 w-100">
                                                        <asp:ListItem Value="0">Price</asp:ListItem>
                                                        <asp:ListItem Value="1">$10k</asp:ListItem>
                                                        <asp:ListItem Value="2">$10k-$20K</asp:ListItem>
                                                        <asp:ListItem Value="3">$20K-$30K</asp:ListItem>
                                                        <asp:ListItem Value="4">$30K-$40K</asp:ListItem>
                                                        <asp:ListItem Value="5">$40K-$50K</asp:ListItem>
                                                    </asp:DropDownList>
                                                   
                                                </div>
                                           
                                                <div class="form-group col-xl-i col-lg-i col-md-12 mb-0">
                                                    <a href="university_list.html" class="btn btn-block btn-primary  fs-14"><i class="fa fa-search"></i> Search University</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </div>
        <!-- /header-text -->
        </div>
    </section>
    <!--Section-->

    <!--Section-->
    <section class="categories">
        <div class="container">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString %>"></asp:SqlDataSource>
            
            <div id="small-categories" class="owl-carousel owl-carousel-icons2">
                <asp:Repeater runat="server" DataSourceID="SqlDataSource1">
                                 <ItemTemplate>
                                     <div class="item">
                                         <div class="card mb-xl-0 mb-lg-5 box-shadow2">
                                             <div class="card-body">
                                                 <div class="cat-item text-center">
                                                     <a href="info_page.aspx"></a>
                                                     <div class="cat-img1">
                                                         <asp:Image ID="Image5" runat="server" src='<%# Eval("campus_image_path") %>' alt="img" class="mx-auto" />
                                                     </div>
                                                     <div class="cat-desc">
                                                         <h5 class="mb-1">
                                                             <asp:Label ID="Label1" runat="server" Text='<%# Eval("name") %>'></asp:Label></h5>
                                                         <small class="badge badge-pill badge-primary mr-2">45</small><span class="text-muted">Open Programs</span>
                                                     </div>
                                                 </div>
                                             </div>
                                         </div>
                                     </div>
                                     </ItemTemplate>
                </asp:Repeater>
                <%--<div class="item">
                    <div class="card mb-0">
                        <div class="card-body">
                            <div class="cat-item text-center">
                                <a href="info_page.aspx""></a>
                                <div class="cat-img1">
                                    <asp:Image ID="Image6" runat="server" src="https://images.zawya.com/images/cia/zXlarge/130414115221VWPK.jpg" alt="img" class="mx-auto"/>
                                </div>
                                <div class="cat-desc">
                                    <h5 class="mb-1">University of Wollongong</h5>
                                    <small class="badge badge-pill badge-primary mr-2">32</small><span class="text-muted">Open Programs</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="card mb-0">
                        <div class="card-body">
                            <div class="cat-item text-center">
                                <a href="info_page.aspx""></a>
                                <div class="cat-img1">
                                    <asp:Image ID="Image7" runat="server" src="https://www.hw.ac.uk/dubai/img/HeriotWattDubainewcampus.jpg" alt="img" class="mx-auto"/>
                                </div>
                                <div class="cat-desc">
                                    <h5 class="mb-1">Heriot Watt</h5>
                                    <small class="badge badge-pill badge-primary mr-2">19</small><span class="text-muted">Open Programs</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="card mb-0">
                        <div class="card-body">
                            <div class="cat-item text-center">
                                <a href="info_page.aspx""></a>
                                <div class="cat-img1">
                                    <asp:Image ID="Image8" runat="server" src="https://www.rak.ae/wps/wcm/connect/5618dda3-bc82-4430-b2ae-ed89654f9fd2/RAK+Medical.JPG?MOD=AJPERES&CACHEID=ROOTWORKSPACE-5618dda3-bc82-4430-b2ae-ed89654f9fd2-mWFKxHf" alt="img" class="mx-auto"/>
                                </div>
                                <div class="cat-desc">
                                    <h5 class="mb-1">RAK University</h5>
                                    <small class="badge badge-pill badge-primary mr-2">25</small><span class="text-muted">Open Programs</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="card mb-0">
                        <div class="card-body">
                            <div class="cat-item text-center">
                                <a href="info_page.aspx""></a>
                                <div class="cat-img1">
                                    <asp:Image ID="Image9" runat="server" src="https://www.edarabia.com/wp-content/uploads/2018/09/university-birmingham-dubai-awards-first-new-fully-funded-scholarships-1.jpg" alt="img" class="mx-auto"/>
                                </div>
                                <div class="cat-desc">
                                    <h5 class="mb-1">University of Birmingham</h5>
                                    <small class="badge badge-pill badge-primary mr-2">23</small><span class="text-muted">Open Programs</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="card mb-0">
                        <div class="card-body">
                            <div class="cat-item text-center">
                                <a href="info_page.aspx""></a>
                                <div class="cat-img1">
                                    <asp:Image ID="Image10" runat="server" src="https://cdn.rit.edu/images/news/2018-12/rit_dubai_campus_rendering.jpg" alt="img" class="mx-auto"/>
                                </div>
                                <div class="cat-desc">
                                    <h5 class="mb-1">RIT University</h5>
                                    <small class="badge badge-pill badge-primary mr-2">52</small><span class="text-muted">Open Programs</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="card mb-0">
                        <div class="card-body">
                            <div class="cat-item text-center">
                                <a href="info_page.aspx""></a>
                                <div class="cat-img1">
                                    <asp:Image ID="Image11" runat="server" src="https://mybayutcdn.bayut.com/mybayut/wp-content/uploads/British-University-in-Dubai.jpg" alt="img" class="mx-auto"/>
                                </div>
                                <div class="cat-desc">
                                    <h5 class="mb-1">University of Dubai</h5>
                                    <small class="badge badge-pill badge-primary mr-2">46</small><span class="text-muted">Open Programs</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="card mb-0">
                        <div class="card-body">
                            <div class="cat-item text-center">
                                <div class="tab-pane active" id="tab1">
                                    <a href="info_page.aspx""></a>
                                    <div class="cat-img1">
                                        <asp:Image ID="Image12" runat="server" src="https://www.emirates247.com/polopoly_fs/1.690827.1574229389!/image/image.jpg" alt="img" class="mx-auto"/>
                                    </div>
                                    <div class="cat-desc">
                                        <h5 class="mb-1">AUS</h5>
                                        <small class="badge badge-pill badge-primary mr-2">22</small><span class="text-muted">Open Programs</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                  
                </div>--%>
            </div>
            </div>
    </section>
    <!--Section-->

        <!--Section-->
    <section class="sptb">
        <div class="container">
            <div class="section-title center-block text-center">
                <h2>Most Preferred States By Students</h2>
                <p>Find out the top most preferred states by Students</p>
            </div>
            <div class="row">
                <div class="col-xl-2 col-lg-4 col-md-6 col-sm-6">
                    <a href="cars-list.html" class="top-cities card text-center mb-xl-0 box-shadow2">
                        <asp:Image ID="Image13" runat="server" src="../assets/images/svgs/cities/001-statue-of-liberty.svg" alt="img" class="bg-pink-transparent"/>
                        <div class="servic-data mt-3">
                            <h4 class="font-weight-semibold mb-0">Penang</h4>
                        </div>
                    </a>
                </div>
                <div class="col-xl-2 col-lg-4 col-md-6 col-sm-6">
                    <a href="cars-list.html" class="top-cities card text-center mb-xl-0 mb-lg-5 box-shadow2">
                        <asp:Image ID="Image14" runat="server" src="../assets/images/svgs/cities/017-taj-mahal.svg" alt="img" class="svg2 bg-purple-transparent"/>
                        <div class="servic-data mt-3">
                            <h4 class="font-weight-semibold mb-0">Birmingham</h4>
                        </div>
                    </a>
                </div>
                <div class="col-xl-2 col-lg-4 col-md-6 col-sm-6">
                    <a href="cars-list.html" class="top-cities card text-center mb-xl-0 mb-lg-5 box-shadow2">
                        <asp:Image ID="Image15" runat="server" src="../assets/images/svgs/cities/031-stonehenge.svg" alt="img" class="bg-warning-transparent"/>
                        <div class="servic-data mt-3">
                            <h4 class="font-weight-semibold mb-0">Sharjah</h4>
                        </div>
                    </a>
                </div>
                <div class="col-xl-2 col-lg-4 col-md-6 col-sm-6">
                    <a href="cars-list.html" class="top-cities card text-center mb-lg-0 box-shadow2">
                        <asp:Image ID="Image16" runat="server" src="../assets/images/svgs/cities/002-sydney-opera-house.svg" alt="img" class="bg-danger-transparent"/>
                        <div class="servic-data mt-3">
                            <h4 class="font-weight-semibold mb-0">Dubai</h4>
                        </div>
                    </a>
                </div>
                <div class="col-xl-2 col-lg-4 col-md-6 col-sm-6">
                    <a href="cars-list.html" class="top-cities card text-center mb-sm-0 box-shadow2">
                        <asp:Image ID="Image17" runat="server" src="../assets/images/svgs/cities/003-brandenburg-gate.svg" alt="img" class="bg-success-transparent"/>
                        <div class="servic-data mt-3">
                            <h4 class="font-weight-semibold mb-0">Malacca</h4>
                        </div>
                    </a>
                </div>
                <div class="col-xl-2 col-lg-4 col-md-6 col-sm-6">
                    <a href="cars-list.html" class="top-cities card text-center mb-0 box-shadow2">
                        <asp:Image ID="Image18" runat="server" src="../assets/images/svgs/cities/010-great-wall-of-china.svg" alt="img" class="bg-info-transparent"/>
                        <div class="servic-data mt-3">
                            <h4 class="font-weight-semibold mb-0">Perak</h4>
                        </div>
                    </a>
                </div>
            </div>
        </div>
    </section>
    <!--Section-->
       </asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    
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

    <!--Counters -->
    <script src="../assets/plugins/counters/counterup.min.js"></script>
    <script src="../assets/plugins/counters/waypoints.min.js"></script>
    <script src="../assets/plugins/counters/numeric-counter.js"></script>

    <!--Owl Carousel js -->
    <script src="../assets/plugins/owl-carousel/owl.carousel.js"></script>

    <!--Horizontal Menu-->
    <script src="../assets/plugins/horizontal-menu/horizontal.js"></script>

    <!--JQuery TouchSwipe js-->
    <script src="../assets/js/jquery.touchSwipe.min.js"></script>

    <!--Select2 js -->
    <script src="../assets/plugins/select2/select2.full.min.js"></script>
    <script src="../assets/js/select2.js"></script>

    <!-- Sticky Js-->
    <script src="../assets/js/sticky.js"></script>

    <!-- Cookie js 
    <script src="../assets/plugins/cookie/jquery.ihavecookies.js"></script>
    <script src="../assets/plugins/cookie/cookie.js"></script>
    -->

    <!--Showmore Js-->
    <script src="../assets/js/jquery.showmore.js"></script>
    <script src="../assets/js/showmore.js"></script>

    <!-- Custom scroll bar Js-->
    <script src="../assets/plugins/scroll-bar/jquery.mCustomScrollbar.js"></script>

    <!-- Swipe Js-->
    <script src="../assets/js/swipe.js"></script>



    <!-- Custom Js-->
    <script src="../assets/js/custom.js"></script>

    <!-- Owl Carousel Js-->
    <script src="../assets/js/owl-carousel.js"></script>
</asp:Content>