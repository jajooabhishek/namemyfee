<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="user_profile.aspx.cs" Inherits="NameMyFee.user_profile" %>

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
    <title>Student Dashboard</title>

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

</head>

<body>

    <!--Loader-->
    <div id="global-loader">
        <asp:Image src="../assets/images/loader.svg" class="loader-img " alt="" runat="server"/>
    </div>

    <!--Topbar-->
    <div class="header-main">
        <div class="top-bar">
            <div class="container">
                <div class="row">
                    
                </div>
            </div>
        </div>

        <!-- Horizontal Header -->
        <div class="horizontal-header clearfix ">
            <div class="container">
                <a id="horizontal-navtoggle" class="animated-arrow"><span></span></a>
                <span class="smllogo"><asp:Image src="../assets/images/logo1.png" width="120" alt="" runat="server"/></span>
                <a href="tel:245-6325-3256" class="callusbtn"><i class="fa fa-phone" aria-hidden="true"></i></a>
            </div>
        </div>
        <!-- /Horizontal Header -->

        <!-- Horizontal Main -->
        <div class="horizontal-main bg-dark-transparent clearfix">
            <div class="horizontal-mainwrapper container clearfix">
                <div class="desktoplogo">
                    <a href="index.html"><asp:Image src="../assets/images/logo1.png" alt="" runat="server"/></a>
                </div>
                <div class="desktoplogo-1">
                    <a href="index.html"><asp:Image src="../assets/images/logo2.png" alt="" runat="server"/></a>
                </div>
                <!--Nav-->
                <nav class="horizontalMenu clearfix d-md-flex">
                    <ul class="horizontalMenu-list">
                        <li aria-haspopup="true"><a href="admin_panel.aspx">Home </a>
                            
                        </li>
                        
                    </ul>
                </nav>
                <!--Nav-->
            </div>
        </div>
        <!-- /Horizontal Main -->
    </div>
    <!--/Topbar-->

    <!--Section-->
    <div>
        <div class="cover-image sptb-1 bg-background" data-image-src="../assets/images/banners/banner1.jpg">
            <div class="header-text1 mb-0">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-10 col-lg-12 col-md-12 d-block mx-auto">
                            <div class="text-center text-white ">
                                <h1 class=""><span class="font-weight-bold">University Profile</h1>
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
                <h4 class="page-title">University Profile</h4>
            
            </div>
        </div>
    </div>

    <form runat="server">
    <!--User Profile-->
    <section class="sptb">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body pattern-1">
                            <div class="wideget-user">
                                <div class="row">
                                    <div class="col-lg-12 col-md-12">
                                        <div class="wideget-user-desc text-center">
                                            <div class="wideget-user-img">
                                                <asp:Image class="brround" src="../assets/images/users/male/25.jpg" alt="img" runat="server"/>
                                            </div>
                                            <div class="user-wrap wideget-user-info">
                                                <a href="#" class="text-white">
                                                    <h4 class="font-weight-semibold"><asp:Label ID="Label1" runat="server"></asp:Label></h4>
                                                    
                                                </a>

                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-12 col-md-12 text-center">
                                        <div class="wideget-user-info ">

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="card-footer">
                            <div class="wideget-user-tab">
                                <div class="tab-menu-heading">
                                    <div class="tabs-menu1">
                                        <ul class="nav">
                                            <li class=""><a href="#tab-5" class="active" data-toggle="tab">Profile</a></li>
                                            <li><a href="#tab-6" data-toggle="tab" class="">Edit Profile</a></li>
                                            <li><a href="#tab-7" data-toggle="tab" class="">University Managers <span class="badge badge-primary badge-pill">20</span></a></li>

                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="card mb-0">
                        <div class="card-body">
                            <div class="border-0">
                                <div class="tab-content">
                                    <div class="tab-pane active" id="tab-5">
                                        <div class="profile-log-switch">
                                            <div class="media-heading">
                                                <h3 class="card-title mb-3 font-weight-bold">Personal Details</h3>
                                            </div>
                                            <ul class="usertab-list mb-0">
                                                <li><span class="font-weight-semibold">Full Name :</span> <asp:Label ID="Label2" runat="server"></asp:Label></li>
                                                <li><span class="font-weight-semibold">Location :</span> <asp:Label ID="Label4" runat="server"></asp:Label></li>
                                                <li><span class="font-weight-semibold">Website :</span><asp:Label ID="Label6" runat="server"></asp:Label></li>
                                                <li><span class="font-weight-semibold">Email :</span> <asp:Label ID="Label7" runat="server"></asp:Label></li>
                                                <li><span class="font-weight-semibold">Phone :</span><asp:Label ID="Label8" runat="server"></asp:Label></li>
                                            </ul>

                                            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Accept" CssClass="btn btn-primary btn-lg text-white card-mar" />
                                            <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Reject" CssClass="btn btn-primary btn-lg text-white card-mar" />
                                            <div class="row profie-img">

                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane" id="tab-6">
                                        <div class="row">
                                            <div class="col-sm-6 col-md-6">
                                                <div class="form-group">
                                                    <label class="form-label">First Name</label>
                                                    <input type="text" class="form-control" placeholder="First Name">
                                                </div>
                                            </div>
                                            <div class="col-sm-6 col-md-6">
                                                <div class="form-group">
                                                    <label class="form-label">Last Name</label>
                                                    <input type="text" class="form-control" placeholder="Last Name">
                                                </div>
                                            </div>
                                            <div class="col-sm-6 col-md-6">
                                                <div class="form-group">
                                                    <label class="form-label">Email address</label>
                                                    <input type="email" class="form-control" placeholder="Email">
                                                </div>
                                            </div>
                                            <div class="col-sm-6 col-md-6">
                                                <div class="form-group">
                                                    <label class="form-label">Phone Number</label>
                                                    <input type="number" class="form-control" placeholder="Number">
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <label class="form-label">Address</label>
                                                    <input type="text" class="form-control" placeholder="Vehicle Address">
                                                </div>
                                            </div>
                                            <div class="col-sm-6 col-md-4">
                                                <div class="form-group">
                                                    <label class="form-label">City</label>
                                                    <input type="text" class="form-control" placeholder="City">
                                                </div>
                                            </div>
                                            <div class="col-sm-6 col-md-3">
                                                <div class="form-group">
                                                    <label class="form-label">Postal Code</label>
                                                    <input type="number" class="form-control" placeholder="ZIP Code">
                                                </div>
                                            </div>
                                            <div class="col-md-5">
                                                <div class="form-group">
                                                    <label class="form-label">Country</label>
                                                    <select class="form-control select2-show-search border-bottom-0 w-100 select2-show-search" data-placeholder="Select">
															<optgroup label="Categories">
																<option>--Select--</option>
																<option value="1">Germany</option>
																<option value="2">Randolph Barre</option>
																<option value="3">Canada</option>
																<option value="4">Usa</option>
																<option value="5">Afghanistan</option>
																<option value="6">Albania</option>
																<option value="7">China</option>
																<option value="8">Denmark</option>
																<option value="9">Finland</option>
																<option value="10">India</option>
																<option value="11">Kiribati</option>
																<option value="12">Kuwait</option>
																<option value="13">Mexico</option>
																<option value="14">Pakistan</option>
															</optgroup>
														</select>
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <label class="form-label">About Me</label>
                                                    <textarea rows="5" class="form-control" placeholder="Enter About your description"></textarea>
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <label class="form-label">Upload Image</label>
                                                    <div class="custom-file">
                                                        <input type="file" class="custom-file-input" name="example-file-input-custom">
                                                        <label class="custom-file-label">Choose file</label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <button type="submit" class="btn btn-primary">Update Profile</button>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane userprof-tab" id="tab-7">
                                        <div class="input-group mar-uni-man-add-man">
                                            <input type="text" class="form-control br-tl-3  br-bl-3" placeholder="Email Address">
                                            <div class="input-group-append ">
                                               
                                                <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/add_managers.aspx" CssClass='class="btn btn-primary br-tr-3  br-br-3"'>Add Manager</asp:LinkButton>
                                            </div>
                                        </div>
                                        <div class="table-responsive border-top">
                                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString %>"></asp:SqlDataSource>
                                                <asp:GridView class="table table-bordered table-hover text-nowrap" Border="0" ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1">
                                                    <Columns>
                            <asp:TemplateField HeaderText="Name">  
                    <ItemTemplate>  
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("admin_name") %>'></asp:Label>  
                    </ItemTemplate>  
                </asp:TemplateField>
                           
                            <asp:TemplateField HeaderText="University Name">  
                    <ItemTemplate>  
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("name") %>'></asp:Label>  
                    </ItemTemplate>  
                </asp:TemplateField>
                           
                            <asp:TemplateField HeaderText="Department">  
                    <ItemTemplate>  
                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("department") %>'></asp:Label>  
                    </ItemTemplate>  
                </asp:TemplateField>
                                                        
                        <asp:TemplateField HeaderText="View Applications">  
                    
                    <ItemTemplate>  
                        <asp:LinkButton ID="LinkButton1" runat="server" data-toggle="tooltip" data-original-title="Edit" CssClass="btn btn-success btn-sm text-white" PostBackUrl="add_program.aspx"><i class="fa fa-pencil"></i></asp:LinkButton>
                        <asp:LinkButton ID="LinkButton2" runat="server" data-toggle="tooltip" data-original-title="View" CssClass="btn btn-primary btn-sm text-white"><i class="fa fa-eye"></i></asp:LinkButton>
                    </ItemTemplate>  
                </asp:TemplateField> 
                             
    </Columns>
                                                </asp:GridView>
                                        </div>
                                    </div>
                                    <div class="tab-pane userprof-tab" id="tab-8">
                                        <div class="table-responsive border-top">
                                            <table class="table table-bordered table-hover mb-0 text-nowrap">
                                                <thead>
                                                    <tr>
                                                        <th></th>
                                                        <th>Item</th>
                                                        <th>Category</th>
                                                        <th>Price</th>
                                                        <th>Ad Status</th>
                                                        <th>Action</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td>
                                                            <label class="custom-control custom-checkbox">
																	<asp:CheckBox class="custom-control-input" name="checkbox" value="checkbox" runat="server"/>
																	<span class="custom-control-label"></span>
																</label>
                                                        </td>
                                                        <td>
                                                            <div class="media mt-0 mb-0">
                                                                <div class="card-aside-img">
                                                                    <a href="#"></a>
                                                                    <asp:Image src="../assets/images/media/j1.png" alt="img" runat="server"/>
                                                                </div>
                                                                <div class="media-body">
                                                                    <div class="card-item-desc ml-4 p-0 mt-2">
                                                                        <a href="#" class="text-dark">
                                                                            <h4 class="font-weight-semibold">Champlain </h4>
                                                                        </a>
                                                                        <a href="#"><i class="fa fa-clock-o mr-1"></i> Nov-22-2019 , 9:18</a><br>
                                                                        <a href="#"><i class="fa fa-tag mr-1"></i> Offer</a>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </td>
                                                        <td>Vehicles</td>
                                                        <td class="font-weight-semibold fs-16">$14,000</td>
                                                        <td>
                                                            <a href="#" class="badge badge-primary">Offer</a>
                                                        </td>
                                                        <td>
                                                            <a class="btn btn-success btn-sm text-white" data-toggle="tooltip" data-original-title="Edit"><i class="fa fa-pencil"></i></a>
                                                            <a class="btn btn-danger btn-sm text-white" data-toggle="tooltip" data-original-title="Delete"><i class="fa fa-trash-o"></i></a>
                                                            <a class="btn btn-info btn-sm text-white" data-toggle="tooltip" data-original-title="Save to Wishlist"><i class="fa fa-heart-o"></i></a>
                                                            <a class="btn btn-primary btn-sm text-white" data-toggle="tooltip" data-original-title="View"><i class="fa fa-eye"></i></a>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <label class="custom-control custom-checkbox">
																	<asp:CheckBox class="custom-control-input" name="checkbox" value="checkbox" runat="server"/>
																	<span class="custom-control-label"></span>
																</label>
                                                        </td>
                                                        <td>
                                                            <div class="media mt-0 mb-0">
                                                                <div class="card-aside-img">
                                                                    <a href="#"></a>
                                                                    <asp:Image src="../assets/images/media/h2.png" alt="img" runat="server"/>
                                                                </div>
                                                                <div class="media-body">
                                                                    <div class="card-item-desc ml-4 p-0 mt-2">
                                                                        <a href="#" class="text-dark">
                                                                            <h4 class="font-weight-semibold">CrusaderRecusandae</h4>
                                                                        </a>
                                                                        <a href="#"><i class="fa fa-clock-o mr-1"></i> Nov-15-2019 , 12:45</a><br>
                                                                        <a href="#"><i class="fa fa-tag mr-1"></i> Offer</a>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </td>
                                                        <td>Vehicle</td>
                                                        <td class="font-weight-semibold fs-16">$22,765</td>
                                                        <td>
                                                            <a href="#" class="badge badge-primary">Offer</a>
                                                        </td>
                                                        <td>
                                                            <a class="btn btn-success btn-sm text-white" data-toggle="tooltip" data-original-title="Edit"><i class="fa fa-pencil"></i></a>
                                                            <a class="btn btn-danger btn-sm text-white" data-toggle="tooltip" data-original-title="Delete"><i class="fa fa-trash-o"></i></a>
                                                            <a class="btn btn-info btn-sm text-white" data-toggle="tooltip" data-original-title="Save to Wishlist"><i class="fa fa-heart-o"></i></a>
                                                            <a class="btn btn-primary btn-sm text-white" data-toggle="tooltip" data-original-title="View"><i class="fa fa-eye"></i></a>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <label class="custom-control custom-checkbox">
																	<asp:CheckBox class="custom-control-input" name="checkbox" value="checkbox" runat="server"/>
																	<span class="custom-control-label"></span>
																</label>
                                                        </td>
                                                        <td>
                                                            <div class="media mt-0 mb-0">
                                                                <div class="card-aside-img">
                                                                    <a href="#"></a>
                                                                    <asp:Image src="../assets/images/media/v1.png" alt="img" runat="server"/>
                                                                </div>
                                                                <div class="media-body">
                                                                    <div class="card-item-desc ml-4 p-0 mt-2">
                                                                        <a href="#" class="text-dark">
                                                                            <h4 class="font-weight-semibold">Crusader Sapiente 2065</h4>
                                                                        </a>
                                                                        <a href="#"><i class="fa fa-clock-o mr-1"></i> Nov-12-2019 , 16:50</a><br>
                                                                        <a href="#"><i class="fa fa-tag mr-1"></i> Used</a>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </td>
                                                        <td>Caledonia</td>
                                                        <td class="font-weight-semibold fs-16">$35,978</td>
                                                        <td>
                                                            <a href="#" class="badge badge-primary">Offer</a>
                                                        </td>
                                                        <td>
                                                            <a class="btn btn-success btn-sm text-white" data-toggle="tooltip" data-original-title="Edit"><i class="fa fa-pencil"></i></a>
                                                            <a class="btn btn-danger btn-sm text-white" data-toggle="tooltip" data-original-title="Delete"><i class="fa fa-trash-o"></i></a>
                                                            <a class="btn btn-info btn-sm text-white" data-toggle="tooltip" data-original-title="Save to Wishlist"><i class="fa fa-heart-o"></i></a>
                                                            <a class="btn btn-primary btn-sm text-white" data-toggle="tooltip" data-original-title="View"><i class="fa fa-eye"></i></a>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <label class="custom-control custom-checkbox">
																	<asp:CheckBox class="custom-control-input" name="checkbox" value="checkbox">
																	<span class="custom-control-label"></span>
																</label>
                                                        </td>
                                                        <td>
                                                            <div class="media mt-0 mb-0">
                                                                <div class="card-aside-img">
                                                                    <a href="#"></a>
                                                                    <asp:Image src="../assets/images/media/f1.png" alt="img" runat="server"/>
                                                                </div>
                                                                <div class="media-body">
                                                                    <div class="card-item-desc ml-4 p-0 mt-2">
                                                                        <a href="#" class="text-dark">
                                                                            <h4 class="font-weight-semibold">Shrinking Moco</h4>
                                                                        </a>
                                                                        <a href="#"><i class="fa fa-clock-o mr-1"></i> Nov-15-2019 , 08:54</a><br>
                                                                        <a href="#"><i class="fa fa-tag mr-1"></i> Offer</a>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </td>
                                                        <td>Vehicles</td>
                                                        <td class="font-weight-semibold fs-16">$89</td>
                                                        <td>
                                                            <a href="#" class="badge badge-primary">Offer</a>
                                                        </td>
                                                        <td>
                                                            <a class="btn btn-success btn-sm text-white" data-toggle="tooltip" data-original-title="Edit"><i class="fa fa-pencil"></i></a>
                                                            <a class="btn btn-danger btn-sm text-white" data-toggle="tooltip" data-original-title="Delete"><i class="fa fa-trash-o"></i></a>
                                                            <a class="btn btn-info btn-sm text-white" data-toggle="tooltip" data-original-title="Save to Wishlist"><i class="fa fa-heart-o"></i></a>
                                                            <a class="btn btn-primary btn-sm text-white" data-toggle="tooltip" data-original-title="View"><i class="fa fa-eye"></i></a>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <label class="custom-control custom-checkbox">
																	<asp:CheckBox class="custom-control-input" name="checkbox" value="checkbox" runat:server/>
																	<span class="custom-control-label"></span>
																</label>
                                                        </td>
                                                        <td>
                                                            <div class="media mt-0 mb-0">
                                                                <div class="card-aside-img">
                                                                    <a href="#"></a>
                                                                    <asp:Image src="../assets/images/media/j1.png" alt="img" runat="server"/>
                                                                </div>
                                                                <div class="media-body">
                                                                    <div class="card-item-desc ml-4 p-0 mt-2">
                                                                        <a href="#" class="text-dark">
                                                                            <h4 class="font-weight-semibold">Trailblazer</h4>
                                                                        </a>
                                                                        <a href="#"><i class="fa fa-clock-o mr-1"></i> Nov-14-2019 , 19:18</a><br>
                                                                        <a href="#"><i class="fa fa-tag mr-1"></i> Offer</a>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </td>
                                                        <td>Vehicles</td>
                                                        <td class="font-weight-semibold fs-16">$14,000</td>
                                                        <td>
                                                            <a href="#" class="badge badge-primary">Offer</a>
                                                        </td>
                                                        <td>
                                                            <a class="btn btn-success btn-sm text-white" data-toggle="tooltip" data-original-title="Edit"><i class="fa fa-pencil"></i></a>
                                                            <a class="btn btn-danger btn-sm text-white" data-toggle="tooltip" data-original-title="Delete"><i class="fa fa-trash-o"></i></a>
                                                            <a class="btn btn-info btn-sm text-white" data-toggle="tooltip" data-original-title="Save to Wishlist"><i class="fa fa-heart-o"></i></a>
                                                            <a class="btn btn-primary btn-sm text-white" data-toggle="tooltip" data-original-title="View"><i class="fa fa-eye"></i></a>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                    <div class="tab-pane userprof-tab" id="tab-9">
                                        <div class="table-responsive border-top">
                                            <table class="table table-bordered table-hover mb-0 text-nowrap">
                                                <thead>
                                                    <tr>
                                                        <th></th>
                                                        <th>Item</th>
                                                        <th>Category</th>
                                                        <th>Price</th>
                                                        <th>Ad Status</th>
                                                        <th>Action</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td>
                                                            <label class="custom-control custom-checkbox">
																	<asp:CheckBox class="custom-control-input" name="checkbox" value="checkbox" runat="server"/>
																	<span class="custom-control-label"></span>
																</label>
                                                        </td>
                                                        <td>
                                                            <div class="media mt-0 mb-0">
                                                                <div class="card-aside-img">
                                                                    <a href="#"></a>
                                                                    <asp:Image src="../assets/images/media/h1.png" alt="img" runat="server"/>
                                                                </div>
                                                                <div class="media-body">
                                                                    <div class="card-item-desc ml-4 p-0 mt-2">
                                                                        <a href="#" class="text-dark">
                                                                            <h4 class="font-weight-semibold">Millenium</h4>
                                                                        </a>
                                                                        <a href="#"><i class="fa fa-clock-o mr-1"></i> Feb-21-2019 , 16:54</a><br>
                                                                        <a href="#"><i class="fa fa-tag mr-1"></i>sale</a>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </td>
                                                        <td>CrusaderRecusandae</td>
                                                        <td class="font-weight-semibold fs-16">$54</td>
                                                        <td>
                                                            <a href="#" class="badge badge-warning">Published</a>
                                                        </td>
                                                        <td>
                                                            <a class="btn btn-success btn-sm text-white" data-toggle="tooltip" data-original-title="Edit"><i class="fa fa-pencil"></i></a>
                                                            <a class="btn btn-danger btn-sm text-white" data-toggle="tooltip" data-original-title="Delete"><i class="fa fa-trash-o"></i></a>
                                                            <a class="btn btn-info btn-sm text-white" data-toggle="tooltip" data-original-title="Save to Wishlist"><i class="fa fa-heart-o"></i></a>
                                                            <a class="btn btn-primary btn-sm text-white" data-toggle="tooltip" data-original-title="View"><i class="fa fa-eye"></i></a>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <label class="custom-control custom-checkbox">
																	<asp:CheckBox class="custom-control-input" name="checkbox" value="checkbox" runat="server"/>
																	<span class="custom-control-label"></span>
																</label>
                                                        </td>
                                                        <td>
                                                            <div class="media mt-0 mb-0">
                                                                <div class="card-aside-img">
                                                                    <a href="#"></a>
                                                                    <asp:Image src="../assets/images/media/j2.png" alt="img" runat="server"/>
                                                                </div>
                                                                <div class="media-body">
                                                                    <div class="card-item-desc ml-4 p-0 mt-2">
                                                                        <a href="#" class="text-dark">
                                                                            <h4 class="font-weight-semibold">Dignissimos i20</h4>
                                                                        </a>
                                                                        <a href="#"><i class="fa fa-clock-o mr-1"></i> Oct-23-2019 , 9:18</a><br>
                                                                        <a href="#"><i class="fa fa-tag mr-1"></i> Offer</a>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </td>
                                                        <td>Vehicles</td>
                                                        <td class="font-weight-semibold fs-16">$156</td>
                                                        <td>
                                                            <a href="#" class="badge badge-warning">Published</a>
                                                        </td>
                                                        <td>
                                                            <a class="btn btn-success btn-sm text-white" data-toggle="tooltip" data-original-title="Edit"><i class="fa fa-pencil"></i></a>
                                                            <a class="btn btn-danger btn-sm text-white" data-toggle="tooltip" data-original-title="Delete"><i class="fa fa-trash-o"></i></a>
                                                            <a class="btn btn-info btn-sm text-white" data-toggle="tooltip" data-original-title="Save to Wishlist"><i class="fa fa-heart-o"></i></a>
                                                            <a class="btn btn-primary btn-sm text-white" data-toggle="tooltip" data-original-title="View"><i class="fa fa-eye"></i></a>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <label class="custom-control custom-checkbox">
																	<asp:CheckBox class="custom-control-input" name="checkbox" value="checkbox" runat="server"/>
																	<span class="custom-control-label"></span>
																</label>
                                                        </td>
                                                        <td>
                                                            <div class="media mt-0 mb-0">
                                                                <div class="card-aside-img">
                                                                    <a href="#"></a>
                                                                    <asp:Image src="../assets/images/media/l1.png" alt="img" runat="server"/>
                                                                </div>
                                                                <div class="media-body">
                                                                    <div class="card-item-desc ml-4 p-0 mt-2">
                                                                        <a href="#" class="text-dark">
                                                                            <h4 class="font-weight-semibold">Perspiciatis Fitta</h4>
                                                                        </a>
                                                                        <a href="#"><i class="fa fa-clock-o mr-1"></i> Feb-21-2019 , 16:54</a><br>
                                                                        <a href="#"><i class="fa fa-tag mr-1"></i>used</a>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </td>
                                                        <td>CrusaderRecusandae</td>
                                                        <td class="font-weight-semibold fs-16">$25</td>
                                                        <td>
                                                            <a href="#" class="badge badge-warning">Published</a>
                                                        </td>
                                                        <td>
                                                            <a class="btn btn-success btn-sm text-white" data-toggle="tooltip" data-original-title="Edit"><i class="fa fa-pencil"></i></a>
                                                            <a class="btn btn-danger btn-sm text-white" data-toggle="tooltip" data-original-title="Delete"><i class="fa fa-trash-o"></i></a>
                                                            <a class="btn btn-info btn-sm text-white" data-toggle="tooltip" data-original-title="Save to Wishlist"><i class="fa fa-heart-o"></i></a>
                                                            <a class="btn btn-primary btn-sm text-white" data-toggle="tooltip" data-original-title="View"><i class="fa fa-eye"></i></a>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <label class="custom-control custom-checkbox">
																	<asp:CheckBox class="custom-control-input" name="checkbox" value="checkbox" runat="server"/>
																	<span class="custom-control-label"></span>
																</label>
                                                        </td>
                                                        <td>
                                                            <div class="media mt-0 mb-0">
                                                                <div class="card-aside-img">
                                                                    <a href="#"></a>
                                                                    <asp:Image src="../assets/images/media/h4.jpg" alt="img" runat="server"/>
                                                                </div>
                                                                <div class="media-body">
                                                                    <div class="card-item-desc ml-4 p-0 mt-2">
                                                                        <a href="#" class="text-dark">
                                                                            <h4 class="font-weight-semibold">CrusaderRecusandae</h4>
                                                                        </a>
                                                                        <a href="#"><i class="fa fa-clock-o mr-1"></i>Dec-15-2019 , 12:45 pm</a><br>
                                                                        <a href="#"><i class="fa fa-tag mr-1"></i> sale</a>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </td>
                                                        <td>Vehicles</td>
                                                        <td class="font-weight-semibold fs-16">$22</td>
                                                        <td>
                                                            <a href="#" class="badge badge-warning">Published</a>
                                                        </td>
                                                        <td>
                                                            <a class="btn btn-success btn-sm text-white" data-toggle="tooltip" data-original-title="Edit"><i class="fa fa-pencil"></i></a>
                                                            <a class="btn btn-danger btn-sm text-white" data-toggle="tooltip" data-original-title="Delete"><i class="fa fa-trash-o"></i></a>
                                                            <a class="btn btn-info btn-sm text-white" data-toggle="tooltip" data-original-title="Save to Wishlist"><i class="fa fa-heart-o"></i></a>
                                                            <a class="btn btn-primary btn-sm text-white" data-toggle="tooltip" data-original-title="View"><i class="fa fa-eye"></i></a>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <label class="custom-control custom-checkbox">
																	<asp:CheckBox class="custom-control-input" name="checkbox" value="checkbox" runat="server"/>
																	<span class="custom-control-label"></span>
																</label>
                                                        </td>
                                                        <td>
                                                            <div class="media mt-0 mb-0">
                                                                <div class="card-aside-img">
                                                                    <a href="#"></a>
                                                                    <asp:Image src="../assets/images/media/v2.png" alt="img" runat="server"/>
                                                                </div>
                                                                <div class="media-body">
                                                                    <div class="card-item-desc ml-4 p-0 mt-2">
                                                                        <a href="#" class="text-dark">
                                                                            <h4 class="font-weight-semibold">Race Modal Car</h4>
                                                                        </a>
                                                                        <a href="#"><i class="fa fa-clock-o mr-1"></i> Dec-03-2019 , 16:45</a><br>
                                                                        <a href="#"><i class="fa fa-tag mr-1"></i> sale</a>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </td>
                                                        <td>Caledonia</td>
                                                        <td class="font-weight-semibold fs-16">$35,978</td>
                                                        <td>
                                                            <a href="#" class="badge badge-warning">Published</a>
                                                        </td>
                                                        <td>
                                                            <a class="btn btn-success btn-sm text-white" data-toggle="tooltip" data-original-title="Edit"><i class="fa fa-pencil"></i></a>
                                                            <a class="btn btn-danger btn-sm text-white" data-toggle="tooltip" data-original-title="Delete"><i class="fa fa-trash-o"></i></a>
                                                            <a class="btn btn-info btn-sm text-white" data-toggle="tooltip" data-original-title="Save to Wishlist"><i class="fa fa-heart-o"></i></a>
                                                            <a class="btn btn-primary btn-sm text-white" data-toggle="tooltip" data-original-title="View"><i class="fa fa-eye"></i></a>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <label class="custom-control custom-checkbox">
																	<asp:CheckBox class="custom-control-input" name="checkbox" value="checkbox" runat="server"/>
																	<span class="custom-control-label"></span>
																</label>
                                                        </td>
                                                        <td>
                                                            <div class="media mt-0 mb-0">
                                                                <div class="card-aside-img">
                                                                    <a href="#"></a>
                                                                    <asp:Image src="../assets/images/media/f3.png" alt="img" runat="server"/>
                                                                </div>
                                                                <div class="media-body">
                                                                    <div class="card-item-desc ml-4 p-0 mt-2">
                                                                        <a href="#" class="text-dark">
                                                                            <h4 class="font-weight-semibold">Eternity</h4>
                                                                        </a>
                                                                        <a href="#"><i class="fa fa-clock-o mr-1"></i> Nov-20-2019 , 16:54</a><br>
                                                                        <a href="#"><i class="fa fa-tag mr-1"></i> Offer</a>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </td>
                                                        <td>Vehicles</td>
                                                        <td class="font-weight-semibold fs-16">$129</td>
                                                        <td>
                                                            <a href="#" class="badge badge-warning">Published</a>
                                                        </td>
                                                        <td>
                                                            <a class="btn btn-success btn-sm text-white" data-toggle="tooltip" data-original-title="Edit"><i class="fa fa-pencil"></i></a>
                                                            <a class="btn btn-danger btn-sm text-white" data-toggle="tooltip" data-original-title="Delete"><i class="fa fa-trash-o"></i></a>
                                                            <a class="btn btn-info btn-sm text-white" data-toggle="tooltip" data-original-title="Save to Wishlist"><i class="fa fa-heart-o"></i></a>
                                                            <a class="btn btn-primary btn-sm text-white" data-toggle="tooltip" data-original-title="View"><i class="fa fa-eye"></i></a>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <label class="custom-control custom-checkbox">
																	<asp:CheckBox class="custom-control-input" name="checkbox" value="checkbox" runat="server"/>
																	<span class="custom-control-label"></span>
																</label>
                                                        </td>
                                                        <td>
                                                            <div class="media mt-0 mb-0">
                                                                <div class="card-aside-img">
                                                                    <a href="#"></a>
                                                                    <asp:Image src="../assets/images/media/j3.png" alt="img" runat="server"/>
                                                                </div>
                                                                <div class="media-body">
                                                                    <div class="card-item-desc ml-4 p-0 mt-2">
                                                                        <a href="#" class="text-dark">
                                                                            <h4 class="font-weight-semibold">Shrinking Moco</h4>
                                                                        </a>
                                                                        <a href="#"><i class="fa fa-clock-o mr-1"></i> Sep-22-2019 , 9:18 </a><br>
                                                                        <a href="#"><i class="fa fa-tag mr-1"></i> Offer</a>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </td>
                                                        <td>Vehicles</td>
                                                        <td class="font-weight-semibold fs-16">$235</td>
                                                        <td>
                                                            <a href="#" class="badge badge-warning">Published</a>
                                                        </td>
                                                        <td>
                                                            <a class="btn btn-success btn-sm text-white" data-toggle="tooltip" data-original-title="Edit"><i class="fa fa-pencil"></i></a>
                                                            <a class="btn btn-danger btn-sm text-white" data-toggle="tooltip" data-original-title="Delete"><i class="fa fa-trash-o"></i></a>
                                                            <a class="btn btn-info btn-sm text-white" data-toggle="tooltip" data-original-title="Save to Wishlist"><i class="fa fa-heart-o"></i></a>
                                                            <a class="btn btn-primary btn-sm text-white" data-toggle="tooltip" data-original-title="View"><i class="fa fa-eye"></i></a>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <label class="custom-control custom-checkbox">
																	<asp:CheckBox class="custom-control-input" name="checkbox" value="checkbox" runat="server"/>
																	<span class="custom-control-label"></span>
																</label>
                                                        </td>
                                                        <td>
                                                            <div class="media mt-0 mb-0">
                                                                <div class="card-aside-img">
                                                                    <a href="#"></a>
                                                                    <asp:Image src="../assets/images/media/h3.png" alt="img" runat="server"/>
                                                                </div>
                                                                <div class="media-body">
                                                                    <div class="card-item-desc ml-4 p-0 mt-2">
                                                                        <a href="#" class="text-dark">
                                                                            <h4 class="font-weight-semibold">Exercitationem </h4>
                                                                        </a>
                                                                        <a href="#"><i class="fa fa-clock-o mr-1"></i> Dec-21-2019 , 19:45</a><br>
                                                                        <a href="#"><i class="fa fa-tag mr-1"></i> Offer</a>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </td>
                                                        <td>Vehicle</td>
                                                        <td class="font-weight-semibold fs-16">$765</td>
                                                        <td>
                                                            <a href="#" class="badge badge-warning">Published</a>
                                                        </td>
                                                        <td>
                                                            <a class="btn btn-success btn-sm text-white" data-toggle="tooltip" data-original-title="Edit"><i class="fa fa-pencil"></i></a>
                                                            <a class="btn btn-danger btn-sm text-white" data-toggle="tooltip" data-original-title="Delete"><i class="fa fa-trash-o"></i></a>
                                                            <a class="btn btn-info btn-sm text-white" data-toggle="tooltip" data-original-title="Save to Wishlist"><i class="fa fa-heart-o"></i></a>
                                                            <a class="btn btn-primary btn-sm text-white" data-toggle="tooltip" data-original-title="View"><i class="fa fa-eye"></i></a>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
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
    <!--/User Profile-->
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