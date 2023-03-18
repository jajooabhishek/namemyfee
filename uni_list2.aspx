<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/student.Master" CodeBehind="uni_list2.aspx.cs" Inherits="NameMyFee.uni_list2" %>

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
    <title>University List</title>

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
                                <h1 class=""><span class="font-weight-bold">University List</h1>
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
                <h4 class="page-title">University list</h4>
               
            </div>
        </div>
    </div>
    <!--/Breadcrumb-->
    <!--listing-->
    <section class="sptb">
        <div class="container">
            <div class="row">
                <div class="col-xl-9 col-lg-9 col-md-12">
                    <!--Lists-->
                    <div class=" mb-0">
                        <div class="">
                            <div class="item2-gl ">
                                <div class=" mb-0">
                                    <div class="">
                                        <div class="bg-white p-5 item2-gl-nav d-flex">
                                            <h6 class="mb-0 mt-3 text-left">Search Results: <asp:Label ID="Label1" runat="server"></asp:Label></h6>
                                            <ul class="nav item2-gl-menu ml-auto mt-1">
                                                <li class=""><a href="#tab-11" class="active show" data-toggle="tab" title="List style"><i class="fa fa-list"></i></a></li>
                                                <li><a href="#tab-12" data-toggle="tab" class="" title="Grid"><i class="fa fa-th"></i></a></li>
                                            </ul>
                                            <div class="d-sm-flex">
                                                <label class="mr-2 mt-2 mb-sm-1">Sort By:</label>
                                                <div class="selectgroup">
                                                    <label class="selectgroup-item mb-md-0">
															<asp:RadioButton name="value" value="Price" class="selectgroup-input" checked="" runat="server"/>
															<span class="selectgroup-button">Price <i class="fa fa-sort ml-1"></i></span>
														</label>
                                                    
                                                    <label class="selectgroup-item mb-md-0">
															<asp:RadioButton name="value" value="Latest" class="selectgroup-input" runat="server"/>
															<span class="selectgroup-button">Latest</span>
														</label>
                                                    
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>


                     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString %>"></asp:SqlDataSource>
                     <div class="col">
                        <asp:GridView class="table table-borderless" Border="0" ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1">
                           <Columns>
                              <asp:TemplateField>
                                 <ItemTemplate>
                                   <div class="tab-pane active" id="tab-11">
                                      <div class="card overflow-hidden">
                                            <div class="d-md-flex">
                                                <div class="item-card9-img">
                                                    <div class="item-card9-imgs" style="max-width:500px;">
                                                        <a class="link" href="info_page.aspx"></a>
                                                        <asp:Image src='<%# Eval("campus_image_path") %>' alt="img" class="cover-image" runat="server"/>
                                                    </div>
                                                   
                                                </div>
                                                <div class="card border-0 mb-0">
                                                    <div class="card-body ">
                                                        <div class="item-card9">

                                                            <a href="info_page.aspx" class="text-dark">
                                                                <h4 class="font-weight-semibold mt-1"> <asp:Label ID="uni_name" runat="server" Text='<%# Eval("name") %>'></asp:Label></h4>
                                                                
                                                            </a>
                                                            <div class="item-card9-desc mb-2">
                                                                <a href="#" class="mr-4"><span class=""><i class="fa fa-map-marker text-muted mr-1"></i> Dubai</span></a>
                                                                <a href="#" class="mr-4"><span class=""><i class="fa fa-calendar-o text-muted mr-1"></i>  2 days ago</span></a>
                                                            </div>
                                                            <p class="mb-0 leading-tight">Qualification: CBSE Grade 12/Equivalent</p>
                                                            <p class="mb-0 leading-tight">Fees: 25,000 - 46,000</p>
                                                            <p class="mb-0 leading-tight">Offical Website: <a href="url"><asp:Label ID="uni_link" runat="server" Text='<%# Eval("uni_link") %>'></asp:Label><a></p>
                                                        </div>
                                                    </div>
                                                    <div class="card-footer pr-4 pl-4 pt-4 pb-4">
                                                        <div class="item-card9-footer d-sm-flex">
                                                            <div class="item-card9-cost">
                                                                <h4 class="text-dark font-weight-bold mb-0 mt-0"><asp:Label ID="Label2" runat="server"></asp:Label> Courses Available</h4>
                                                            </div>
                                                            <div class="ml-auto">
                                                              
                                                                <div class="input-group-append">
                                                                    <button type="button" class="btn btn-white br-tr-3 br-br-3 btn-mar-right-2">
                                                                        Brochure
                                                                    </button>
                                                                    <asp:Button type="button" OnClick="Button_Press" text="Bid Now" class="btn btn-primary br-tr-3  br-br-3" runat="server"/>
                                                                </div>
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
        <div class="center-block text-center">
            <ul class="pagination mb-3">
                <li class="page-item page-prev disabled">
                    <a class="page-link" href="#" tabindex="-1">Prev</a>
                </li>
                <li class="page-item active"><a class="page-link" href="#">1</a></li>
                <li class="page-item"><a class="page-link" href="#">2</a></li>
                <li class="page-item"><a class="page-link" href="#">3</a></li>
                <li class="page-item page-next">
                    <a class="page-link" href="#">Next</a>
                </li>
            </ul>
        </div>
        </div>
        </div>
        <!--/Lists-->
        </div>

        <!--Right Side Content-->
        <div class="col-xl-3 col-lg-3 col-md-12">
            <div class="card">
                <div class="card-body">
                    <div class="input-group">
                        <asp:TextBox class="form-control br-tl-3  br-bl-3" placeholder="Search" runat="server"/>
                        <div class="input-group-append ">
                            <button type="button" class="btn btn-primary br-tr-3  br-br-3">
											Search
										</button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="card overflow-hidden">
                <div class="px-4 py-3 border-bottom">
                    <h4 class="mb-0">Course Offered</h4>
                </div>
                <div class="card-body">
                    <div class="" id="container">
                        <div class="filter-product-checkboxs">
                            <label class="custom-control custom-checkbox mb-3">
											<asp:CheckBox class="custom-control-input" name="checkbox1" value="option1" runat="server"/>
											<span class="custom-control-label">
												<a href="#" class="text-dark">B.Tech<span class="label label-secondary float-right">14</span></a>
											</span>
										</label>
                            <label class="custom-control custom-checkbox mb-3">
											<asp:CheckBox class="custom-control-input" name="checkbox2" value="option2" runat="server"/>
											<span class="custom-control-label">
												<a href="#" class="text-dark">B.Sc<span class="label label-secondary float-right">22</span></a>
											</span>
										</label>
                            <label class="custom-control custom-checkbox mb-3">
											<asp:CheckBox class="custom-control-input" name="checkbox3" value="option3" runat="server"/>
											<span class="custom-control-label">
												<a href="#" class="text-dark">BBA<span class="label label-secondary float-right">78</span></a>
											</span>
										</label>
                            <label class="custom-control custom-checkbox mb-3">
											<asp:CheckBox class="custom-control-input" name="checkbox4" value="option3" runat="server"/>
											<span class="custom-control-label">
												<a href="#" class="text-dark">BCA<span class="label label-secondary float-right">35</span></a>
											</span>
										</label>
                            <label class="custom-control custom-checkbox mb-3">
											<asp:CheckBox class="custom-control-input" name="checkbox5" value="option3" runat="server"/>
											<span class="custom-control-label">
												<a href="#" class="text-dark">B.Com<span class="label label-secondary float-right">23</span></a>
											</span>
										</label>
                            <label class="custom-control custom-checkbox mb-3">
											<asp:CheckBox class="custom-control-input" name="checkbox6" value="option3" runat="server"/>
											<span class="custom-control-label">
												<a href="#" class="text-dark">B.Com CA<span class="label label-secondary float-right">14</span></a>
											</span>
										</label>
                            <label class="custom-control custom-checkbox mb-3">
											<asp:CheckBox class="custom-control-input" name="checkbox7" value="option3" runat="server"/>
											<span class="custom-control-label">
												<a href="#" class="text-dark">BA<span class="label label-secondary float-right">45</span></a>
											</span>
										</label>
                            <label class="custom-control custom-checkbox mb-3">
											<asp:CheckBox class="custom-control-input" name="checkbox7" value="option3" runat="server"/>
											<span class="custom-control-label">
												<a href="#" class="text-dark">B.Eng<span class="label label-secondary float-right">34</span></a>
											</span>
										</label>
                            <label class="custom-control custom-checkbox mb-3">
											<asp:CheckBox class="custom-control-input" name="checkbox7" value="option3" runat="server"/>
											<span class="custom-control-label">
												<a href="#" class="text-dark">LLB<span class="label label-secondary float-right">12</span></a>
											</span>
										</label>
                            <label class="custom-control custom-checkbox mb-3">
											<asp:CheckBox class="custom-control-input" name="checkbox7" value="option3" runat="server"/>
											<span class="custom-control-label">
												<a href="#" class="text-dark">LLM<span class="label label-secondary float-right">18</span></a>
											</span>
										</label>
                            <label class="custom-control custom-checkbox mb-3">
											<asp:CheckBox class="custom-control-input" name="checkbox7" value="option3" runat="server"/>
											<span class="custom-control-label">
												<a href="#" class="text-dark">MA<span class="label label-secondary float-right">02</span></a>
											</span>
										</label>
                            <label class="custom-control custom-checkbox mb-3">
											<asp:CheckBox class="custom-control-input" name="checkbox7" value="option3" runat="server"/>
											<span class="custom-control-label">
												<a href="#" class="text-dark">MBA<span class="label label-secondary float-right">15</span></a>
											</span>
										</label>
                            <label class="custom-control custom-checkbox mb-3">
											<asp:CheckBox class="custom-control-input" name="checkbox7" value="option3" runat="server"/>
											<span class="custom-control-label">
												<a href="#" class="text-dark">M.Com<span class="label label-secondary float-right">32</span></a>
											</span>
										</label>
                            <label class="custom-control custom-checkbox mb-3">
											<asp:CheckBox class="custom-control-input" name="checkbox7" value="option3" runat="server"/>
											<span class="custom-control-label">
												<a href="#" class="text-dark">MCA<span class="label label-secondary float-right">23</span></a>
											</span>
										</label>
                            <label class="custom-control custom-checkbox mb-3">
											<asp:CheckBox class="custom-control-input" name="checkbox7" value="option3" runat="server"/>
											<span class="custom-control-label">
												<a href="#" class="text-dark">M.Sc <span class="label label-secondary float-right">19</span></a>
											</span>
										</label>
                            <label class="custom-control custom-checkbox mb-3">
											<asp:CheckBox class="custom-control-input" name="checkbox7" value="option3" runat="server"/>
											<span class="custom-control-label">
												<a href="#" class="text-dark">M.Tech<span class="label label-secondary float-right">12</span></a>
											</span>
										</label>
                            <label class="custom-control custom-checkbox mb-3">
											<asp:CheckBox class="custom-control-input" name="checkbox7" value="option3" runat="server"/>
											<span class="custom-control-label">
												<a href="#" class="text-dark">M.Tec<span class="label label-secondary float-right">05</span></a>
											</span>
										</label>
                        </div>
                    </div>
                </div>
                <div class="px-4 py-3 border-bottom border-top">
                    <h4 class="mb-0">Price Range</h4>
                </div>
                <div class="card-body">
                    <div class="h6">
                        <asp:TextBox id="price" runat="server"/>
                    </div>
                    <div id="mySlider"></div>
                </div>
                <div class="px-4 py-3 border-bottom">
                    <h4 class="mb-0">Location</h4>
                </div>
                <div class="card-body">
                    <div class="filter-product-checkboxs">
                        <label class="custom-control custom-checkbox mb-2">
										<asp:CheckBox class="custom-control-input" name="checkbox2" value="option0" runat="server"/>
										<span class="custom-control-label">
											Dubai
										</span>
									</label>

                        <label class="custom-control custom-checkbox mb-2">
										<asp:CheckBox class="custom-control-input" name="checkbox1" value="option1" runat="server"/>
										<span class="custom-control-label">
											Abu Dhabi
										</span>
									</label>
                        <label class="custom-control custom-checkbox mb-2">
										<asp:CheckBox class="custom-control-input" name="checkbox2" value="option2" runat="server"/>
										<span class="custom-control-label">
											Sharjah
										</span>
									</label>
                        <label class="custom-control custom-checkbox mb-2">
										<asp:CheckBox class="custom-control-input" name="checkbox3" value="option3" runat="server"/>
										<span class="custom-control-label">
											Ajman
										</span>
									</label>
                    </div>
                </div>
                <div class="px-4 py-3 border-bottom border-top">
                    <h4 class="mb-0">Year of Graduation</h4>
                </div>
                <div class="card-body">
                    <div class="row">
                        <div class="form-group col-md-6 mb-0">
                            <label for="inputState1" class="col-form-label">Graduated by</label>
                            <asp:DropDownList id="inputState1" class="form-control select2" runat="server">
											<asp:ListItem option="0">2022</asp:ListItem>
											<asp:ListItem option="1">2023</asp:ListItem>
											<asp:ListItem option="3">2024</asp:ListItem>
											<asp:ListItem option="4">2025</asp:ListItem>
											<asp:ListItem option="5">2026</asp:ListItem>
											<asp:ListItem option="6">2027</asp:ListItem>
											<asp:ListItem option="7">2028</asp:ListItem>
											<asp:ListItem option="8">2029</asp:ListItem>
										</asp:DropDownList>
                        </div>
                       
                    </div>
                </div>
                <div class="px-4 py-3 border-bottom border-top">
                    <h4 class="mb-0">Qualification</h4>
                </div>
                <div class="card-body">
                    <div class="filter-product-checkboxs">
                        <label class="custom-control custom-checkbox mb-2">
										<asp:CheckBox class="custom-control-input" name="checkbox1" value="option1" runat="server"/>
										<span class="custom-control-label">
											CBSE 10th Grade/Equivalent
										</span>
									</label>
                        <label class="custom-control custom-checkbox mb-2">
										<asp:CheckBox class="custom-control-input" name="checkbox2" value="option2" runat="server"/>
										<span class="custom-control-label">
											CBSE 12th Grade/Equivalent
										</span>
									</label>
                        <label class="custom-control custom-checkbox mb-0">
										<asp:CheckBox class="custom-control-input" name="checkbox2" value="option3" runat="server"/>
										<span class="custom-control-label">
											None
										</span>
									</label>
                    </div>
                </div>
                <div class="card-footer">
                    <a href="#" class="btn btn-secondary btn-block">Apply Filter</a>
                </div>
            </div>
          
        </div>
        <!--/Right Side Content-->
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