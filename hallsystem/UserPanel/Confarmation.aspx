<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Confarmation.aspx.cs" Inherits="hallsystem.UserPanel.book" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            margin-top: 7px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid bg-light">
        <div class="text-center pt-5">
            <h2>Confirm Booking</h2>
        </div>
        <img src="../Images/QR Code1.jpg" class="float-right rounded" width="400" height="500" />
        <div class="container-fluid pt-4">
            <div class="row">
                
                <div class="col-lg-12 w-100 ">
                    <table>
                        <tr>
                            <td>
                                <b>Name:</b>
                            </td>
                            <td>
                                <asp:Label ID="Label5" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                      

                        <tr>
                            <td>
                                <b>Address:</b>
                            </td>
                            <td>
                                <asp:Label ID="Label7" runat="server" Text=""></asp:Label>
                            </td>

                        </tr>

                        <tr>
                            <td>
                                <b>Mobile No:</b>
                            </td>
                            <td>
                                <asp:Label ID="Label8" runat="server" Text=""></asp:Label>
                            </td>

                        </tr>

                        <tr>
                            <td>
                                <b>Function Name:</b>
                            </td>
                            <td>
                                <asp:Label ID="Label9" runat="server" Text=""></asp:Label>
                            </td>

                        </tr>

                        <tr>
                            <td>
                                <b>Person To Function:</b>
                            </td>
                            <td>
                                <asp:Label ID="Label10" runat="server" Text=""></asp:Label>
                            </td>

                        </tr>

                        <tr>
                            <td>
                                <b>Day:</b>

                            </td>
                            <td>
                                <asp:Label ID="Label11" runat="server" Text=""></asp:Label>
                            </td>

                        </tr>

                        <tr>
                            <td>
                                <b>Time:</b>
                            </td>
                            <td>
                                <asp:Label ID="Label12" runat="server" Text=""></asp:Label>
                            </td>

                        </tr>
                          <tr>
                            <td>
                                <b>Email:</b>
                            </td>
                            <td>
                                <asp:Label ID="Label6" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>

                        <tr>
                            <td>
                                <b>Audio System:</b>
                            </td>
                            <td>
                                <asp:Label ID="Label13" runat="server" Text=""></asp:Label>
                            </td>

                        </tr>

                        <tr>
                            <td>
                                <b>Video Recording:</b>
                            </td>
                            <td>
                                <asp:Label ID="Label14" runat="server" Text=""></asp:Label>
                            </td>

                        </tr>

                        <tr>
                            <td>
                                <b>Lighting System:</b>
                            </td>
                            <td>
                                <asp:Label ID="Label15" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>

                        <tr>
                            <td>
                                <b>DecorationDesing:</b>
                            </td>
                            <td>
                                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                            </td>

                        </tr>

                        <tr>
                            <td>
                                <b>DecorationPrice:</b>
                            </td>
                            <td>
                                <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
                            </td>

                        </tr>

                        <tr>
                            <td>
                                <b>DishName:</b>
                            </td>
                            <td>
                                <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
                            </td>

                        </tr>


                        <tr>
                            <td>
                                <b>DishPrice:</b>
                            </td>
                            <td>
                                <asp:Label ID="Label4" runat="server" Text=""></asp:Label>
                            </td>

                        </tr>

                        <tr>
                            <td>
                                <b>Catering Total:</b>
                            </td>
                            <td>
                               <b>Rs.</b><asp:TextBox ID="txtCateringTotal" runat="server" Enabled="False" OnLoad="txtCateringTotal_Load" CssClass="auto-style1"></asp:TextBox><br />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <b>Grand Total:</b>
                            </td>
                            <td>
                               <b>Rs.</b><asp:TextBox ID="txtgrandtotal" runat="server" Enabled="False" OnLoad="txtgrandtotal_Load"></asp:TextBox><br />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <b>UPI Transaction ID:</b>
                            </td>
                            <td> &nbsp  &nbsp.
                               <asp:TextBox ID="txtgooglepay" runat="server"></asp:TextBox>
                            </td>
                            
                        </tr>
                      
                       
                    </table>
                </div>

            </div>
        </div>


        <div class="row justify-content-center pt-5">
            <div class="col-lg-5 col-md-8 col-md-5 col-sm-8 col-sm-12 ">
                <div class=" pt-2 btncsetting">
                    &nbsp 
                        <asp:Button ID="btnSubmit" runat="server" Text="Pay" CssClass="btn btn-success w-25" OnClick="btnSubmit_Click" />

                    <asp:Button ID="btncancel" runat="server" Text="Cancel" CssClass="btn btn-danger ml-4 w-25" CausesValidation="False" OnClick="btncancel_Click" />
                </div>
            </div>
        </div>

    </div>
    <br />
    <br />

    <br />

    <br />

</asp:Content>
