<%@ Page Language="C#" MasterPageFile="~/university.Master" AutoEventWireup="true" CodeBehind="add_program.aspx.cs" Inherits="NameMyFee.add_program" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<meta charset="UTF-8"/>
    <meta name='viewport' content='width=device-width, initial-scale=1.0, user-scalable=0'/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="msapplication-TileColor" content="#162946"/>
    <meta name="theme-color" content="#e72a1a"/>
    <meta name="apple-mobile-web-app-status-bar-style" content="black-translucent" />
    <meta name="apple-mobile-web-app-capable" content="yes"/>
    <meta name="mobile-web-app-capable" content="yes"/>
    <meta name="HandheldFriendly" content="True"/>
    <meta name="Duplex VehiclesOptimized" content="320"/>
    <meta name="description" content="Car Listing,Dealer,Rental Auto Classifieds Bootstrap Modern Responsive Clean HTML Template"/>
    <meta name="keywords" content="autotrader,autotrader dealer portal,car classifieds,autoportal,auto classifieds,car dealer template,Autolist,vehicle sale template,car dealer website,car sale template,automotive websites,auto websites,template for selling car,automotive template,car dealer website template,automotive classifieds,car for sale template,car dealer html template,automotive template,car dealer template,car dealer website template,car service template,html template,bootstrap templates,css templates,responsive template,premium html templates,template premium"/>
    <link rel="icon" href="favicon.ico" type="image/x-icon" />
    <link rel="shortcut icon" type="image/x-icon" href="favicon.ico" />

    <!-- Title -->
    <title>Add Program</title>

    <!-- Bootstrap Css -->
    <link href="../assets/plugins/bootstrap-4.3.1/css/bootstrap.min.css" rel="stylesheet" />

    <!-- Dashboard Css -->
    <link href="../assets/css/style.css" rel="stylesheet" />

    <!-- Font-awesome  Css -->
    <link href="../assets/css/icons.css" rel="stylesheet" />

    <!--Select2 Plugin -->
    <link href="../assets/plugins/select2/select2.min.css" rel="stylesheet" />

    <!-- File Uploads css -->
    <link href="../assets/plugins/fancyuploder/fancy_fileupload.css" rel="stylesheet" />

    <!-- Custom scroll bar css-->
    <link href="../assets/plugins/scroll-bar/jquery.mCustomScrollbar.css" rel="stylesheet" />

    <!-- Color-Skins -->
    <link id="theme" rel="stylesheet" type="text/css" media="all" href="../assets/color-skins/color15.css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

      
        <!--Section-->
    <section>
        <div class="bannerimg cover-image bg-background3" data-image-src="../assets/images/banners/banner2.jpg">
            <div class="header-text mb-0">
                <div class="container">
                    <div class="text-center text-white">
                        <h1>Add Program</h1>
                     
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--/Section-->

    <!--Section-->
    <section class="sptb">
        <div class="container">
            <div class="row ">
               
                <div class="col-lg-12">
                    <div class="card ">
                        <div class="card-header ">
                            <h3 class="card-title">Add Program</h3>
                        </div>
                        <div class="row">
                            <div class="col-lg-6 ">
                                <div class="card-body">
                                    <%--<div class="form-group">
                                        <label class="form-label text-dark">Minimum Qualification</label>
                                        <asp:DropDownList ID="DropDownList1" class="form-control custom-select select2" runat="server">
                                            <asp:ListItem >10th Grade Graduate</asp:ListItem>
                                            <asp:ListItem >12th Grade Graduate</asp:ListItem>
                                        </asp:DropDownList>
                                        
                                    </div>--%>

                                    <div class="form-group">
                                        <label class="form-label text-dark">School</label>
                                        <asp:DropDownList ID="DropDownList2" class="form-control custom-select select2" runat="server">
                                            <asp:ListItem >School of Engineering and IT</asp:ListItem>
                                            <asp:ListItem>School of Life Sciences</asp:ListItem>
                                            <asp:ListItem >School of Design and Architecture</asp:ListItem>
                                            <asp:ListItem >School of Business</asp:ListItem>
                                        </asp:DropDownList>
                                        
                                    </div>

                                    <div class="form-group">
                                        <label class="form-label text-dark">Discipline</label>
                                         <asp:DropDownList ID="DropDownList3" class="form-control custom-select select2" runat="server">
                                             <asp:ListItem >Undergraduate</asp:ListItem>
                                            <asp:ListItem >Postgraduate</asp:ListItem>
                                            <asp:ListItem >PHD</asp:ListItem>
                                        </asp:DropDownList>
                                        
                                       
                                    </div>

                                    <div class="form-group">
                                         <label class="form-label text-dark">Program Name</label>
                                         <asp:DropDownList ID="DropDownList4" class="form-control custom-select select2" runat="server">
                                            <asp:ListItem>BTech Computer Science and Engineering</asp:ListItem>
                                            <asp:ListItem>BTech Civil Engineering</asp:ListItem>
                                            <asp:ListItem>BTech Chemical Engineering</asp:ListItem>
                                            <asp:ListItem >BTech Mechanical Engineering</asp:ListItem>
                                              <asp:ListItem >BTech Mechatronics Engineering</asp:ListItem>
                                              <asp:ListItem >BTech Electrical and Electronics Engineering</asp:ListItem>
                                        </asp:DropDownList>
                                       
                                       
                                    </div>

                                    <div class="form-group">
                                        <label class="form-label text-dark">Fee Structure</label>
                                         <asp:DropDownList ID="DropDownList5" class="form-control custom-select select2" runat="server">
                                            <asp:ListItem >Yearly</asp:ListItem>
                                            <asp:ListItem >Semester</asp:ListItem>
                                             <asp:ListItem >Term</asp:ListItem>
                                             <asp:ListItem >Total Programme</asp:ListItem>
                                        </asp:DropDownList>
                                        
                                       
                                    </div>

                                    <div>
                                        <label class="form-label text-dark">Full Tuition Fee</label>
                                        <asp:TextBox ID="TextBox1" class="form-control" runat="server"/>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Please enter the Tution Fee"></asp:RequiredFieldValidator>
                                    </div>

                                    <div>
                                        <label class="form-label text-dark">Other Fees</label>
                                        <asp:TextBox ID="TextBox8" class="form-control" runat="server"/>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="Please enter the Tution Fee"></asp:RequiredFieldValidator>
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-6">
                                <div class="card-body">
                                    <div class="form-group">
                                        <label class="form-label text-dark">Application Open</label>
                                        <asp:TextBox ID="TextBox2" TextMode="Date" class="form-control" runat="server"/>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox2" ErrorMessage="Please enter the Opening Date"></asp:RequiredFieldValidator>
                                    </div>

                                    <div class="form-group">
                                        <label class="form-label text-dark">Application Close</label>
                                        <asp:TextBox ID="TextBox3" TextMode="Date" class="form-control" runat="server"/>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox3" ErrorMessage="Please enter the Closing Date"></asp:RequiredFieldValidator>
                                    </div>

                                    <div>
                                        <label class="form-label text-dark">Number of Seats</label>
                                        <asp:TextBox ID="TextBox4" class="form-control" runat="server"/>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox4" ErrorMessage="Please enter the Number of Seats"></asp:RequiredFieldValidator>
                                    </div>


                                     <div>
                                        <label class="form-label text-dark">Minimum Tution Fee</label>
                                        <asp:TextBox ID="TextBox7" class="form-control" runat="server"/>
                                         <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox7" ErrorMessage="Please enter the Minimum Tution Fee"></asp:RequiredFieldValidator>
                                    </div>

                                    <div>
                                        <label class="form-label text-dark">Program Link</label>
                                        <asp:TextBox ID="TextBox6" class="form-control" runat="server"/>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox6" ErrorMessage="Please enter the Program Link"></asp:RequiredFieldValidator>
                                    </div>

                                    <%--<div>
                                    <asp:CheckBoxList ID="CheckBox1" runat="server">
                                        <asp:ListItem>Photo</asp:ListItem>
                                        <asp:ListItem>ID</asp:ListItem>
                                        <asp:ListItem>Academic Transcripts</asp:ListItem>
                                        <asp:ListItem>Passport</asp:ListItem>
                                    </asp:CheckBoxList>
