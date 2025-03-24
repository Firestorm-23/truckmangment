<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminPanel.aspx.cs" Inherits="TruckManagementSystem.AdminPanel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
    <script type="text/javascript" src='https://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.8.3.min.js'></script>
    <script type="text/javascript" src='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.3/js/bootstrap.min.js'></script>
    <link rel="stylesheet" href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.3/css/bootstrap.min.css'
        media="screen" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="jumbotron">
            <h1 class="text-danger">Driver Info</h1>
        </div>
        <div class="mian-content-block " style="width: 700px; margin: auto; width: 60%; border: 3px solid #73AD21; padding: 10px; border-radius: 16px">
            <h2 class="form-signin-heading">Add Driver Info</h2>
            <asp:Label Text="Vehicle No" runat="server" AssociatedControlID="txtVehicle_No" />
            <asp:TextBox ID="txtVehicle_No" runat="server" CssClass="form-control" placeholder="Enter Vehicle No" required="required" />
            <%--<asp:RegularExpressionValidator ID="revVehicle_Number" ValidationGroup="Scheme" Display="Dynamic" ValidationExpression= "^[A-Z]{2}[\\ -]{0, 1}[0-9]{2}[\\ -]{0, 1}[A-Z]{1, 2}[\\ -]{0, 1}[0-9]{4}$"  ControlToValidate="txtVehicle_No" runat="server" ErrorMessage="Enter Proper Vehicle Number"></asp:RegularExpressionValidator>--%>
            <br />
            <asp:Label Text="Driver Location" runat="server" AssociatedControlID="txtDriver_Loc" />
            <asp:TextBox ID="txtDriver_Loc" runat="server" CssClass="form-control" placeholder="Enter Driver Location" required="required" />
            <br />
            <asp:Label Text="Vehicle Type" runat="server" AssociatedControlID="txtVehicle_Type" />
            <asp:TextBox ID="txtVehicle_Type" runat="server" CssClass="form-control" placeholder="Enter txtVehicle Type" required="required" />
            <br />
            <asp:Label Text="Driver Mobile No" runat="server" AssociatedControlID="txtDriver_Mobile_No" />
            <asp:TextBox ID="txtDriver_Mobile_No" runat="server" CssClass="form-control" placeholder="Enter Mobile Number" required="required" />
            <br />
            <asp:Label Text="Driver Name" runat="server" AssociatedControlID="txtDriver_Name" />
            <asp:TextBox ID="txtDriver_Name" runat="server" CssClass="form-control" placeholder="Enter Driver Name" required="required" />
            <br />
            <asp:Label Text="Select Packing & Moving or Commodity" runat="server" AssociatedControlID="DrpPacking" />
            <asp:DropDownList ID="DrpPacking" class="tonage" runat="server" Width="300px">
                <asp:ListItem Value="1">Packing and Moving</asp:ListItem>
                <asp:ListItem Value="0">Commodity</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <asp:Label Text="Select Truck Type" runat="server" AssociatedControlID="Drpgettype" />
            <asp:DropDownList ID="Drpgettype" class="tonage" runat="server" Width="300px">
                <asp:ListItem Value="Close">Close</asp:ListItem>
                <asp:ListItem Value="Open">Open</asp:ListItem>
            </asp:DropDownList>
            <hr />
            <asp:Button ID="btnSave" Style="width: 85px;" runat="server" Text="Save" CssClass="btn btn-primary" OnClick="btnSave_Click" />
        </div>
    </form>
</body>
</html>
