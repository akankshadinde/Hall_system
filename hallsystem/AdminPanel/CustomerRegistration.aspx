<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPanel/Admin.Master" AutoEventWireup="true" CodeBehind="CustomerRegistration.aspx.cs" Inherits="hallsystem.AdminPanel.CustomerRegistration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <div class="container-fluid pt-5 ">
        <div class="text-center mb-3">
            <span class="font-weight-bold h3 text-center">Customers Registration</span>
        </div>
        <asp:GridView ID="GridViewShowData" runat="server" ShowHeaderWhenEmpty="True" CssClass="table table-borderless table-striped <%--table-bordered--%> <%--table-condensed table-striped--%>" AutoGenerateColumns="False">
            <Columns>
                <asp:BoundField DataField="rgid" HeaderText="ID" ControlStyle-Width="150" ItemStyle-Width="50" HeaderStyle-CssClass="text-center" ItemStyle-CssClass="text-center"
                    ControlStyle-Height="50" ItemStyle-Height="50" />
                <asp:BoundField DataField="rgUserName" HeaderText="User Name" ControlStyle-Width="150" ItemStyle-Width="50" HeaderStyle-CssClass="text-center" ItemStyle-CssClass="text-center"
                    ControlStyle-Height="50" ItemStyle-Height="50" />
                <asp:BoundField DataField="rgEmail" HeaderText="Email" ControlStyle-Width="150" ItemStyle-Width="50" HeaderStyle-CssClass="text-center" ItemStyle-CssClass="text-center"
                    ControlStyle-Height="50" ItemStyle-Height="50" />
                <asp:BoundField DataField="rgMobileNo" HeaderText="Mobile No" ControlStyle-Width="150" ItemStyle-Width="50" HeaderStyle-CssClass="text-center" ItemStyle-CssClass="text-center"
                    ControlStyle-Height="50" ItemStyle-Height="50" />

            </Columns>

            <EmptyDataTemplate>
                <div class="text-center">Record Not Available</div>
            </EmptyDataTemplate>
        </asp:GridView>

      
          <asp:Label ID="Label1" runat="server" CssClass="float-right font-weight-bold" Text=""></asp:Label>
        <center>
               <asp:Button ID="print" runat="server" Text="Print PDF" Width="200" CssClass="btn btn-warning" OnClick="print_Click1"/>
       </center>

    </div>
</asp:Content>