</div>--%>

                                    <div class="card-footer ">
                                        <a href="#" class="btn btn-primary">Cancel</a>
                                        <asp:Button ID="Button1" runat="server" Text="Add Program" class="btn btn-primary" style="float:right;" OnClick="Button1_Click"/>

                                    </div>

                                </div>

                              
                            </div>
                        </div>
                    </div>
    </section>
    <!--/Section-->
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

    <!-- Custom scroll bar Js-->
    <script src="../assets/plugins/scroll-bar/jquery.mCustomScrollbar.js"></script>

    <!-- sticky Js-->
    <script src="../assets/js/sticky.js"></script>

    <!--File-Uploads Js-->
    <script src="../assets/plugins/fancyuploder/jquery.ui.widget.js"></script>
    <script src="../assets/plugins/fancyuploder/jquery.fileupload.js"></script>
    <script src="../assets/plugins/fancyuploder/jquery.iframe-transport.js"></script>
    <script src="../assets/plugins/fancyuploder/jquery.fancy-fileupload.js"></script>
    <script src="../assets/plugins/fancyuploder/fancy-uploader.js"></script>

    <!-- Vertical scroll bar Js-->
    <script src="../assets/plugins/vertical-scroll/jquery.bootstrap.newsbox.js"></script>
    <script src="../assets/plugins/vertical-scroll/vertical-scroll.js"></script>

    <!-- Custom scroll bar Js-->
    <script src="../assets/plugins/scroll-bar/jquery.mCustomScrollbar.js"></script>

    <!-- Swipe Js-->
    <script src="../assets/js/swipe.js"></script>

    <!-- Owl Carousel Js-->
    <script src="../assets/js/owl-carousel.js"></script>

    <!-- Custom Js-->
    <script src="../assets/js/custom.js"></script>

 </asp:Content>