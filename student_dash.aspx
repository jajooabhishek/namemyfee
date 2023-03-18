<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/student.Master" CodeBehind="student_dash.aspx.cs" Inherits="NameMyFee.student_dash" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta charset="UTF-8" />
    <meta name='viewport' content='width=device-width, initial-scale=1.0, user-scalable=0' />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="msapplication-TileColor" content="#162946" />
    <meta name="theme-color" content="#e72a1a" />
    <meta name="apple-mobile-web-app-status-bar-style" content="black-translucent" />
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <meta name="mobile-web-app-capable" content="yes" />
    <meta name="HandheldFriendly" content="True" />
    <meta name="Duplex VehiclesOptimized" content="320" />
    <meta name="description" content="Car Listing,Dealer,Rental Auto Classifieds Bootstrap Modern Responsive Clean HTML Template" />
    <meta name="keywords" content="autotrader,autotrader dealer portal,car classifieds,autoportal,auto classifieds,car dealer template,Autolist,vehicle sale template,car dealer website,car sale template,automotive websites,auto websites,template for selling car,automotive template,car dealer website template,automotive classifieds,car for sale template,car dealer html template,automotive template,car dealer template,car dealer website template,car service template,html template,bootstrap templates,css templates,responsive template,premium html templates,template premium" />
    <link rel="icon" href="favicon.ico" type="image/x-icon" />
    <link rel="shortcut icon" type="image/x-icon" href="favicon.ico" />

    <!-- Title -->
    <title>Student Applications</title>

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

    <!-- jquery ui RangeSlider -->
    <link href="../assets/plugins/jquery-uislider/jquery-ui.css" rel="stylesheet">

    <!-- Color-Skins -->
    <link id="theme" rel="stylesheet" type="text/css" media="all" href="../assets/color-skins/color15.css" />

    </asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    

        <!--Section-->
        <div>
            <div class="cover-image sptb-1 bg-background" data-image-src="../assets/images/banners/banner1.jpg">
                <div class="header-text1 mb-0">
                    <div class="container">
                        <div class="row">
                            <div class="col-xl-10 col-lg-12 col-md-12 d-block mx-auto">
                                <div class="text-center text-white ">
                                    <h1 class=""><span class="font-weight-bold">Student Applications</span></h1>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- /header-text -->
        <!--Section-->
        <!--Breadcrumb-->
        <div class="bg-white border-bottom">
            <div class="container">
                <div class="page-header">
                    <h4 class="page-title">
                        <asp:Label ID="Label1" Text="My Applications" runat="server" /></h4>
                </div>
            </div>
        </div>
        <!--/Breadcrumb-->

        <!--listing-->
        <section class="sptb">
            <div class="container">
                <div class="row">
                    <div class="col-xl-90 col-lg-9 col-md-12">
                        <!--Lists-->
                        <div class=" mb-0">
                            <div class="">
                                <div class="item2-gl ">

                                    <div class="tab-content">
                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString %>"></asp:SqlDataSource>
                                        <asp:GridView class="table table-borderless" Border="0" ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1">
                                        <Columns>
                                        <asp:TemplateField>
                                        <ItemTemplate>
                                            <div class="tab-pane active" id="tab-15">
                                            <div class="card overflow-hidden">
                                                <div class="d-md-flex">
                                                    <div class="item-card9-img">
                                                        <div class="item-card9-imgs" style="max-width:600px;">
                                                            <a class="link" href="info_page.aspx"></a>
                                                            <asp:Image ID="Image5" runat="server" alt="img" class="cover-image" />
                                                        </div>

                                                        <div class="item-overly-trans">
                                                        </div>
                                                    </div>
                                                    <div class="card border-0 mb-0">
                                                        <div class="card-body ">
                                                            <div class="item-card9">
                                                                <a href="info_page.aspx" class="text-dark">
                                                                    <h4 class="font-weight-semibold mt-1"><asp:Label ID="uni_name" Text='<%# Eval("uni_applied") %>' runat="server" /></h4>
                                                                </a>
                                                                <table>
                                                                    <tr>
                                                                        <td style="padding: 0px 0 10px 0;">
                                                                            <p class="mb-0 text-muted">Programme</p>
                                                                            <asp:Label ID="prog_name" Text='<%# Eval("prog_applied") %>' class="mb-0 leading-tight" runat="server"/>
                                                                        </td>
                                                                        <td style="padding: 0px 20px 10px 20px;">
                                                                            <p class="mb-0 text-muted">Bid Amount</p>
                                                                            <asp:Label ID="bid_price" Text='<%# Eval("bid_price") %>' class="mb-0 leading-tight" runat="server"/>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td style="padding: 0 0 10px 0;">
                                                                            <p class="mb-0 text-muted">Status</p>
                                                                            <asp:Label ID="status" Text='<%# Eval("status") %>' class="mb-0 leading-tight" runat="server"/>
                                                                        </td>
                                                                        <td style="padding: 0 20px 10px 20px;">
                                                                            <p class="mb-0 text-muted">Other Fees</p>
                                                                            <asp:Label ID="other_fees" class="mb-0 leading-tight" runat="server"/>
                                                                        </td>
                                                                        <%--<td style="padding: 0 20px 10px 20px;">
                                                                            <p class="mb-0 text-muted">Minimum Tution Fee</p>
                                                                            <asp:Label ID="min_bid" class="mb-0 leading-tight" runat="server"/>
                                                                        </td>--%>
                                                                    </tr>
                                                                    <tr>
                                                                        <td style="padding: 0 0 10px 0;">
                                                                            <p class="mb-0 text-muted">Full Tution Fee</p>
                                                                            <asp:Label ID="full_tution_fee" class="mb-0 leading-tight" runat="server"/>
                                                                        </td>
                                                                        
                                                                    </tr>
                                                                </table>
                                                            </div>
                                                        </div>
                                                        <div class="card-footer pr-4 pl-4 pt-4 pb-4">
                                                            <div class="item-card9-footer d-sm-flex">

                                                                <div class="ml-auto">
                                                                    <asp:PlaceHolder ID="placeholder1" runat="server">
                                                                    </asp:PlaceHolder>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        </ItemTemplate>
                                        </asp:TemplateField>
                                        </Columns>
                                       </asp:GridView>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </section>
        <!--/Listing-->

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

    <!--Select2 js -->
    <script src="../assets/plugins/select2/select2.full.min.js"></script>
    <script src="../assets/js/select2.js"></script>

    <!-- Sticky Js-->
    <script src="../assets/js/sticky.js"></script>

    <!-- Cookie js 
    <script src="../assets/plugins/cookie/jquery.ihavecookies.js"></script>
    <script src="../assets/plugins/cookie/cookie.js"></script>
    -->

    <!-- Ion.RangeSlider -->
    <script src="../assets/plugins/jquery-uislider/jquery-ui.js"></script>
    <script src="../assets/plugins/jquery-uislider/jquery.ui.touch-punch.min.js"></script>
    <script src="../assets/js/slider.js"></script>

    <!-- Custom scroll bar Js-->
    <script src="../assets/plugins/scroll-bar/jquery.mCustomScrollbar.js"></script>

    <!--Showmore Js-->
    <script src="../assets/js/jquery.showmore.js"></script>
    <script src="../assets/js/showmore.js"></script>

    <!-- Owl-carousel Js-->
    <script src="../assets/js/owl-carousel.js"></script>

    <!-- Custom Js-->
    <script src="../assets/js/custom.js"></script>

   </asp:Content>