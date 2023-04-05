<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="DecorationPackages.aspx.cs" Inherits="hallsystem.UserPanel.DecorationPackages" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid bg-light">
        <div class="text-center pt-5">
            <h2>DecorationPackages</h2>
        </div>


        <div class="container ">
            <div class="row">
                <asp:Repeater ID="Repeater1" runat="server">  <%--OnItemCommand="Repeater1_ItemCommand"--%>

                    <ItemTemplate>
                        <div class="col-sm-4 col-md-4 col-lg-3 justify-content-end text-black-50">
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("tblDesignImage") %>' AlternateText='<%#Eval("tblDesignname") %>' Style="width: 200px; height: 200px;" CssClass="rounded" /><br />
                            <asp:Label ID="Label4" runat="server" Text='<%#Eval("tblDesignId") %>' Visible="False"></asp:Label>
                            <b>DesignName:<asp:Label ID="Label1" runat="server" Text='<%#Eval("tblDesignname") %>'></asp:Label><br />
                            </b>
                            <b>Rs:<asp:Label ID="Label2" runat="server" Text='<%# Eval("tblDesignPrice") %>'></asp:Label>
                                <br />
                            </b>
                            <b>DesignType:<asp:Label ID="Label3" runat="server" Text='<%#Eval("tblDesigntype") %>'></asp:Label></b><br />
                           <%-- <asp:Button ID="btnbook" runat="server" Text="Book" CssClass="btn btn-warning w-50" ValidateRequestMode="Inherit" UseSubmitBehavior="False" CommandName="pass" CommandArgument='<%#DataBinder.Eval(Container.DataItem,"tblDesignId")+"++"+DataBinder.Eval(Container.DataItem,"tblDesignname") %>' />--%>
                            <asp:button id="button1" runat="server" text="Select" cssclass="btn btn-warning w-50" validaterequestmode="inherit" usesubmitbehavior="false" commandname="pass" postbackurl='<%#string.Format("../userpanel/decorationpackages.aspx?name={0}&price={1}", HttpUtility.UrlEncode(Eval("tbldesignname").ToString()),HttpUtility.UrlEncode(Eval("tbldesignprice").ToString())) %>' />
                             

                            <br />
                              <br />
                              <br />
                        </div>
                    </ItemTemplate>

                </asp:Repeater>

            </div>




            <%-- <div class="">
                        <table>

                            <tr>
                                <th>
                                    <asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("tblDesignImage") %>' AlternateText='<%#Eval("tblDesignname") %>' Height="200" Width="200" /></th>
                            </tr>
                            <tr>
                                <th><%#Eval("tblDesignname") %></th>
                            </tr>
                        </table>
                    </div>--%>


            <div class="row  justify-content-center pt-5">
                <div class="col-lg-4  col-md-8 col-md-4 col-sm-8 col-sm-12 ">
                    <div class="pt-2 btnsetting">

                        <asp:Button ID="btnBack" runat="server" Text="Back " CssClass="btn btn-primary text-center w-25 " OnClick="btnBack_Click" />

                        <asp:Button ID="btnNext" runat="server" Text="Next" CssClass="btn btn-primary text-center ml-4 w-25" OnClick="btnNext_Click" />

                    </div>
                </div>

              
            </div>
        </div>
    </div>
</asp:Content>
