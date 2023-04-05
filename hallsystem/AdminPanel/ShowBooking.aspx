<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPanel/Admin.Master" AutoEventWireup="true" CodeBehind="ShowBooking.aspx.cs" Inherits="hallsystem.AdminPanel.ShowBooking" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
     <div class ="container-fluid pt-5">
          <center>
           <b>Date: </b>&nbsp;&nbsp;
          <asp:TextBox ID="TextBox1" runat="server" TextMode="Date" AutoPostBack="True" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
              &nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="btnReset" runat="server" Text="Reset" CssClass="btn btn-warning"></asp:Button>
         <center>
              <br />

        <asp:GridView ID="GridViewShowData" runat="server" ShowHeaderWhenEmpty="True" CssClass="table table-striped table-bordered table-condensed table-striped"  AutoGenerateColumns="False" DataKeyNames="tblbookingid" OnRowDeleting="GridViewShowData_RowDeleting">
            <Columns>
                 <asp:BoundField DataField="tblbookingid" HeaderText="ID" ControlStyle-Width="150" ItemStyle-Width="50" HeaderStyle-CssClass="text-center" ItemStyle-CssClass="text-center"
                    ControlStyle-Height="150" ItemStyle-Height="150" />
                 <asp:BoundField DataField="tblbookingName" HeaderText="Name" ControlStyle-Width="150" ItemStyle-Width="50" HeaderStyle-CssClass="text-center" ItemStyle-CssClass="text-center"
                    ControlStyle-Height="150" ItemStyle-Height="150" />
                 <asp:BoundField DataField="tblbookingAddress" HeaderText="Address" ControlStyle-Width="150" ItemStyle-Width="50" HeaderStyle-CssClass="text-center" ItemStyle-CssClass="text-center"
                    ControlStyle-Height="150" ItemStyle-Height="150" />
                  <asp:BoundField DataField="tblbookingMobino" HeaderText="MobileNo" ControlStyle-Width="150" ItemStyle-Width="50" HeaderStyle-CssClass="text-center" ItemStyle-CssClass="text-center"
                    ControlStyle-Height="150" ItemStyle-Height="150" />
                 <asp:BoundField DataField="tblbookingFunName" HeaderText="FunctionName" ControlStyle-Width="150" ItemStyle-Width="50" HeaderStyle-CssClass="text-center" ItemStyle-CssClass="text-center"
                    ControlStyle-Height="150" ItemStyle-Height="150" />
                <asp:BoundField DataField="tblbookingPerson" HeaderText="FunctionPerson" ControlStyle-Width="150" ItemStyle-Width="50" HeaderStyle-CssClass="text-center" ItemStyle-CssClass="text-center"
                    ControlStyle-Height="150" ItemStyle-Height="150" />
                   <asp:BoundField DataField="tblbookingDat" HeaderText="Date" ControlStyle-Width="150" ItemStyle-Width="50" HeaderStyle-CssClass="text-center" ItemStyle-CssClass="text-center"
                    ControlStyle-Height="150" ItemStyle-Height="150" />
                 <asp:BoundField DataField="tblbookingTime" HeaderText="Time" ControlStyle-Width="150" ItemStyle-Width="50" HeaderStyle-CssClass="text-center" ItemStyle-CssClass="text-center"
                    ControlStyle-Height="150" ItemStyle-Height="150" />
                 <asp:BoundField DataField="rgEmail" HeaderText="Email" ControlStyle-Width="150" ItemStyle-Width="50" HeaderStyle-CssClass="text-center" ItemStyle-CssClass="text-center"
                    ControlStyle-Height="150" ItemStyle-Height="150" />
                 <asp:BoundField DataField="tblbookingaudiosystem" HeaderText="AudioSystem" ControlStyle-Width="150" ItemStyle-Width="50" HeaderStyle-CssClass="text-center" ItemStyle-CssClass="text-center"
                    ControlStyle-Height="150" ItemStyle-Height="150" />
                <asp:BoundField DataField="tblbookingviedosystem" HeaderText="VideoSystem" ControlStyle-Width="150" ItemStyle-Width="50" HeaderStyle-CssClass="text-center" ItemStyle-CssClass="text-center"
                    ControlStyle-Height="150" ItemStyle-Height="150" />
                 <asp:BoundField DataField="tblbookinglightsystem" HeaderText="LightSystem" ControlStyle-Width="150" ItemStyle-Width="50" HeaderStyle-CssClass="text-center" ItemStyle-CssClass="text-center"
                    ControlStyle-Height="150" ItemStyle-Height="150" />
                <asp:BoundField DataField="tblbookingdecorationdesing" HeaderText="DesignName" ControlStyle-Width="150" ItemStyle-Width="50" HeaderStyle-CssClass="text-center" ItemStyle-CssClass="text-center"
                    ControlStyle-Height="150" ItemStyle-Height="150" />
                <asp:BoundField DataField="tblbookingdecorationprice" HeaderText="DesignPrice" ControlStyle-Width="150" ItemStyle-Width="50" HeaderStyle-CssClass="text-center" ItemStyle-CssClass="text-center"
                    ControlStyle-Height="150" ItemStyle-Height="150" />
                <asp:BoundField DataField="tblbookingdishname" HeaderText="DishName" ControlStyle-Width="150" ItemStyle-Width="50" HeaderStyle-CssClass="text-center" ItemStyle-CssClass="text-center"
                    ControlStyle-Height="150" ItemStyle-Height="150" />
                <asp:BoundField DataField="tblbookingdishprice" HeaderText="DishPrice" ControlStyle-Width="150" ItemStyle-Width="50" HeaderStyle-CssClass="text-center" ItemStyle-CssClass="text-center"
                    ControlStyle-Height="150" ItemStyle-Height="150" />
                <asp:BoundField DataField="tblbookinggrandtotal" HeaderText="Total Bill" ControlStyle-Width="150" ItemStyle-Width="50" HeaderStyle-CssClass="text-center" ItemStyle-CssClass="text-center"
                    ControlStyle-Height="150" ItemStyle-Height="150" />
            
             <asp:CommandField ButtonType="Button" ShowDeleteButton="true" ItemStyle-CssClass="text-center pt-5" ControlStyle-Width="60" ItemStyle-Width="1"
                    ControlStyle-CssClass="btn btn-danger  w-100" ControlStyle-ForeColor="White" ControlStyle-Font-Size="15px" />
            </Columns>

            <EmptyDataTemplate>
                <div class="text-center">Record Not Available</div>
            </EmptyDataTemplate>
        </asp:GridView>

     </div>
</asp:Content>
