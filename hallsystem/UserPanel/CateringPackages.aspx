<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="CateringPackages.aspx.cs" Inherits="hallsystem.UserPanel.CateringPackages" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container-fluid bg-light">
        <div class="text-center pt-5">
            <h2>CateringPackages</h2>
        </div>


        <div class="container ">
           <div class="row">
               <br />
                <asp:Repeater ID="Repeater1" runat="server">  <%--OnItemCommand="Repeater1_ItemCommand"--%>
                    
                    <ItemTemplate>
                        
                        <div class="col-sm-4 col-md-4 col-lg-3 justify-content-end text-black-50">
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("tblCateringImage") %>' AlternateText='<%#Eval("tblCateringName") %>' Style="width: 200px; height: 200px;" CssClass="rounded" /><br />
                            <asp:Label ID="Label4" runat="server" Text='<%#Eval("tblCateringId") %>' Visible="False"></asp:Label>
                            <b>PlateName:<asp:Label ID="Label1" runat="server" Text='<%#Eval("tblCateringName") %>'></asp:Label><br />
                            </b>
                            <b>Rs:<asp:Label ID="Label2" runat="server" Text='<%# Eval("tblCateringPrice") %>'></asp:Label>
                                <br />
                            </b>
                            <b>DesignType:<asp:Label ID="Label3" runat="server" Text='<%#Eval("tblCateringType") %>'></asp:Label></b><br />
                           <%-- <asp:Button ID="btnbook" runat="server" Text="Book" CssClass="btn btn-warning w-50" ValidateRequestMode="Inherit" UseSubmitBehavior="False" CommandName="pass" CommandArgument='<%#DataBinder.Eval(Container.DataItem,"tblDesignId")+"++"+DataBinder.Eval(Container.DataItem,"tblDesignname") %>' />--%>
                            <asp:button id="button1" runat="server" text="Select" cssclass="btn btn-warning w-50" validaterequestmode="inherit" usesubmitbehavior="false" commandname="pass" postbackurl='<%#string.Format("../userpanel/CateringPackages.aspx?name={0}&price={1}", HttpUtility.UrlEncode(Eval("tblCateringName").ToString()),HttpUtility.UrlEncode(Eval("tblCateringPrice").ToString())) %>' />
                             

                            <br />
                              <br />
                              <br />
                        </div>
                    </ItemTemplate>

                </asp:Repeater>

            </div>




            


            <div class="row  justify-content-center pt-5">
                <div class="col-lg-4  col-md-8 col-md-4 col-sm-8 col-sm-12 ">
                    <div class="pt-2 btnsetting">

                        <asp:Button ID="btnBack" runat="server" Text="Back " CssClass="btn btn-primary text-center w-25 " OnClick="btnBack_Click1"/>

                        <asp:Button ID="btnNext" runat="server" Text="Next" CssClass="btn btn-primary text-center ml-4 w-25" OnClick="btnNext_Click1"  />

                    </div>
                </div>

              
            </div>
        </div>
    </div>
</asp:Content>
