<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Booking.aspx.cs" Inherits="hallsystem.UserPanel.Booking" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid bg-light">
        <div class="text-center pt-5">
            <h2>Booking</h2>
        </div>

        <div class="container-fluid">

            <div class="row justify-content-center pt-4">
                <div class="col-lg-6  col-md-8 col-md-4 col-sm-8 col-sm-12 ">
                    <label>Name:</label>
                    <asp:TextBox ID="txtname" runat="server" CssClass="form-control w-75" placeholder="Enter Name" ReadOnly="False"></asp:TextBox>
                </div>


                <div class="col-lg-6  col-md-8 col-md-4 col-sm-8 col-sm-12 ">
                    <label>Address:</label>
                    <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control w-75" placeholder="Enter Address" TextMode="MultiLine"></asp:TextBox>

                </div>
            </div>



            <div class="row justify-content-center pt-4">
                <div class="col-lg-6  col-md-8 col-md-4 col-sm-8 col-sm-12 ">
                    <label>Mobile No:</label>
                    <%-- &nbsp;--%><asp:TextBox ID="txtmobileno" runat="server" CssClass="form-control w-75" placeholder="Enter Mobile No" MaxLength="10" TextMode="Phone"></asp:TextBox>
                </div>

                <div class="col-lg-6  col-md-8 col-md-4 col-sm-8 col-sm-12 ">
                    <label>Email:</label>
                    <asp:TextBox ID="txtrbBooking" runat="server" CssClass="form-control w-75" ></asp:TextBox>
                </div>

            </div>



            <div class="row justify-content-center pt-4">
                <div class="col-lg-6  col-md-8 col-md-4 col-sm-8 col-sm-12 ">
                    <label>Function Name:</label>
                    <asp:TextBox ID="txtfunctionname" runat="server" CssClass="form-control w-75" placeholder="Enter Name"></asp:TextBox>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtPersonfunct" ErrorMessage="out of range" MaximumValue="5000" MinimumValue="20" Type="Integer"></asp:RangeValidator>
                </div>

                <div class="col-lg-6  col-md-8 col-md-4 col-sm-8 col-sm-12 ">
                    <label>Person To Function:</label>
                    <asp:TextBox ID="txtPersonfunct" MaxLength="3" runat="server" CssClass="form-control w-75" placeholder="Enter Person To Function" TextMode="Number"></asp:TextBox>
                    <label>maximum length is 3 digit</label>
                   
                </div>

            </div>



            <div class="row justify-content-center pt-4">
                <div class="col-lg-6  col-md-8 col-md-4 col-sm-8 col-sm-12 ">
                    <label>Day:</label>
                    <asp:TextBox ID="txtDay" runat="server" CssClass="form-control w-75" placeholder="Enter Time" TextMode="Date" AutoPostBack="true" OnLoad="txtDay_Load"></asp:TextBox>
                </div>

                <div class="col-lg-6  col-md-8 col-md-4 col-sm-8 col-sm-12 ">
                    <label>Time:</label>
                    <asp:TextBox ID="txtTime" runat="server" CssClass="form-control w-75" placeholder="Enter Confirm Password" TextMode="Time" ></asp:TextBox>
                </div>

            </div>



            <div class="row justify-content-center pt-4">
                <div class="col-lg-6  col-md-8 col-md-4 col-sm-8 col-sm-12 ">
                    <label>Audio System:</label><br />
                    <asp:DropDownList ID="ddlAudio" runat="server" CssClass="form-control dropdown-toggle w-75">
                        <asp:ListItem Value="">Selected</asp:ListItem>
                        <asp:ListItem>Yes</asp:ListItem>
                        <asp:ListItem>No</asp:ListItem>
                    </asp:DropDownList>
                </div>

                <div class="col-lg-6  col-md-8 col-md-4 col-sm-8 col-sm-12 ">
                    <label>Video Recording:</label><br />
                    <asp:DropDownList ID="ddlVideo" runat="server" CssClass="form-control dropdown-toggle w-75">
                        <asp:ListItem Value="">Selected</asp:ListItem>
                        <asp:ListItem>Yes</asp:ListItem>
                        <asp:ListItem>No</asp:ListItem>
                    </asp:DropDownList>
                </div>

            </div>


            <div class="row pt-4">
                <div class="col-lg-6  col-md-8 col-md-4 col-sm-8 col-sm-12 ">
                    <label>Lighting System:</label><br />
                    <asp:DropDownList ID="ddllight" runat="server" CssClass="form-control dropdown-toggle w-75">
                        <asp:ListItem Value="">Selected</asp:ListItem>
                        <asp:ListItem>Yes</asp:ListItem>
                        <asp:ListItem>No</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>

            <div class="row justify-content-center pt-5">
                <div class="col-lg-4  col-md-8 col-md-4 col-sm-8 col-sm-12 ">
                    <div class="pt-2 btnsetting">
                        <asp:Button ID="btncancel" runat="server" Text="Cancel" CssClass="btn btn-primary  w-25" CausesValidation="False"   />
                        <asp:Button ID="btnSubmit" runat="server" Text="Next" CssClass="btn btn-primary ml-4 w-25" OnClick="btnSubmit_Click" />
                    </div>
                </div>
            </div>

        </div>
    </div>
</asp:Content>
