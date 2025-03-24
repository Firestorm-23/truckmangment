<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CommodityTrucks.aspx.cs" Inherits="TruckManagementSystem.CommodityTrucks" Async="true" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang="en">
<head>
    <title>Transport Management System</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="keywords" content="">
    <meta name="author" content="Free-Template.co">
    <link rel="shortcut icon" href="Building.jpg">
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
<form runat="server">
    <body data-spy="scroll" data-target=".site-navbar-target" data-offset="300" data-aos-easing="slide" data-aos-duration="800" data-aos-delay="0">

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
                           
                        </div>

                    </div>

                </div>
            </div>

            <div id="sticky-wrapper" class="sticky-wrapper is-sticky" style="height: 67.1875px;">
                <header class="site-navbar js-sticky-header site-navbar-target shrink" role="banner" style="width: 1343px; position: fixed; top: 0px; z-index: inherit;">

                    <div class="container">
                        <div class="row align-items-center position-relative">


                            <div class="site-logo" style="margin-top: 26px;">
                                <a href="HomePage.aspx" class="text-black"><span class="text-primary" style="margin: -108px;">Trucky</span></a>
                            </div>
                            <div class="toggle-button d-inline-block d-lg-none"><a href="#" class="site-menu-toggle py-5 js-menu-toggle text-black"><span class="icon-menu h3"></span></a></div>

                        </div>
                    </div>

                </header>
            </div>
            <section class="wraper d-flex">
                <aside class="leftsidebar">
                    <div class="mian-content-block " style="width: 700px; margin: auto; width: 60%; border: 3px solid #73AD21; padding: 10px; border-radius: 16px">

                        <div class="selector">
                            <!--Commodity Button start here-->
                            <div class="selecotr-item">
                                <input type="radio" name="bedStatus" runat="server" id="radio1" onclick="checkradio()" class="selector-item_radio" checked="" />
                                <label for="radio1" class="selector-item_label">Commodity Trucks</label>
                            </div>
                            <!--Commodity Button end here-->

                            <!--Packers & Movers Button start here-->
                            <div class="selecotr-item">
                                <input type="radio" runat="server" name="bedStatus" id="radio2" class="selector-item_radio" onclick="checkradio()" />
                                <label for="radio2" class="selector-item_label m-0">Packers &amp; Movers</label>
                            </div>
                            <!--Packers & Movers Button end here-->
                        </div>


                        <!--Commodity Content start here-->
                        <!--Commodity Content start here-->

                        <div class="direction-form p-2 radio1">
                            <form class="direction" method="post" id="form1">

                                <div class="from-locaion">
                                    <label>From</label>
                                    <asp:TextBox runat="server" TextMode="Number" Style="padding: 9px;" class="form-control addfrom pac-target-input" name="from" ID="from" autocomplete="off" required="" placeholder="Enter Pincode"></asp:TextBox>
                                    <%--<input type="number" style="padding: 9px;" class="form-control addfrom pac-target-input" name="from" id="from" autocomplete="off" required="" placeholder="Enter Pincode">--%>
                                </div>

                                <div id="getlift1" style="display: none">
                                    <div id="SelectionLabel">
                                        <p>Is Lift available ?</p>
                                    </div>
                                    <div class="onoffswitch alertChanges">
                                        <input type="checkbox" runat="server" name="onoffswitch" class="onoffswitch-checkbox" id="myonoffswitch" checked="">
                                        <label class="onoffswitch-label" for="myonoffswitch">
                                            <span class="onoffswitch-inner" data-value=""></span>
                                            <span class="onoffswitch-switch" data-value=""></span>
                                        </label>
                                    </div>
                                </div>

                                <div class="from-locaion">
                                    <label>To</label>
                                    <asp:TextBox runat="server" TextMode="Number" Style="padding: 9px;" class="form-control addto pac-target-input" name="to" ID="to" autocomplete="off" required="" placeholder="Enter Pincode"></asp:TextBox>
                                    <%--<input type="number" style="padding: 9px;" class="form-control addto pac-target-input" name="to" id="to" autocomplete="off" required="" placeholder="Enter Pincode">--%>
                                </div>


                                <div id="getlift2" style="display: none">
                                    <div id="SelectionLabel">
                                        <p>Is Lift available ?</p>
                                    </div>
                                    <div class="onoffswitch alertChanges">
                                        <input type="checkbox" name="onoffswitch" runat="server" class="onoffswitch-checkbox" id="myonoffswitch1" checked="">
                                        <label class="onoffswitch-label" for="myonoffswitch1">
                                            <span class="onoffswitch-inner" data-value=""></span>
                                            <span class="onoffswitch-switch" data-value=""></span>
                                        </label>
                                    </div>
                                </div>

                                <div class="commodity-select mt-4" id="getselected">
                                    <div class="row">

                                        <div class="col-6">

                                            <asp:DropDownList ID="DropDownList1" class="tonage" runat="server" Width="152px">
                                                <asp:ListItem Value="EDIBLE OIL">EDIBLE OIL</asp:ListItem>
                                                <asp:ListItem Value="STEAM COAL">STEAM COAL</asp:ListItem>
                                                <asp:ListItem Value="RICE">RICE</asp:ListItem>
                                                <asp:ListItem Value="CARTON BOX">CARTON BOX</asp:ListItem>
                                                <asp:ListItem Value="WHEAT">WHEAT</asp:ListItem>
                                                <asp:ListItem Value="Auto Parts">Auto Parts</asp:ListItem>
                                                <asp:ListItem Value="Branda Jute or Plasti">Branda Jute or Plastic</asp:ListItem>
                                                <asp:ListItem Value="Building Material">Building Material</asp:ListItem>
                                                <asp:ListItem Value="Liquid Chemicals">Liquid Chemicals </asp:ListItem>
                                                <asp:ListItem Value="Solid Chemicals Powder Bags">Solid Chemicals Powder Bags</asp:ListItem>
                                                <asp:ListItem Value="Electric Consumer Durables">Electric Consumer Durables</asp:ListItem>
                                                <asp:ListItem Value="Fertilizers">Fertilizers</asp:ListItem>
                                                <asp:ListItem Value="Fruits and Vegetables">Fruits and Vegetables</asp:ListItem>
                                                <asp:ListItem Value="Furniture and Wood Products">Furniture and Wood Products</asp:ListItem>
                                                <asp:ListItem Value="Household Products">Household Products</asp:ListItem>
                                                <asp:ListItem Value="Industrial Equipments">Industrial Equipments</asp:ListItem>
                                                <asp:ListItem Value="Iron Sheets or Bars or Scraps">Iron Sheets or Bars or Scraps</asp:ListItem>
                                                <asp:ListItem Value="Liquid in Drums">Liquid in Drums</asp:ListItem>
                                                <asp:ListItem Value="Machinery">Machinery</asp:ListItem>
                                                <asp:ListItem Value="Medical Supply">Medical Supply</asp:ListItem>
                                                <asp:ListItem Value="Metals">Metals</asp:ListItem>
                                                <asp:ListItem Value="Packaged Food">Packaged Food</asp:ListItem>
                                                <asp:ListItem Value="Pipes">Pipes</asp:ListItem>
                                                <asp:ListItem Value="Powder Bags">Powder Bags</asp:ListItem>
                                                <asp:ListItem Value="Paper Rolls">Paper Rolls</asp:ListItem>
                                                <asp:ListItem Value="Agriculture Products">Agriculture Products</asp:ListItem>
                                                <asp:ListItem Value="Textile">Textile</asp:ListItem>
                                                <asp:ListItem Value="Tyre and Rubber Products">Tyre and Rubber Products</asp:ListItem>
                                                <asp:ListItem Value="Vehicles or Cars">Vehicles or Cars</asp:ListItem>
                                                <asp:ListItem Value="Others">Others</asp:ListItem>
                                                <asp:ListItem Value="Boulder">Boulder</asp:ListItem>
                                                <asp:ListItem Value="Parcel">Parcel</asp:ListItem>
                                                <asp:ListItem Value="FMCG">FMCG</asp:ListItem>
                                                <asp:ListItem Value="Industrial Goods">Industrial Goods</asp:ListItem>
                                                <asp:ListItem Value="Cement">Cement</asp:ListItem>
                                                <asp:ListItem Value="Animal Food">Animal Food</asp:ListItem>
                                                <asp:ListItem Value="Paint">Paint</asp:ListItem>
                                                <asp:ListItem Value="Fuel">Fuel</asp:ListItem>
                                                <asp:ListItem Value="Plywood">Plywood</asp:ListItem>
                                                <asp:ListItem Value="Sugar">Sugar</asp:ListItem>
                                                <asp:ListItem Value="Warehouse Goods">Warehouse Goods</asp:ListItem>
                                            </asp:DropDownList>

                                            <div class="dropdown-menu ">
                                                <div class="bs-searchbox">
                                                    <input type="search" class="form-control" autocomplete="off" role="combobox" aria-label="Search" aria-controls="bs-select-1" aria-autocomplete="list">
                                                </div>
                                                <div class="inner show" role="listbox" id="bs-select-1" tabindex="-1">
                                                    <ul class="dropdown-menu inner show" role="presentation"></ul>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col-6">
                                            <input type="number" class="tonage" name="tonage" id="tonage" placeholder="Tonnage" runat="server" autocomplete="off">
                                            <span id="maxstatus"></span>
                                        </div>

                                    </div>
                                </div>

                                <div class="commodity-select mt-4" id="getBhk">
                                    <div class="row">

                                        <div class="col-6">

                                            <asp:DropDownList ID="DropDownList2" class="tonage" runat="server" Width="152px">
                                                <asp:ListItem Value="Micro Shifting">Micro Shifting</asp:ListItem>
                                                <asp:ListItem Value="1 BHK">1 BHK</asp:ListItem>
                                                <asp:ListItem Value="1 BHK">2 BHK</asp:ListItem>
                                                <asp:ListItem Value="3 BHK">3 BHK</asp:ListItem>
                                                <asp:ListItem Value="Above 3 BHK">Above 3 BHK</asp:ListItem>
                                            </asp:DropDownList>

                                            <div class="dropdown-menu ">
                                                <div class="bs-searchbox">
                                                    <input type="search" class="form-control" autocomplete="off" role="combobox" aria-label="Search" aria-controls="bs-select-1" aria-autocomplete="list">
                                                </div>
                                                <div class="inner show" role="listbox" id="bs-select-1" tabindex="-1">
                                                    <ul class="dropdown-menu inner show" role="presentation"></ul>
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                </div>

                            </form>
                            <div class="btn-grp ">
                                <asp:Button ID="Getclick" class="f-btn con-btn btn btn-success continue-btn" runat="server" Text="Continue" OnClick="c1_Click" />
                                <%--     <button class="f-btn con-btn btn btn-success" id="c1">
                            Continue
                        </button>--%>
                            </div>

                        </div>
                        <!--Commodity Content End here-->


                        <!--Commodity Content End here-->

                        <!--Packers & Movers Content start here-->
                        <!--Packers & Movers Content start here-->
                        <div class="direction-form p-2 radio2 d-none">
                            <form class="direction">
                                <div class="from-locaion">
                                    <label>From</label>
                                    <input type="text" class="form-control pacfrom pac-target-input" onkeyup="checkpackers()" id="from1" autocomplete="off" required="" placeholder="Enter a location">
                                </div>

                                <div class=" align-items-center justify-content-between tgle-btn mt-3 mb-3 slct-cmdy d-none">
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
                                    <input type="text" class="form-control pacto pac-target-input" onkeyup="checkpackers()" name="" id="to1" autocomplete="off" required="" placeholder="Enter a location">
                                </div>
                            </form>

                            <div class=" align-items-center justify-content-between tgle-btn mt-3 mb-3 slct-cmdy d-none">
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
                            <div class="btn-grp ">
                                <button class="f-btn con-btn btn btn-success disabled" style="border: none;" id="c2">
                                    Continue
           
                                </button>
                            </div>
                        </div>
                        <!--Packers & Movers Content End here-->

                        <!--Packers & Movers Content End here-->

                    </div>

                    <div class="avalable-trucks mt-3 ">
                        <div class="title">
                            <h2 class="suggtruck1">truck options </h2>
                        </div>
                        <!--Commodity Suggested Truck-->
                        <div class="suggested-trucks-list suggest1 truckk" id="getdivdata"></div>
                        <%--<div class="btx">
                        <a class="rm-btn show_all_commodity1_more d-none">Show more </a>
                        <a class="rm-btn show_all_commodity1_less">Show Less </a>
                    </div>--%>
                    </div>

                    <div class="leftsidebar-second pkr-mvr-c show" id="getestimate" style="display: none">
                        <div class="leftsidebarinner">
                            <asp:HiddenField ID="hdnpinvalue" runat="server" />
                           <asp:HiddenField ID="hdnpin1value" runat="server" />
                            <!--Main content section start here-->
                            <div class="mian-content-block odr-smry p-0">
                                <a href="#" class="back-btn p-3 d-table">
                                    <span class="closeacc" onclick="closepop()" style="font-weight: bold;">X</span></a>
                                <div class="estimateprice">
                                    <p class="estimateprice-headng">Estimated Price</p>
                                    <big class="price"><sup class="price-rupee">₹</sup><input type="text" id="htmlInput" style="width: 96px;" disabled /><sup>*</sup></big>
                                    <p class="note-estimateprice">
                                        <span>*</span> This is just the estimated price. Actual price may vary
                               
                                    </p>
                                </div>

                                <div class="order-summery">
                                    <h2>Order Summary</h2>
                                    <div class="truck-info">
                                        <div class="truck-icon1" id="imagedata"></div>
                                        <div class="truck-info-right">
                                            <div class="truck-detail1" id="truckdetails">
                                            </div>
                                            <div class="trk-bdy-dtl" id="trucktype">
                                            </div>
                                        </div>
                                    </div>
                                    <div id="accordion">

                                        <div class="card">
                                            <div class="card-header">
                                                <a class="collapsed card-link" data-toggle="collapse" href="#collapseOne" aria-expanded="true">
                                                    <h2 class="d-flex align-items-center justify-content-between" onclick="getordervalue()">Order More Info <i class="fa fa-caret-down" aria-hidden="true"></i></h2>
                                                </a>
                                            </div>

                                            <div id="collapseOne" class="collapse" data-parent="#accordion">
                                                <div class="card-body">

                                                    <div class="truck-info fr-cmdity" id="iscommodity" style="display:none">
                                                        <span class="truck-img">
                                                            <%--<img src="Building.jpg">--%>
                                                        </span>

                                                        <div class="truck-info-right">
                                                            <div class="truck-detail">
                                                                <h3 class="comm1">Commodity</h3>
                                                                <p class="comm" id="getcomm"></p>
                                                            </div>

                                                            <div class="truck-detail">
                                                                <h3 class="ton1">Tonnage</h3>
                                                                <p class="ton" id="getton"></p>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="truck-info selectd-bhk" id="ispacking" style="display:none">
                                                        <span class="truck-icon">
                                                            <img src="Building.jpg">
                                                        </span>
                                                        <div class="truck-info-right">
                                                            <div class="truck-detail">
                                                                <h3 class="comp1">Number of BHK</h3>
                                                                <p class="comp" id="bhkvalue"></p>
                                                            </div>

                                                            <div class="truck-detail pr-5">
                                                                <h3 class="tonp1">Floor</h3>
                                                                <p class="tonp">3rd</p>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="odr-add-sec-c">
                                                        <div class="odr-add-info">
                                                            <%--<img src="Building.jpg" alt="" class="truck-top">--%>
                                                            <div class="odr-add-info-frm d-flex align-items-start">
                                                                <div class="odr-add-info-frm-lft">
                                                                    <i class="fas fa-star"></i>
                                                                </div>
                                                                <div class="odr-add-info-frm-right d-flex align-items-start">
                                                                    <h3 class="odr-add-hd">From</h3>
                                                                    <div class="odr-add-info-frm-dtl fr1">
                                                                        <p id="fromvalue"></p>
                                                                        <div class="lft mt-3 " id="ispacking1">
                                                                            <i class="fas fa-check"></i>
                                                                            <p id="fromchk1"><strong></strong>   </p>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>

                                                        </div>

                                                        <div class="odr-add-info-frm d-flex align-items-start  odr-add-info-to">
                                                            <div class="odr-add-info-frm-lft">
                                                                <i class="fas fa-star"></i>
                                                            </div>
                                                            <div class="odr-add-info-frm-right d-flex align-items-start">
                                                                <h3 class="odr-add-hd">To</h3>
                                                                <div class="odr-add-info-frm-dtl tr1">
                                                                    <p id="tovalue"></p>
                                                                    <div class="lft mt-3" id="ispacking2">
                                                                        <i class="fas fa-check"></i>
                                                                        <p id="fromchk2"><strong></strong>   </p>
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


                                <div class="searchnetwork">
                                    <div class="d-flex align-items-center btn-grp-another">

                                        <a href="https://api.whatsapp.com/send?phone=9768354421&amp;text=Hi need quote" target="blank" class="f-btn blk-btn d-flex align-items-center">Get Quote
                      
                                        </a>

                                        <a href="https://api.whatsapp.com/send?phone=9768354421&amp;text=Hi" target="blank" class="f-btn blk-btn d-flex align-items-center">Get in touch
                       
                                        </a>

                                    </div>
                                </div>

                            </div>

                        </div>
                    </div>
            </section>


            <div class="rghtsidebar d-flex align-items-center" style="background-image: url('https://app.trucknetic.com/images/truck-1.jpg');">
                <div class="position-absolute counterSection" id="counterSection"></div>

            </div>
        </div>

        <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
        <script type="text/javascript">
            $(function getdata() {
                debugger;
                var selectedOption = $("input[name='bedStatus']:checked").val();
                $.ajax({
                    type: "POST",
                    url: "CommodityTrucks.aspx/GetTruckdata",
                    data: "{from:'" + from.value + "', to:'" + to.value + "',check:'" + selectedOption + "'}",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (response) {
                        var xmlDoc = $.parseXML(response.d);
                        var xml = $(xmlDoc);
                        var truck = xml.find("Vehicle");
                        var rs = "";
                        if (truck.length > 0) {
                            for (var i = 0; i < truck.length; i++) {
                                rs += '<ul><li class="trucktype" id="OHNTWH' + i + '" onclick="mymodel(this.id)"><select class="open-close " id="bq' + i + '" name="body_type"><option value="1">' + $(truck[i]).find('trucktype').text() + '</option></select><a href="#"><span class="truck-icon">';
                                rs += '<img src="https://app.trucknetic.com/images/truck-1.jpg"></span><span class="truck-detail"><h3 id="vn' + i + '">' + $(truck[i]).find('Vehicle_Type').text() + '</h3></span></a></li></ul>';

                            }
                        }
                        rs += '<div class="btn-grp "><button class="f-btn con-btn btn btn-success Success" style="border: none;" id="c2" onclick="showDiv()">Continue</button></div>';

                        $('#getdivdata').html(rs);
                    },
                    failure: function (response) {
                        alert(response.responseText);
                    },
                    error: function (response) {
                        alert(response.responseText);
                    }
                });
            });

        </script>
        <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
        <script type="text/javascript">
            function mymodel(id) {
                $('ul>li').removeClass("trucks-list-active");
                $('#' + id).addClass("trucks-list-active");
            }

            function checkradio() {
                debugger;
                var selectedOption = $("input[name='bedStatus']:checked").val();
                if (selectedOption == "radio2") {
                    document.getElementById('getlift1').style.display = "block";
                    document.getElementById('getlift2').style.display = "block";
                    document.getElementById('getselected').style.display = "none";
                    document.getElementById('getBhk').style.display = "block"; 
                } else {
                    document.getElementById('getlift1').style.display = "none";
                    document.getElementById('getlift2').style.display = "none";
                    document.getElementById('getselected').style.display = "block";
                    document.getElementById('getBhk').style.display = "none"; 
                }
            }
        </script>
        <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
        <script type="text/javascript">
            function showDiv() {
                debugger;
                try {
                    document.getElementById('getestimate').style.display = "block";
                    var rs = "";
                    const elements = document.querySelectorAll("li.trucktype.trucks-list-active");
                    const extractedElements = Array.from(elements).map(el => {
                        const spans = Array.from(el.querySelectorAll("span")).map(span => span.innerHTML);
                        const anchors = Array.from(el.querySelectorAll("a")).map(a => a.outerHTML);
                        const headers = Array.from(el.querySelectorAll("h3")).map(h => h.outerHTML);
                        const image = Array.from(el.querySelectorAll("img")).map(img => img.outerHTML);
                        const select = Array.from(el.querySelectorAll("select")).map(select => select.outerHTML);
                        $('#imagedata').html(image);
                        $('#truckdetails').html(headers);
                        $('#trucktype').html(select);
                        getordervalue();
                        $(document).on("click", "#c2", function (event) {
                            event.preventDefault();
                            event.stopPropagation();
                        });
                    });
                } catch (error) {
                    console.error("An error occurred:", error);
                }


            }
            function getordervalue()
            {
                debugger;
                var selectedOption = $("input[name='bedStatus']:checked").val();
                if (selectedOption == "radio2") {
                    document.getElementById("iscommodity").style.display = "none";
                    document.getElementById("ispacking").style.display = "block";
                    document.getElementById("ispacking1").style.display = "block";
                    document.getElementById("bhkvalue").innerText = document.getElementById("DropDownList2").value;
                    document.getElementById("fromvalue").innerText = document.getElementById("hdnpinvalue").value;
                    document.getElementById("tovalue").innerText = document.getElementById("hdnpin1value").value;
                    if (document.getElementById("myonoffswitch").checked == true) {
                        document.getElementById("fromchk1").innerText = "Yes,  lift Avaliable";
                    }
                    if (document.getElementById("myonoffswitch").checked == false) {
                        document.getElementById("fromchk1").innerText = "No,  lift Avaliable";
                    }
                    if (document.getElementById("myonoffswitch1").checked == true) {
                        document.getElementById("fromchk2").innerText = "Yes,  lift Avaliable";
                    }
                    if (document.getElementById("myonoffswitch1").checked == false) {
                        document.getElementById("fromchk2").innerText = "No,  lift Avaliable";
                    }
                }
                else {
                    document.getElementById("iscommodity").style.display = "block";
                    document.getElementById("ispacking").style.display = "none";
                    document.getElementById("ispacking1").style.display = "none";
                    document.getElementById("getcomm").innerText = document.getElementById("DropDownList1").value; 
                    document.getElementById("getton").innerText = document.getElementById("tonage").value;  
                    document.getElementById("fromvalue").innerText = document.getElementById("hdnpinvalue").value;
                    document.getElementById("tovalue").innerText = document.getElementById("hdnpin1value").value;
                }
                
            }

            $(document).ready(function () {
                checkradio();
            })
        </script>
        <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
        <script type="text/javascript">
            function closepop() {
                document.getElementById('getestimate').style.display = "none";
            }
        </script>

        <script src="js/jquery-3.3.1.min.js"></script>
        <script src="js/popper.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/owl.carousel.min.js"></script>
        <script src="js/jquery.sticky.js"></script>
        <script src="js/jquery.waypoints.min.js"></script>
        <script src="js/jquery.animateNumber.min.js"></script>
        <script src="js/jquery.fancybox.min.js"></script>
        <script src="js/jquery.easing.1.3.js"></script>
        <script src="js/aos.js"></script>

        <script src="js/main.js"></script>
    </body>
</form>

</html>
