<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Packers_MoversInfo.aspx.cs" Inherits="TruckManagementSystem.Packers_MoversInfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.cosmo.min.css" rel="stylesheet" />
    <link href="Content/StyleSheet.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="jumbotron">
                <H1 class="text-danger">Packers & Movers Truck Info</H1>
            </div>
            <asp:GridView ID="grdDriverInfo" OnRowDataBound="grdDriverInfo_RowDataBound"  runat="server" AutoGenerateColumns="false"
                Width="100%" CssClass="table table-striped table-bordered table-hover">
                <Columns>
                    <asp:TemplateField>
                        <HeaderTemplate>
                            Vehicle Number
                        </HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Vehicle_No" runat="server" Style="vertical-align: middle;" Text='<%#Eval("Vehicle_No") %>'></asp:Label>
                            <asp:Label ID="lblid" runat="server" Style="vertical-align: middle; font-style: italic;" Visible="false" Text='<%#Eval("Id") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <HeaderTemplate>
                            Driver Location
                        </HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Lblloc" runat="server" Style="vertical-align: middle; font-style: italic;" Text='<%#Eval("Driver_Location") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <HeaderTemplate>
                            Vehicle Type
                        </HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lbltype" runat="server" Style="vertical-align: middle;" Text='<%#Eval("Vehicle_Type") %>'></asp:Label>
                            <br />
                             <asp:Image ID="Image1" runat="server" ImageUrl="images/Truck.jpg" style="width:40px;height:50px;"/>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField>
                        <HeaderTemplate>
                            Driver MobileNo
                        </HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblMobileNo" runat="server" Style="vertical-align: middle;" Text='<%#Eval("Driver_Mobileno") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <HeaderTemplate>
                            Driver Name/Truck Owner Name
                        </HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblName" runat="server" Style="vertical-align: middle;" Text='<%#Eval("DriverName") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <HeaderTemplate>
                            Driver Contact Info
                        </HeaderTemplate>
                        <ItemTemplate>
                            <asp:LinkButton ID="lbtnGetinfo" CommandName="Getnumber" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" runat="server" Text="Get Driver Info" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
