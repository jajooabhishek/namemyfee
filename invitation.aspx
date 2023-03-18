<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/student.Master" CodeBehind="invitation.aspx.cs" Inherits="NameMyFee.invitation" %>


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

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   

    <!--Breadcrumb-->
    <section>
        <div class="bannerimg cover-image bg-background3" data-image-src="../assets/images/banners/banner2.jpg">
            <div class="header-text mb-0">
                <div class="container">
                    <div class="text-center text-white ">
                        <h1 class="">Invitation to Apply</h1>
                       
                        
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--/Breadcrumb-->

    
    <!--Section-->
    <section class="sptb">
        <div class="container">
            <div class="row ">
                <!--<div class="col-lg-8 col-md-12 col-md-12">-->
                <div class="col-lg-12">
                    <div class="card ">
                        <div class="card-header ">
                            <h3 class="card-title">Complete Application</h3>
                        </div>
                        <div class="row">
                            <div class="col-lg-6 ">
                                <div class="card-body">

                                    <div class="form-group">
                                        <label class="form-label text-dark">University</label>
                                        <asp:TextBox class="form-control" ID="text1" runat="server" ReadOnly="True" />
                                    </div>

                                    <div class="form-group">
                                        <label class="form-label text-dark">Programme</label>
                                        <asp:TextBox class="form-control" ID="text2" ReadOnly="True" runat="server"/>
                                    </div>

                                    <div class="form-group">
                                        <label class="form-label text-dark">Your Email</label>
                                        <asp:Textbox class="form-control" ID="text3" ReadOnly="True" runat="server"></asp:Textbox>
                                    </div>

                                    <div class="form-group">
                                        <label class="form-label text-dark">Full Tuition Fee</label>
                                        <asp:TextBox class="form-control" ID="text4" ReadOnly="True" runat="server"/>
                                    </div>

                                    <div class="form-group">
                                        <label class="form-label text-dark">Other Fees</label>
                                        <asp:TextBox class="form-control" ID="text5" ReadOnly="True" runat="server"/>
                                    </div>

                                    <div class="form-group">
                                        <label class="form-label text-dark">Ackowledged Fee</label>
                                        <asp:TextBox class="form-control" ID="text6" ReadOnly="True" runat="server"></asp:TextBox>
                                    </div>

                                    <div class="form-group">
                                        <label class="form-label text-dark">Total Fee</label>
                                        <asp:Textbox class="form-control" ID="text7" ReadOnly="True" runat="server"></asp:Textbox>
                                    </div>

                                    <div class="form-group">
                                        <label class="form-label text-dark">Order ID</label>
                                        <asp:Textbox class="form-control" ID="Textbox1" ReadOnly="True" runat="server"></asp:Textbox>                                        
                                    </div>
                                  
                                    <asp:Button ID="Button2" runat="server" Text="Make Payment" class="btn btn-primary " OnClick="Button2_Click" />&nbsp&nbsp
<asp:Label ID="Label1" runat="server" ForeColor="Blue"></asp:Label>

                                    <div>
                                        <label class="form-label text-dark">Photo</label>
                                        <asp:FileUpload ID="photo_input" runat="server" CssClass="btn btn-primary "/>
                                    </div>
                                    <br />
                                    <div>
                                        <label class="form-label text-dark">Passport</label>
                                        <asp:FileUpload ID="passport_input" runat="server" CssClass="btn btn-primary "/>
                                    </div>
                                    <br />
                                    <div >
                                        <label class="form-label text-dark">ID(If Applicable)</label>
                                        <asp:FileUpload ID="id_input" runat="server" CssClass="btn btn-primary "/>
                                    </div>
                                    <br />
                                    <div>
                                        <label class="form-label text-dark">Academic Transcripts</label>
                                        <asp:FileUpload ID="transcript_input" runat="server" CssClass="btn btn-primary "/>
                                    </div>
                                    <br />
                                        <asp:Button ID="Button1" runat="server" Text="Submit" class="btn btn-primary " OnClick="Button1_Click" />
                                    <br />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </div>
    </section>

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
</asp:Content>