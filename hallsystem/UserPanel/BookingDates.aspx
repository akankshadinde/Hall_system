<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="BookingDates.aspx.cs" Inherits="hallsystem.UserPanel.BookingDates" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid pt-5 bg-light">
        <div class="text-center mb-3">
            <span class="font-weight-bold h3 text-center">Booking Dates</span>
        </div>
        <asp:GridView ID="GridViewShowData" runat="server" ShowHeaderWhenEmpty="True" CssClass="table table-striped table-bordered table-condensed table-striped" AutoGenerateColumns="False" DataKeyNames="tblbookingid">
            <Columns>
                <asp:BoundField DataField="tblbookingid" HeaderText="ID" ControlStyle-Width="150" ItemStyle-Width="50" HeaderStyle-CssClass="text-center" ItemStyle-CssClass="text-center"
                    ControlStyle-Height="50" ItemStyle-Height="50" />
                <asp:BoundField DataField="tblbookingDat" HeaderText="Dates" ControlStyle-Width="150" ItemStyle-Width="50" HeaderStyle-CssClass="text-center" ItemStyle-CssClass="text-center"
                    ControlStyle-Height="50" ItemStyle-Height="50" />

            </Columns>

            <EmptyDataTemplate>
                <div class="text-center">No Dates Booking</div>
            </EmptyDataTemplate>
        </asp:GridView>

    </div>
</asp:Content>
