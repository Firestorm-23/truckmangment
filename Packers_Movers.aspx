<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Packers_Movers.aspx.cs" Inherits="TruckManagementSystem.Packers_Movers" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Transport Management System</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="keywords" content="">
    <meta name="author" content="Free-Template.co">
    <link rel="shortcut icon" href="ftco-32x32.png">
    <link href="https://fonts.googleapis.com/css2?family=Manrope:wght@200;300;400;500;600;700;800&amp;display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.9/css/all.css" integrity="sha384-5SOiIsAziJl6AWe0HWRKTXlfcSHKmYV4RBF18PPJ173Kzn7jzMyFuTtk8JA7QQG1" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
    <link rel="shortcut icon" href="https://app.trucknetic.com/images/trucknetic-logo-favicon.png">

    <link rel="stylesheet" type="text/css" href="https://app.trucknetic.com/css/style.css">

    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-select@1.13.14/dist/css/bootstrap-select.min.css">

    <!-----Toastr----->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/2.1.0/css/toastr.css" rel="stylesheet">

    <link href="https://fonts.googleapis.com/css?family=Rubik:300,400,700|Oswald:400,700" rel="stylesheet">

    <link rel="stylesheet" href="fonts/icomoon/style.css">

    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/jquery.fancybox.min.css">
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="fonts/flaticon/font/flaticon.css">
    <link rel="stylesheet" href="css/aos.css">

    <!-- MAIN CSS -->
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <form id="form1" runat="server">
        <div id="overlayer" style="display: none;"></div>
        <div class="loader" style="display: none;">
            <div class="spinner-border text-primary" role="status">
                <span class="sr-only">Loading...</span>
            </div>
        </div>

        <div class="site-wrap" id="home-section">

            <div class="site-mobile-menu site-navbar-target">
                <div class="site-mobile-menu-header">
                    <div class="site-mobile-menu-close mt-3">
                        <span class="icon-close2 js-menu-toggle"></span>
                    </div>
                </div>
                <div class="site-mobile-menu-body">
                    <ul class="site-nav-wrap">
                        <li><a href="#home-section" class="nav-link">Home</a></li>
                        <li><a href="#services-section" class="nav-link active">Services</a></li>
                    </ul>
                </div>
            </div>


            <div class="top-bar">
                <div class="container">
                    <div class="row">
                        <div class="col-12">
                            <a href="#" class=""><span class="mr-2  icon-envelope-open-o"></span><span class="d-none d-md-inline-block" style="margin-top: 20px;">Trucky@gmail.com</span></a>
                            <span class="mx-md-2 d-inline-block"></span>
                            <a href="#" class=""><span class="mr-2  icon-phone"></span><span class="d-none d-md-inline-block">+91 9768354421</span></a>


                            <div class="float-right">

                                <a href="#" class=""><span class="mr-2  icon-twitter"></span><span class="d-none d-md-inline-block">Twitter</span></a>
                                <span class="mx-md-2 d-inline-block"></span>
                                <a href="#" class=""><span class="mr-2  icon-facebook"></span><span class="d-none d-md-inline-block">Facebook</span></a>

                            </div>

                        </div>

                    </div>

                </div>
            </div>

            <div id="sticky-wrapper" class="sticky-wrapper is-sticky" style="height: 6.1875px;">
                <header class="site-navbar js-sticky-header site-navbar-target shrink" role="banner" style="width: 1343px; position: fixed; top: 0px; z-index: inherit;">

                    <div class="container">
                        <div class="row align-items-center position-relative">
                            <div class="site-logo" style="margin-top: 26px;">
                                <a href="HomePage.aspx" class="text-black"><span class="text-primary">Trucky</span></a>
                            </div>

                        </div>
                    </div>
                </header>
            </div>
            <div class="mian-content-block" style="width: 700px; margin: auto; width: 60%; border: 3px solid #73AD21; padding: 10px; border-radius: 16px">

                <div class="selector">
                    <!--Commodity Button start here-->
                    <div class="selecotr-item">
                        <input type="radio" name="bedStatus" id="radio1" class="selector-item_radio" checked="">
                        <label for="radio1" class="selector-item_label">Commodity Trucks</label>
                    </div>
                    <!--Commodity Button end here-->

                    <!--Packers & Movers Button start here-->
                    <div class="selecotr-item">
                        <input type="radio" name="bedStatus" id="radio2" class="selector-item_radio">
                        <label for="radio2" class="selector-item_label m-0">Packers &amp; Movers</label>
                    </div>
                    <!--Packers & Movers Button end here-->
                </div>


                <!--Commodity Content start here-->
                <!--Commodity Content start here-->

                <div class="direction-form p-2 radio1 d-none">

                    <div style="display: none;" id="m1">

                        <!--Commodity Suggested Truck-->
                        <div class="avalable-trucks mt-5 ">
                            <div class="title">
                                <h2 class="suggtruck">Suggested Trucks</h2>
                            </div>
                            <div class="suggested-trucks-list suggest truckk "></div>
                            <div class="btx">
                                <a class="rm-btn show_all_commodity1_more d-none">Show more </a>
                                <a class="rm-btn  show_all_commodity1_less d-none">Show Less </a>
                            </div>
                        </div>

                        <!--Commodity More Truck-->
                        <div class="avalable-trucks mt-3 ">
                            <div class="title">
                                <h2 class="suggtruck1">More options </h2>
                            </div>
                            <div class="suggested-trucks-list suggest1 truckk">
                                <ul>
                                    <li class="trucktype" id="2QUSP7" onclick="mymodel(id)">
                                        <select class="open-close">
                                            <option value="1">Open
                                                 </option>
                                        </select>
                                        <a href="#">
                                            <span class="truck-icon">
                                                <img src="https://trucknetic-storage.s3.ap-south-1.amazonaws.com/F53UA4/TRUCKIMAGE/2QUSP7/truck-1.png?X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&amp;X-Amz-Algorithm=AWS4-HMAC-SHA256&amp;X-Amz-Credential=AKIAYTYERKIVDWWOHWTP%2F20250121%2Fap-south-1%2Fs3%2Faws4_request&amp;X-Amz-Date=20250121T071927Z&amp;X-Amz-SignedHeaders=host&amp;X-Amz-Expires=300&amp;X-Amz-Signature=f178426dc431551e36cc9f477f5f7377aef98462896b6b40288bb1cbbc51cd5a">
                                            </span>
                                            <span class="truck-detail">
                                                <h3>14 Tyre Truck</h3>
                                            </span>
                                        </a>
                                    </li>
                                    <li class="trucktype" id="7ESYYT" onclick="mymodel(id)">
                                        <select class="open-close">
                                            <option value="1">Open
                                                 </option>
                                        </select>
                                        <a href="#">
                                            <span class="truck-icon">
                                                <img src="https://trucknetic-storage.s3.ap-south-1.amazonaws.com/F53UA4/TRUCKIMAGE/7ESYYT/truck-1.png?X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&amp;X-Amz-Algorithm=AWS4-HMAC-SHA256&amp;X-Amz-Credential=AKIAYTYERKIVDWWOHWTP%2F20250121%2Fap-south-1%2Fs3%2Faws4_request&amp;X-Amz-Date=20250121T071927Z&amp;X-Amz-SignedHeaders=host&amp;X-Amz-Expires=300&amp;X-Amz-Signature=29f877934a51eebd55566983f2059fba6e2e282192eddc2a649a32566543091b">
                                            </span>
                                            <span class="truck-detail">
                                                <h3>10 Tyre Truck</h3>
                                            </span>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                            <div class="btx1">
                                <a class="rm-btn show_all_commodity_more">Show more </a>
                                <a class="rm-btn  show_all_commodity_less d-none">Show Less </a>
                            </div>
                        </div>
                    </div>

                    <div class="btn-grp ">
