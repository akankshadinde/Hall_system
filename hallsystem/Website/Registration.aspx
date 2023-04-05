<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="hallsystem.UserPanel.Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
            <div class="container-fluid bg-light">
                <div class="text-center pt-2">
                    <h2>Register</h2>
                </div>

                <div class="container">

                    <div class="row justify-content-center pt-4">
                        <div class="col-lg-4 col-md-8 col-md-4 col-sm-8 col-sm-12 ">
                            <label for="UserName">User Name:</label>
                            <asp:TextBox ID="txtusername" runat="server" CssClass="form-control w-75" placeholder="Enter UserName"></asp:TextBox>
                        </div>
                    </div>

                    <div class="row justify-content-center pt-4">
                        <div class="col-lg-4 col-md-8 col-md-4 col-sm-8 col-sm-12 ">
                            <label for="email">Email:</label><asp:TextBox ID="txtemail" runat="server" CssClass="form-control w-75" placeholder="Enter email" TextMode="Email"></asp:TextBox>

                        </div>
                    </div>

                    <div class="row justify-content-center pt-4">
                        <div class="col-lg-4 col-md-8 col-md-4 col-sm-8 col-sm-12 ">
                            <label for="MobileNo">Mobile No:</label>&nbsp;<asp:TextBox ID="txtmobileno" runat="server" CssClass="form-control w-75" placeholder="Enter Mobile No" MaxLength="10" TextMode="Phone"></asp:TextBox>
                        </div>
                    </div>

                    <div class="row justify-content-center pt-4">
                        <div class="col-lg-4 col-md-8 col-md-4 col-sm-8 col-sm-12 ">
                            <label for="Password">Password:</label><asp:TextBox ID="txtpass" runat="server" CssClass="form-control w-75" placeholder="Enter Password" TextMode="Password"></asp:TextBox>
                        </div>
                    </div>

                    <div class="row justify-content-center pt-4">
                        <div class="col-lg-4 col-md-8 col-md-4 col-sm-8 col-sm-12 ">
                            <label for="Confirm Password">Confirm Password:</label><asp:TextBox ID="txtconfpass" runat="server" CssClass="form-control w-75" placeholder="Enter Confirm Password" TextMode="Password"></asp:TextBox>
                        </div>
                    </div>

                    <div class="row justify-content-center pt-4">
                         <div class="col-lg-4 col-md-8 col-md-4 col-sm-8 col-sm-12 ">
                            <div class="pt-2 btnsetting">
                                <asp:Button ID="btnregister" runat="server" Text="Register" CssClass="btn btn-primary" OnClick="btnregister_Click" />

                                <asp:Button ID="btncancel" runat="server" Text="Cancel" CssClass="btn btn-primary ml-3" OnClick="btncancel_Click" CausesValidation="False" />
                            </div>
                        </div>
                    </div>

                </div>
            </div>
      



</asp:Content>
