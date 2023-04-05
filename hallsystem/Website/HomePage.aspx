<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="hallsystem.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div>
            <div id="mydemo" class="carousel slide carousel-fade col-md-10 col-lg-10 col-lg-12" data-ride="carousel">
                <ul class="carousel-indicators">
                    <li data-target="#mydemo" data-slide-to="0" class="active"></li>
                    <li data-target="#mydemo" data-slide-to="1"></li>
                    <li data-target="#mydemo" data-slide-to="2"></li>
                    <li data-target="#mydemo" data-slide-to="3"></li>
                </ul>
                <div class="col-lg-12 col-md-12  col-sm-10 col-sm-12">
                    <div class="carousel-inner h-auto">
                        <div class="carousel-item active" data-interval="1200">
                            <img src="../Images/2.1.jpg" width="100%" height="650" />

                        </div>
                        <div class="carousel-item " data-interval="1200">
                            <img src="../Images/d.jpg" width="100%" height="650" />

                        </div>
                        <div class="carousel-item " data-interval="1200">
                            <img src="../Images/7.jpg" width="100%" height="650" />

                        </div>
                        <div class="carousel-item " data-interval="1200">
                            <img src="../Images/10.jpg" width="100%" height="650" />

                        </div>
                        <div class="carousel-item " data-interval="1200">
                            <img src="../Images/11.jpg" width="100%" height="650" />

                        </div>
                    </div>
                    <a class="carousel-control-prev" href="#mydemo" data-slide="prev">
                        <span class="carousel-control-prev-icon"></span>
                    </a>
                    <a class="carousel-control-next" href="#mydemo" data-slide="next">
                        <span class="carousel-control-next-icon"></span>
                    </a>
                </div>
            </div>
            </div>
        </div>
    
</asp:Content>

