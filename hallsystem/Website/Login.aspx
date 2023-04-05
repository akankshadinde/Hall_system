<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="hallsystem.UserPanel.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <script type="text/javascript">
        function ShowHidePassword() {
            var txt = $('#<%=TextBox3.ClientID%>');
            if (txt.prop("type") == "password") {
                txt.prop("type", "text");
                $("label[for='cbShowHidePassword']").text("Hide Password");
            }
            else {
                txt.prop("type", "password");
                $("label[for='cbShowHidePassword']").text("Show Password");
            }
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid bg-light">
        <div class="text-center pt-2">
            <h2>Login</h2>
        </div>

        <div class="container">

            <div class="row justify-content-center pt-5 mt-4">
                <div class="col-lg-3 col-md-3 col-sm-12 <%--formsetting--%>">
                    <label for="email">Email:</label>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="Enter email"></asp:TextBox>
                    
                    <div class="pt-1">
                    <label for="pwd">Password:</label>
                    <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" placeholder="Enter Password" TextMode="Password"></asp:TextBox><br />
                        <input id="cbShowHidePassword" type="checkbox" onclick="ShowHidePassword();"/> Show Password<br />
                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                         <asp:HyperLink ID="hlforgotPass"  runat="server" NavigateUrl="~/Website/forgotpassword.aspx">forgot Password</asp:HyperLink>
                   </div>
                    <div class="pt-5 btnsetting ml-4 pl-3">
                        <asp:Button ID="btnsingin" runat="server" Text="Sign In" CssClass="btn btn-primary mr-3" OnClick="btnsingin_Click" />

                        <asp:Button ID="btnsingup" runat="server" Text="Sign Up" CssClass="btn btn-primary" OnClick="btnsingup_Click" />

                    </div>
                </div>


            </div>





        </div>








        <%--<div class="bg-danger">
                <div class="form-group">
                    <label for="email">Email:</label>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control col-sm-4" placeholder="Enter email"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label for="pwd">Password:</label>
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control col-sm-4" placeholder="Enter Password"></asp:TextBox>
                </div>
                <asp:Button ID="Button1" runat="server" Text="Submit" CssClass="btn btn-primary" />

            </div>--%>
    </div>
</asp:Content>
