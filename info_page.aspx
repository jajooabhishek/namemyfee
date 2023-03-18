<%@ Page Language="C#" MasterPageFile="~/student.Master" AutoEventWireup="true" CodeBehind="info_page.aspx.cs" Inherits="NameMyFee.info_page" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
    <title>MAHE,Dubai</title>

    <!-- Bootstrap Css -->
    <link href="../assets/plugins/bootstrap-4.3.1/css/bootstrap.min.css" rel="stylesheet" />

    <!-- Dashboard Css -->
    <link href="../assets/css/style.css" rel="stylesheet" />

    <!-- Font-awesome  Css -->
    <link href="../assets/css/icons.css" rel="stylesheet" />

    <!-- Owl Theme css-->
    <link href="../assets/plugins/owl-carousel/owl.carousel.css" rel="stylesheet" />

    <!--Select2 Plugin -->
    <link href="../assets/plugins/select2/select2.min.css" rel="stylesheet" />

    <!-- Custom scroll bar css-->
    <link href="../assets/plugins/scroll-bar/jquery.mCustomScrollbar.css" rel="stylesheet" />

    <!-- Color-Skins -->
    <link id="theme" rel="stylesheet" type="text/css" media="all" href="../assets/color-skins/color15.css" /> 
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
        <!--Section-->
    <div>
        <div class="cover-image sptb-cars bg-background" data-image-src="../assets/images/banners/banner1.jpg">
            
        </div>
    </div>
    <!--Section-->
        <!--Breadcrumb-->
    <section>
        <div class="bannerimg cover-image bg-background3" data-image-src="../assets/images/banners/banner2.jpg">
            <div class="header-text mb-0">
                <div class="container">
                    <div class="text-center text-white">
                        <div class="wideget-user-img">
                            <asp:Image ID="Image6" runat="server" class="brround" src="https://www.enggrecruit.com/wp-content/uploads/2020/11/MAHE-LOGO-300x300.png" alt="img" style="float:right;height:200px;"/>
                        </div>
                        <h1 class=""><asp:Label ID="uni_name" runat="server" Text=''/></h1>
                        
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--Breadcrumb-->

         <div class="">
                        <div class="">
                            <div class="border-0">
                                <div class="wideget-user-tab wideget-user-tab3">
                                    <div class="tab-menu-heading">
                                        <div class="tabs-menu1">
                                            <ul class="nav">
                                                <li class=""><a href="#tab-1" class="active" data-toggle="tab">Programs</a></li>
                                                <li><a href="#tab-3" data-toggle="tab" class="">Overview</a></li>
                                              
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-content border-left border-right border-top br-tr-3 border-bottom br-br-3 br-bl-3 p-5 bg-white mb-4">
                                    <div class="tab-pane active" id="tab-1">

                                        <h4 class="mb-4">Programs</h4>


                                        <div class="card-body">
                                            <div class="table-responsive">
                                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" OnSelected="OnSelected_SqlDataSource" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString %>"></asp:SqlDataSource>
                                                <asp:GridView class="table table-bordered table-hover text-nowrap" Border="0" OnRowCreated="Remove_Cols" ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1">
                                                    <Columns>
                                                        <asp:TemplateField>
                                                            <HeaderTemplate>
                                                                        <th>Programme</th>
                                                                        <th>Closing Date</th>
                                                                        <th>Full Tution Fee</th>
                                                                        <th></th>
                                                            </HeaderTemplate>
                                                            <ItemTemplate>
                                                                        <td class="text-primary"><asp:Label ID="prog_name" Text='<%# Eval("prog_name") %>' runat="server"/></td>
                                                                        <td><asp:Label ID="closing_date" Text='<%# Eval("bid_close_date") %>' runat="server"/></td>
                                                                        <td class="font-weight-semibold fs-16"><asp:Label ID="full_fee" Text='<%# Eval("full_tution_fee") %>' runat="server"/></td>
                                                                        <td><asp:Button text="Bid Now" onclick="Bid_Now_Pressed" class="button button-primary" runat="server"/></td>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                    </Columns>
                                                </asp:GridView>
                                                <asp:Panel ID="no_data" runat="server" Visible="false">
                                                    <div>
                                                        <h5>NO RECORDS FOUND</h5>
                                                    </div>
                                                </asp:Panel>
                                            </div>
                                           
                                        </div>

                                     
                                    </div>
                                    <div class="tab-pane" id="tab-3">
                                        <h3 class="card-title mb-3 font-weight-semibold">Overview</h3>
                                        <div class="mb-4">
                                            <asp:Label ID="overview" runat="server" Text=""/>
                                        </div>
                                   
                                    </div>
                                  
                                </div>
                            </div>
                        </div>
                    </div>

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

    <!--Owl Carousel js -->
    <script src="../assets/plugins/owl-carousel/owl.carousel.js"></script>

    <!--Horizontal Menu-->
    <script src="../assets/plugins/horizontal-menu/horizontal.js"></script>

    <!--JQuery TouchSwipe js-->
    <script src="../assets/js/jquery.touchSwipe.min.js"></script>

    <!-- Google Maps Plugin -->
    <script src="https://maps.google.com/maps/api/js?key=AIzaSyCnU5YfCHwqd7c5oDhqTjwSV9UUNXGo5zw"></script>
    <script src="../assets/plugins/maps-google/jquery.googlemap.js"></script>
    <script src="../assets/plugins/maps-google/map.js"></script>

    <!--Select2 js -->
    <script src="../assets/plugins/select2/select2.full.min.js"></script>
    <script src="../assets/js/select2.js"></script>

    <!-- Cookie js 
    <script src="../assets/plugins/cookie/jquery.ihavecookies.js"></script>
    <script src="../assets/plugins/cookie/cookie.js"></script>
    -->

    <!-- Count Down-->
    <script src="../assets/plugins/count-down/jquery.lwtCountdown-1.0.js"></script>

    <!-- Custom scroll bar Js-->
    <script src="../assets/plugins/scroll-bar/jquery.mCustomScrollbar.js"></script>

    <!-- Sticky Js-->
    <script src="../assets/js/sticky.js"></script>

    <!-- Vertical scroll bar Js-->
    <script src="../assets/plugins/vertical-scroll/jquery.bootstrap.newsbox.js"></script>
    <script src="../assets/plugins/vertical-scroll/vertical-scroll.js"></script>

    <!-- Swipe Js-->
    <script src="../assets/js/swipe.js"></script>

    <!-- Owl-carousel Js-->
    <script src="../assets/js/owl-carousel.js"></script>

    <!-- Custom Js-->
    <script src="../assets/js/custom.js"></script>
 </asp:Content>
