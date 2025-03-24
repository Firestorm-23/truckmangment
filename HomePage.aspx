<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35"
    Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<script runat="server">

    Protected Sub Button1_Click(sender As Object, e As EventArgs)
        Response.Redirect("CommodityTrucks.aspx")
    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs)
        Response.Redirect("CommodityTrucks.aspx")
    End Sub
</script>

<html lang="en">
<head>
    <title>Transport Management System</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="keywords" content="">
    <meta name="author" content="Free-Template.co">
    <link rel="shortcut icon" href="ftco-32x32.png">

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
                        <a href="#" class=""><span class="mr-2  icon-envelope-open-o"></span><span class="d-none d-md-inline-block">Trucky@gmail.com</span></a>
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

        <div id="sticky-wrapper" class="sticky-wrapper is-sticky" style="height: 67.1875px;">
            <header class="site-navbar js-sticky-header site-navbar-target shrink" role="banner" style="width: 1343px; position: fixed; top: 0px; z-index: inherit;">

                <div class="container">
                    <div class="row align-items-center position-relative">


                        <div class="site-logo">
                            <a href="HomePage.aspx" class="text-black"><span class="text-primary">Trucky</span></a>
                        </div>

                        <div class="col-12">
                            <nav class="site-navigation text-right ml-auto " role="navigation">

                                <ul class="site-menu main-menu js-clone-nav ml-auto d-none d-lg-block">
                                    <li><a href="#home-section" class="nav-link">Home</a></li>
                                    <li><a href="#services-section" class="nav-link active">Services</a></li>
                                    <li><a href="#about-section" class="nav-link">About Us</a></li>
                                    <li><a href="#why-us-section" class="nav-link">Why Us</a></li>
                                    <li><a href="#testimonials-section" class="nav-link">Testimonials</a></li>
                                    <li><a href="#contact-section" class="nav-link">Contact</a></li>
                                    <li><a href="Adminlogin.aspx">Admin-Login</a></li>
                                </ul>
                            </nav>

                        </div>

                        <div class="toggle-button d-inline-block d-lg-none"><a href="#" class="site-menu-toggle py-5 js-menu-toggle text-black"><span class="icon-menu h3"></span></a></div>

                    </div>
                </div>

            </header>
        </div>

        <div class="ftco-blocks-cover-1">
            <div class="ftco-cover-1 overlay" style="background-image: url('https://source.unsplash.com/pSyfecRCBQA/1920x780')">
                <div class="container">
                    <div class="row align-items-center">
                        <div class="col-lg-6">
                            <h1>Choose Your Quality Delivery of Your Valuables</h1>
                            <p class="mb-5">Handcrated with love by the fine folks at Trucky Systems Co</p>
                            <form action="#" runat="server">
                                <div class="btn-group">
                                    <asp:Button ID="Button1" OnClick="Button1_Click" class="btn btn-secondary" runat="server" Text="Request Booking" style="border-radius: 25px;height: 40px;width: 167px;"/>
                                    <%--<label class="btn btn-secondary" for="option1" data-mdb-ripple-init style="border-radius: 25px;height: 40px;width: 167px;">Commodity Trucks</label>--%>
                                    &nbsp&nbsp &nbsp&nbsp
                                     <asp:Button ID="Button2" OnClick="Button2_Click" Visible="false" class="btn btn-secondary" runat="server" Text="Packers & Movers" style="border-radius: 25px;height: 40px;width: 167px;"/>
                                    <%--<label class="btn btn-secondary" for="option2" data-mdb-ripple-init  style="border-radius: 25px;height: 40px;width: 160px;">Packers & Movers</label>--%>

                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <!-- END .ftco-cover-1 -->
            <div class="ftco-service-image-1 pb-5">
                <div class="container">
                    <div class="owl-carousel owl-all owl-loaded">



                        <div class="owl-stage-outer">
                            <div class="owl-stage" style="transform: translate3d(0px, 0px, 0px); transition: all; width: 1140px;">
                                <div class="owl-item active" style="width: 350px; margin-right: 30px;">
                                    <div class="service text-center">
                                        <a href="#">
                                            <img src="images/Truck.jpg" alt="Image" class="img-fluid"></a>
                                        <div class="px-md-3">
                                            <h3><a href="#">Delivery</a></h3>
                                            <p>Delivery Across all over India</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="owl-item active" style="width: 350px; margin-right: 30px;">
                                    <div class="service text-center">
                                        <a href="#">
                                            <img src="images/Movers.jpg" alt="Image" class="img-fluid"></a>
                                        <div class="px-md-3">
                                            <h3><a href="#">Movers and Packers</a></h3>
                                            <p>Mover and Packer services all over India</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="owl-nav disabled">
                            <div class="owl-prev"><span class="icon-arrow_back"></span></div>
                            <div class="owl-next"><span class="icon-arrow_forward"></span></div>
                        </div>
                        <div class="owl-dots disabled">
                            <div class="owl-dot active"><span></span></div>
                        </div>
                    </div>
                </div>
            </div>

        </div>

        <div class="site-section bg-light" id="services-section">
            <div class="container">
                <div class="row mb-5 justify-content-center">
                    <div class="col-md-7 text-center">
                        <div class="block-heading-1">
                            <h2>What We Offer</h2>
                        </div>
                    </div>
                </div>
                <div class="owl-carousel owl-all owl-loaded">

                    <div class="owl-stage-outer">
                        <div class="owl-stage" style="transform: translate3d(0px, 0px, 0px); transition: all; width: 2280px;">
                            <div class="owl-item" style="width: 350px; margin-right: 30px;">
                                <div class="block__35630">
                                    <div class="icon mb-0">
                                        <span class="flaticon-lorry"></span>
                                    </div>
                                    <h3 class="mb-3">Trucking</h3>
                                    <p>Trucking Services Available.</p>
                                </div>
                            </div>
                            <div class="owl-item" style="width: 350px; margin-right: 30px;">
                                <div class="block__35630">
                                    <div class="icon mb-0">
                                        <span class="flaticon-box"></span>
                                    </div>
                                    <h3 class="mb-3">Package Forwarding</h3>
                                    <p>Moving & Forwarding Services Available.</p>
                                </div>
                            </div>

                            <div class="owl-item" style="width: 350px; margin-right: 30px;">
                                <div class="block__35630">
                                    <div class="icon mb-0">
                                        <span class="flaticon-add"></span>
                                    </div>
                                    <h3 class="mb-3">Delivery</h3>
                                    <p>Best Overall India Delivery Services Available.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="owl-nav disabled">
                        <div class="owl-prev"><span class="icon-arrow_back"></span></div>
                        <div class="owl-next"><span class="icon-arrow_forward"></span></div>
                    </div>
                    <div class="owl-dots">
                        <div class="owl-dot active"><span></span></div>
                        <div class="owl-dot"><span></span></div>
                    </div>
                </div>
            </div>
        </div>




        <div class="site-section" id="about-section">

            <div class="container">
                <div class="row mb-5 justify-content-center">
                    <div class="col-md-7 text-center">
                        <div class="block-heading-1 aos-init" data-aos="fade-up" data-aos-delay="">
                            <h2>About Us</h2>
                            <p>Finest and Best Delivery & Packing and Moving Services Provided.</p>
                        </div>
                    </div>
                </div>
            </div>

        </div>



        <div class="site-section bg-light" id="about-section">
            <div class="container">
                <div class="row justify-content-center mb-4 block-img-video-1-wrap">
                    <div class="col-md-12 mb-5">
                        <figure class="block-img-video-1 aos-init" data-aos="fade">
                            <a href="https://www.youtube.com/watch?v=DUCAfzet4R0" data-fancybox="" data-ratio="2">
                                <span class="icon"><span class="icon-play"></span></span>
                                <img src="images/cargo_delivery_big.jpg" alt="Image" class="img-fluid">
                            </a>
                        </figure>
                    </div>
                </div>
                <div class="row">
                    <div class="col-12">
                        <div class="row">
                            <div class="col-6 col-md-6 mb-4 col-lg-0 col-lg-3 aos-init" data-aos="fade-up" data-aos-delay="">
                                <div class="block-counter-1">
                                    <span class="number"><span data-number="25">25</span>+</span>
                                    <span class="caption">Years of Experience</span>
                                </div>
                            </div>
                            <div class="col-6 col-md-6 mb-4 col-lg-0 col-lg-3 aos-init" data-aos="fade-up" data-aos-delay="100">
                                <div class="block-counter-1">
                                    <span class="number"><span data-number="30">30</span>+</span>
                                    <span class="caption">Companies</span>
                                </div>
                            </div>
                            <div class="col-6 col-md-6 mb-4 col-lg-0 col-lg-3 aos-init" data-aos="fade-up" data-aos-delay="200">
                                <div class="block-counter-1">
                                    <span class="number"><span data-number="1">1</span>+</span>
                                    <span class="caption">Countries Covered - All Over India</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="block__73694 site-section border-top" id="why-us-section">
            <div class="container">
                <div class="row d-flex no-gutters align-items-stretch">

                    <div class="col-12 col-lg-6 block__73422 order-lg-2 aos-init" style="background-image: url('images/cargo_sea_small.jpg');" data-aos="fade-left" data-aos-delay="">
                    </div>



                    <div class="col-lg-5 mr-auto p-lg-5 mt-4 mt-lg-0 order-lg-1 aos-init" data-aos="fade-right" data-aos-delay="">
                        <h2 class="mb-4 text-black">Why Us</h2>
                        <h4 class="text-primary">We work quickly and efficiently!</h4>
                        <p>We are one of the best service provider in this domain with high success rate and user experience.</p>

                        <ul class="ul-check primary list-unstyled mt-5">
                            <li>Secure Services</li>
                            <li>Cost savings</li>
                            <li>Proven by great companies</li>
                        </ul>

                    </div>

                </div>
            </div>
        </div>


        <div class="site-section bg-light block-13 aos-init" id="testimonials-section" data-aos="fade">
            <div class="container">

                <div class="text-center mb-5">
                    <div class="block-heading-1">
                        <h2>Happy Clients</h2>
                    </div>
                </div>

                <div class="owl-carousel nonloop-block-13 owl-loaded owl-drag">

                    <div class="owl-stage-outer">
                        <div class="owl-stage" style="transform: translate3d(-1110px, 0px, 0px); transition: 1s; width: 3700px;">
                            <div class="owl-item cloned" style="width: 370px;">
                                <div>
                                    <div class="block-testimony-1 text-center">
                                        <blockquote class="mb-4">
                                            <p>“The best of service one can think of with budget friendly ”</p>
                                        </blockquote>
                                        <figure>
                                            <img src="images/person_2.jpg" alt="Image" class="img-fluid rounded-circle mx-auto">
                                        </figure>
                                        <h3 class="font-size-20 mb-4 text-black">COLGATE</h3>

                                    </div>
                                </div>
                            </div>
                            <div class="owl-item cloned" style="width: 370px;">
                                <div>
                                    <div class="block-testimony-1 text-center">


                                        <blockquote class="mb-4">
                                            <p>“All good for SME businesses”</p>
                                        </blockquote>

                                        <figure>
                                            <img src="images/person_1.jpg" alt="Image" class="img-fluid rounded-circle mx-auto">
                                        </figure>
                                        <h3 class="font-size-20 text-black">ASUS</h3>


                                    </div>
                                </div>
                            </div>
                            <div class="owl-item cloned" style="width: 370px;">
                                <div>
                                    <div class="block-testimony-1 text-center">
                                        <blockquote class="mb-4">
                                            <p>“Finest and Best Delivery & Packing and Moving Services Provided. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.”</p>
                                        </blockquote>

                                        <figure>
                                            <img src="images/person_3.jpg" alt="Image" class="img-fluid rounded-circle mx-auto">
                                        </figure>
                                        <h3 class="font-size-20 mb-4 text-black">DHL</h3>

                                    </div>
                                </div>
                            </div>
                            <div class="owl-item active" style="width: 370px;">
                                <div>
                                    <div class="block-testimony-1 text-center">

                                        <blockquote class="mb-4">
                                            <p>
                                                “All good for SME businesses
                    ”
                                            </p>
                                        </blockquote>

                                        <figure>
                                            <img src="images/person_4.jpg" alt="Image" class="img-fluid rounded-circle mx-auto">
                                        </figure>
                                        <h3 class="font-size-20 text-black">Ricky Fisher</h3>
                                    </div>
                                </div>
                            </div>
                            <div class="owl-item active" style="width: 370px;">
                                <div>
                                    <div class="block-testimony-1 text-center">
                                        <blockquote class="mb-4">
                                            <p>“The best of service one can think of with budget friendly ”</p>
                                        </blockquote>
                                        <figure>
                                            <img src="images/person_2.jpg" alt="Image" class="img-fluid rounded-circle mx-auto">
                                        </figure>
                                        <h3 class="font-size-20 mb-4 text-black">Ken Davis</h3>

                                    </div>
                                </div>
                            </div>
                            <div class="owl-item active" style="width: 370px;">
                                <div>
                                    <div class="block-testimony-1 text-center">


                                        <blockquote class="mb-4">
                                            <p>“All good for SME businesses”</p>
                                        </blockquote>

                                        <figure>
                                            <img src="images/person_1.jpg" alt="Image" class="img-fluid rounded-circle mx-auto">
                                        </figure>
                                        <h3 class="font-size-20 text-black">Mellisa Griffin</h3>


                                    </div>
                                </div>
                            </div>
                            <div class="owl-item" style="width: 370px;">
                                <div>
                                    <div class="block-testimony-1 text-center">
                                        <blockquote class="mb-4">
                                            <p>“Finest and Best Delivery & Packing and Moving Services Provided. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.”</p>
                                        </blockquote>

                                        <figure>
                                            <img src="images/person_3.jpg" alt="Image" class="img-fluid rounded-circle mx-auto">
                                        </figure>
                                        <h3 class="font-size-20 mb-4 text-black">Robert Steward</h3>

                                    </div>
                                </div>
                            </div>
                            <div class="owl-item cloned" style="width: 370px;">
                                <div>
                                    <div class="block-testimony-1 text-center">

                                        <blockquote class="mb-4">
                                            <p>
                                                “All good for SME businesses
                    ”
                                            </p>
                                        </blockquote>

                                        <figure>
                                            <img src="images/person_4.jpg" alt="Image" class="img-fluid rounded-circle mx-auto">
                                        </figure>
                                        <h3 class="font-size-20 text-black">Ricky Fisher</h3>
                                    </div>
                                </div>
                            </div>
                            <div class="owl-item cloned" style="width: 370px;">
                                <div>
                                    <div class="block-testimony-1 text-center">
                                        <blockquote class="mb-4">
                                            <p>“The best of service one can think of with budget friendly ”</p>
                                        </blockquote>
                                        <figure>
                                            <img src="images/person_2.jpg" alt="Image" class="img-fluid rounded-circle mx-auto">
                                        </figure>
                                        <h3 class="font-size-20 mb-4 text-black">Ken Davis</h3>

                                    </div>
                                </div>
                            </div>
                            <div class="owl-item cloned" style="width: 370px;">
                                <div>
                                    <div class="block-testimony-1 text-center">


                                        <blockquote class="mb-4">
                                            <p>“All good for SME businesses”</p>
                                        </blockquote>

                                        <figure>
                                            <img src="images/person_1.jpg" alt="Image" class="img-fluid rounded-circle mx-auto">
                                        </figure>
                                        <h3 class="font-size-20 text-black">Mellisa Griffin</h3>


                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="owl-nav">
                        <div class="owl-prev"><span class="icon-arrow_back"></span></div>
                        <div class="owl-next"><span class="icon-arrow_forward"></span></div>
                    </div>
                    <div class="owl-dots">
                        <div class="owl-dot active"><span></span></div>
                        <div class="owl-dot"><span></span></div>
                    </div>
                </div>

            </div>
        </div>
    </div>



    <div class="site-section bg-light" id="contact-section">
        <div class="container">
            <div class="row">
                <div class="col-12 text-center mb-5 aos-init" data-aos="fade-up" data-aos-delay="">
                    <div class="block-heading-1">
                        <span>Get In Touch</span>
                        <h2>Contact Us</h2>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-6 mb-5 aos-init" data-aos="fade-up" data-aos-delay="200">
                    <div class="bg-white p-3 p-md-5">
                        <h3 class="text-black mb-4">Contact Info</h3>
                        <ul class="list-unstyled footer-link">
                            <li class="d-block mb-3">
                                <span class="d-block text-black">Address:</span>
                                <span>34 Military Road Marol Naka Andheri (E) ,Mumbai-59 ,Maharashtra</span></li>
                            <li class="d-block mb-3"><span class="d-block text-black">Phone:</span><span>+91 9768354421</span></li>
                            <li class="d-block mb-3"><span class="d-block text-black">Email:</span><span>Trucky@gmail.com</span></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <footer class="site-footer">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <div class="row">
                        <div class="col-md-7">
                            <h2 class="footer-heading mb-4">About Us</h2>
                            <p>Finest and Best Delivery & Packing and Moving Services Provided.</p>
                        </div>
                        <div class="col-md-4 ml-auto">
                            <h2 class="footer-heading mb-4">Features</h2>
                            <ul class="list-unstyled">
                                <li><a href="#">About Us</a></li>
                                <li><a href="#">Testimonials</a></li>
                                <li><a href="#">Contact Us</a></li>
                            </ul>
                        </div>

                    </div>
                </div>
            </div>
            <div class="row pt-5 mt-5 text-center">
                <div class="col-md-12">
                    <div class="border-top pt-5">
                        <p class="copyright">
                            <script>document.write(new Date().getFullYear());</script>
                            <strong>TRUCKY</strong>
                        </p>
                    </div>
                </div>

            </div>
        </div>
    </footer>



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
    <script type="text/javascript">
        import { Ripple, initMDB } from "mdb-ui-kit";
        initMDB({ Ripple });
    </script>




</body>
</html>
