<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="forgotpassword.aspx.cs" Inherits="hallsystem.Website.forgotpassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="text-center pt-2">
        <h2>Forgot Password</h2>
    </div>

    <div class="container">

        <div class="row justify-content-center pt-5 mt-4">
            <div class="col-lg-3 col-md-3 col-sm-12 <%--formsetting--%>">
                <label>Email:</label>
                <asp:TextBox ID="txtforgot" runat="server" CssClass="form-control" placeholder="Enter email"></asp:TextBox>


                <div class="pt-3 btnsetting ">
                    <asp:Button ID="btnsend" runat="server" Text="Send" CssClass="btn btn-primary mr-3" OnClick="btnsend_Click"/>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
