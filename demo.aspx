<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/university.Master" CodeBehind="demo.aspx.cs" Inherits="NameMyFee.demo" %>


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

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
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

                                        <h4 class="mb-4">Applicants</h4>
                                        <asp:Label ID="Label6" runat="server"></asp:Label>
                                        /<asp:Label ID="Label7" runat="server"></asp:Label> Seats Selected

                                        <div class="card-body">
                                            <div class="table-responsive">
                                                <asp:GridView class="table table-bordered table-hover text-nowrap" Border="0" ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="id" >
                        <Columns>
                            <asp:TemplateField HeaderText="ID">  
                    <ItemTemplate>  
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("id") %>'></asp:Label>  
                    </ItemTemplate>  
                </asp:TemplateField>
                            <asp:TemplateField HeaderText="Applicant Name">  
                    <ItemTemplate>  
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("name") %>'></asp:Label>  
                    </ItemTemplate>  
                </asp:TemplateField>
                            <asp:TemplateField HeaderText="Nationality">  
                    <ItemTemplate>  
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("nationality") %>'></asp:Label>  
                    </ItemTemplate>  
                </asp:TemplateField>
                            <asp:TemplateField HeaderText="Country of Residence">  
                    <ItemTemplate>  
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("country") %>'></asp:Label>  
                    </ItemTemplate>  
                </asp:TemplateField>
                            <asp:TemplateField HeaderText="Bid Amount">  
                    <ItemTemplate>  
                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("bid_price") %>'></asp:Label>  
                    </ItemTemplate>  
                </asp:TemplateField>
                            
                        <asp:TemplateField HeaderText="Select Data">  
                    <EditItemTemplate>  
                        <asp:CheckBox ID="CheckBox1" runat="server" />  
                    </EditItemTemplate>  
                    <ItemTemplate>  
                        <asp:CheckBox ID="CheckBox1" runat="server" />  
                    </ItemTemplate>  
                </asp:TemplateField> 
                             
    </Columns>
                    
                        </asp:GridView>
                                                <asp:Button ID="Button8" runat="server" onclick="Button1_Click" Text="Invite Selected Applicants" CssClass="btn btn-primary btn-lg text-white card-mar" />
                                                <asp:Panel ID="no_data" runat="server" Visible="false">
                                                    <div>
                                                        <h5>NO RECORDS FOUND</h5>
                                                    </div>
                                                </asp:Panel>
                                            </div>
                                           
                                        </div>

                                     
                                    </div>
                                    <div class="tab-pane" id="tab-3">
                                        <h3 class="card-title mb-3 font-weight-semibold">Invited Applicants</h3>
                                        <div class="mb-4">
                                            <div class="card-body">
                                            <div class="table-responsive">
                                                <asp:GridView class="table table-bordered table-hover text-nowrap" Border="0" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id">
                                                    <Columns>
                            <asp:TemplateField HeaderText="ID">  
                    <ItemTemplate>  
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("id") %>'></asp:Label>  
                    </ItemTemplate>  
                </asp:TemplateField>
                            <asp:TemplateField HeaderText="Applicant Name">  
                    <ItemTemplate>  
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("name") %>'></asp:Label>  
                    </ItemTemplate>  
                </asp:TemplateField>
                            <asp:TemplateField HeaderText="Bid Amount">  
                    <ItemTemplate>  
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("bid_amount") %>'></asp:Label>  
                    </ItemTemplate>  
                </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Order ID">  
                    <ItemTemplate>  
                        <asp:Label ID="application_id" runat="server" Text='<%# Bind("application_id") %>'></asp:Label>  
                    </ItemTemplate>  
                </asp:TemplateField>
                            <asp:TemplateField HeaderText="Payment Status">
                                <ItemTemplate>  
                        <asp:Label ID="payment_status" runat="server"></asp:Label>  
                    </ItemTemplate>  
                </asp:TemplateField>
                            <asp:TemplateField HeaderText="Download">  
                    <ItemTemplate>
                <asp:Button ID="lnkDownload" runat="server" Text="Download" OnClick="DownloadFile"/>
            </ItemTemplate>
                </asp:TemplateField>
                            
                         
                             
    </Columns>
                                                </asp:GridView>
                                                <asp:Panel ID="Panel1" runat="server" Visible="false">
                                                    <div>
                                                        <h5>NO RECORDS FOUND</h5>
                                                    </div>
                                                </asp:Panel>
                                            </div>
                                           
                                        </div>

                                     
                                    </div>
                                        </div>
                                   
                                    </div>
                                  
                                </div>
                            </div>
                        </div>

         </asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
   

  

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