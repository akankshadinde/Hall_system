<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPanel/Admin.Master" AutoEventWireup="true" CodeBehind="BookingReport.aspx.cs" Inherits="hallsystem.AdminPanel.BookingReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <div class="container-fluid pt-5">
        <center>
              <b>Date: </b>&nbsp;&nbsp;
          <asp:TextBox ID="TextBox1" runat="server" TextMode="Date" AutoPostBack="True" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
              &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <b>Year : </b>&nbsp;&nbsp;
                    <asp:DropDownList ID="DropDownYear" runat="server" OnSelectedIndexChanged="DropDownYear_SelectedIndexChanged" 
                        AutoPostBack="True">
                        <asp:ListItem>2019</asp:ListItem>
                        <asp:ListItem>2020</asp:ListItem>
                        <asp:ListItem>2021</asp:ListItem>
                        <asp:ListItem>2022</asp:ListItem>
                        <asp:ListItem>2023</asp:ListItem>
                        <asp:ListItem>2024</asp:ListItem>
                        <asp:ListItem>2025</asp:ListItem>
                    </asp:DropDownList>
             </center>
        <br />
        <br />
        <br />
        <br />


      
        <asp:GridView ID="GridViewShowData" runat="server" ShowHeaderWhenEmpty="True" CssClass="table table-striped table-bordered table-condensed table-striped" AutoGenerateColumns="False" GridLines="None">

            <Columns>       
                <asp:BoundField DataField="tblbookingid" HeaderText="ID" ControlStyle-Width="150" ItemStyle-Width="50" HeaderStyle-CssClass="text-center" ItemStyle-CssClass="text-center"
                    ControlStyle-Height="50" ItemStyle-Height="50" />
                <asp:BoundField DataField="tblbookingName" HeaderText="Name" ControlStyle-Width="150" ItemStyle-Width="50" HeaderStyle-CssClass="text-center" ItemStyle-CssClass="text-center"
                    ControlStyle-Height="50" ItemStyle-Height="50" />
                <asp:BoundField DataField="tblbookingMobino" HeaderText="Mobile No" ControlStyle-Width="150" ItemStyle-Width="50" HeaderStyle-CssClass="text-center" ItemStyle-CssClass="text-center"
                    ControlStyle-Height="50" ItemStyle-Height="50" />
                <asp:BoundField DataField="tblbookingFunName" HeaderText="Function Name" ControlStyle-Width="150" ItemStyle-Width="50" HeaderStyle-CssClass="text-center" ItemStyle-CssClass="text-center"
                    ControlStyle-Height="50" ItemStyle-Height="50" />
                <asp:BoundField DataField="tblbookingDat" HeaderText="Date" ControlStyle-Width="150" ItemStyle-Width="50" HeaderStyle-CssClass="text-center" ItemStyle-CssClass="text-center"
                    ControlStyle-Height="50" ItemStyle-Height="50" />
                <asp:BoundField DataField="tblbookinggrandtotal" HeaderText="Total" ControlStyle-Width="150" ItemStyle-Width="50" HeaderStyle-CssClass="text-center" ItemStyle-CssClass="text-center"
                    ControlStyle-Height="50" ItemStyle-Height="50" />
                <asp:BoundField DataField="tblbookingUPIID" HeaderText="UPI ID" ControlStyle-Width="150" ItemStyle-Width="50" HeaderStyle-CssClass="text-center" ItemStyle-CssClass="text-center"
                    ControlStyle-Height="50" ItemStyle-Height="50" />
            </Columns>
            

            <EmptyDataTemplate>
                <div class="text-center">Record Not Available</div>
            </EmptyDataTemplate>

        </asp:GridView>
          <asp:Label ID="Label1" runat="server" CssClass="float-right font-weight-bold" Text=""></asp:Label>
        <center>
                        <asp:Button ID="BtnExport" runat="server" Text="Export To PDF" Width="200" CssClass="btn btn-warning"
                            OnClick="BtnExport_Click" /></center>
    </div>
    <br /><br /><br /><br />
</asp:Content>