<%--                        <button class="f-btn con-btn btn btn-success disabled" style="border: none;" id="c1">
                            Continue
        
                        </button>--%>
                        <asp:Button ID="Getclick"  class="f-btn con-btn btn btn-success continue-btn" runat="server" Text="Continue" OnClick="G1_Click" />
                    </div>

                </div>
                <!--Commodity Content End here-->


                <!--Commodity Content End here-->

                <!--Packers & Movers Content start here-->
                <!--Packers & Movers Content start here-->
                <div class="direction-form p-2 radio2">
                    <form class="direction">
                        <div class="from-locaion">
                            <label>From</label>
                             <input type="number" style="padding: 9px;" class="form-control addfrom pac-target-input" name="from" id="from" autocomplete="off" required="" placeholder="Enter Pincode">
                        </div>

                        <div class="align-items-center justify-content-between tgle-btn mt-3 mb-3 slct-cmdy d-flex">
                            <div id="SelectionLabel">
                                <p>Is Lift available ?</p>
                            </div>
                            <div class="onoffswitch alertChanges">
                                <input type="checkbox" name="onoffswitch" class="onoffswitch-checkbox" id="myonoffswitch" checked="">
                                <label class="onoffswitch-label" for="myonoffswitch">
                                    <span class="onoffswitch-inner" data-value=""></span>
                                    <span class="onoffswitch-switch" data-value=""></span>
                                </label>
                            </div>
                        </div>

                        <div class="from-locaion">
                            <label>To</label>
                           <input type="number" style="padding: 9px;" class="form-control addto pac-target-input" name="to" id="to" autocomplete="off"  placeholder="Enter Pincode">
                        </div>
                    </form>

                    <div class="align-items-center justify-content-between tgle-btn mt-3 mb-3 slct-cmdy d-flex">
                        <div id="SelectionLabel">
                            <p>Is Lift available ?</p>
                        </div>
                        <div class="onoffswitch alertChanges">
                            <input type="checkbox" name="onoffswitch" class="onoffswitch-checkbox" id="myonoffswitch1" checked="">
                            <label class="onoffswitch-label" for="myonoffswitch1">
                                <span class="onoffswitch-inner" data-value=""></span>
                                <span class="onoffswitch-switch" data-value=""></span>
                            </label>
                        </div>
                    </div>

                    <div class="commodity-select mt-4">
                        <div class="row">
                            <div class="col-12">
                                    <asp:DropDownList ID="DropDownList1" class="tonage" runat="server" Width="300px">
                                        <asp:ListItem Value="XXFN2X">Micro Shifting</asp:ListItem>
                                        <asp:ListItem Value="QPH1CJ">1 BHK</asp:ListItem>
                                        <asp:ListItem Value="OCW6MD">2 BHK</asp:ListItem>
                                        <asp:ListItem Value="S9BOWW">3 BHK</asp:ListItem>
                                        <asp:ListItem Value="UN23EM">Above 3 BHK</asp:ListItem>
                                    </asp:DropDownList>
                                    <div class="dropdown-menu ">
                                        <div class="bs-searchbox">
                                            <input type="search" class="form-control" autocomplete="off" role="combobox" aria-label="Search" aria-controls="bs-select-2" aria-autocomplete="list">
                                        </div>
                                        <div class="inner show" role="listbox" id="bs-select-2" tabindex="-1">
                                            <ul class="dropdown-menu inner show" role="presentation"></ul>
                                        </div>
                                    </div>
                          
                            </div>

                        </div>
                    </div>

                    <div style="display: none;" id="m2">

                        <!--Packers & Movers Suggested Truck-->
                        <div class="avalable-trucks mt-5">
                            <div class="title">
                                <h2>Suggested Trucks</h2>
                            </div>
                            <div class="suggested-trucks-list suggestbybhk packk">
                            </div>
                            <a class="rm-btn show_all_pickers1_more d-none">Show more</a>
                            <a class="rm-btn show_all_pickers1_less d-none">Show Less </a>
                        </div>

                        <!--Packers & Movers More Truck-->
                        <div class="avalable-trucks mt-3">
                            <div class="title">
                                <h2>More options </h2>
                            </div>
                            <div class="suggested-trucks-list suggestbybhk1 packk">
                                <ul>
                                    <li class="trucktypepackers" id="2QUSP7" onclick="mymodel1(id)">
                                        <select class="open-close">
                                            <option value="1">Open
                                                    </option>
                                        </select>
                                        <a href="#">
                                            <span class="truck-icon">
                                                <img src="https://trucknetic-storage.s3.ap-south-1.amazonaws.com/F53UA4/TRUCKIMAGE/2QUSP7/truck-1.png?X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&amp;X-Amz-Algorithm=AWS4-HMAC-SHA256&amp;X-Amz-Credential=AKIAYTYERKIVDWWOHWTP%2F20250121%2Fap-south-1%2Fs3%2Faws4_request&amp;X-Amz-Date=20250121T071927Z&amp;X-Amz-SignedHeaders=host&amp;X-Amz-Expires=300&amp;X-Amz-Signature=f178426dc431551e36cc9f477f5f7377aef98462896b6b40288bb1cbbc51cd5a">
                                            </span>
                                            <span class="truck-detail">
                                                <h3>14 Tyre Truck</h3>
                                            </span>
                                        </a>
                                    </li>
                                    <li class="trucktypepackers" id="7ESYYT" onclick="mymodel1(id)">
                                        <select class="open-close">
                                            <option value="1">Open
                                                    </option>
                                        </select>
                                        <a href="#">
                                            <span class="truck-icon">
                                                <img src="https://trucknetic-storage.s3.ap-south-1.amazonaws.com/F53UA4/TRUCKIMAGE/7ESYYT/truck-1.png?X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&amp;X-Amz-Algorithm=AWS4-HMAC-SHA256&amp;X-Amz-Credential=AKIAYTYERKIVDWWOHWTP%2F20250121%2Fap-south-1%2Fs3%2Faws4_request&amp;X-Amz-Date=20250121T071927Z&amp;X-Amz-SignedHeaders=host&amp;X-Amz-Expires=300&amp;X-Amz-Signature=29f877934a51eebd55566983f2059fba6e2e282192eddc2a649a32566543091b">
                                            </span>
                                            <span class="truck-detail">
                                                <h3>10 Tyre Truck</h3>
                                            </span>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                            <a class="rm-btn show_all_pickers_more">Show more </a>
                            <a class="rm-btn show_all_pickers_less d-none">Show Less </a>
                        </div>

                    </div>

                    <div class="btn-grp ">
                         <asp:Button ID="Button1"  class="f-btn con-btn btn btn-success continue-btn" runat="server" Text="Continue" OnClick="G1_Click" />
                    </div>
                </div>
                <!--Packers & Movers Content End here-->

                <!--Packers & Movers Content End here-->

            </div>
    </form>
</body>
</html>
