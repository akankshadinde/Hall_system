<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPanel/Admin.Master" AutoEventWireup="true" CodeBehind="AddCateringPackages.aspx.cs" Inherits="hallsystem.AdminPanel.AddCateringPackages_aspx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <script type="text/javascript">
        function ImagePreview(input) {
            if (input.files && input.files[0]) {
                var reder = new FileReader();
                reder.onload = function (e) {
                    $('#<%=Image1.ClientID%>').prop('src', e.target.result)
                    .width(150)
                    .height(150);
                };
                reder.readAsDataURL(input.files[0]);
                }
            }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid bg-light">
        <div class="text-center pt-md-5 pt-5">
            <h2>AddCateringPackages</h2>
        </div>


        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-4 col-md-8 col-md-4 col-sm-8 col-sm-12">
                     
                    <asp:Label ID="lblid" runat="server" Text="" Visible="False"></asp:Label>
                    <asp:Label ID="lblimgname" runat="server" Text="PlateName"></asp:Label>
                    <asp:TextBox ID="txtPlatename" runat="server" CssClass="form-control w-75" placeholder="Enter PlateName"></asp:TextBox>
                </div>
                <div class="col-lg-4 col-md-8 col-md-4 col-sm-8 col-sm-12 pt-4 ">
                    <asp:Image ID="Image1" runat="server" />

                </div>
            </div>
           

            <div class="row pt-3">
                <div class="col-lg-4  col-md-8 col-md-4 col-sm-8 col-sm-12 ">
                   <asp:Label ID="lblSelecimg" runat="server" Text="Select Image"></asp:Label> 
                    <asp:FileUpload ID="fuImage" runat="server" CssClass="form-control h-auto w-75" onchange="ImagePreview(this);" />
                </div>
            </div>
            <div class="row">
                <div class="col-lg-4  col-md-8 col-md-4 col-sm-8 col-sm-12 pt-3 ">
                     <asp:Label ID="lblimgprice" runat="server" Text="Enter Price"></asp:Label>   
                        <asp:TextBox ID="txtprice" runat="server" CssClass="form-control w-75" placeholder="Enter Price" TextMode="Number"></asp:TextBox>
                    </div>
         
            </div>
                 <div class="row">
                <div class="col-lg-4  col-md-8 col-md-4 col-sm-8 col-sm-12 pt-3 ">
                     <asp:Label ID="lblimgtype" runat="server" Text="Select Type"></asp:Label>    
                        <asp:DropDownList ID="DropDowntype" runat="server" CssClass="form-control w-75">
                            <asp:ListItem>--Select--</asp:ListItem>
                            <asp:ListItem>Veg</asp:ListItem>
                            <asp:ListItem>Non-Veg</asp:ListItem>
                            <asp:ListItem>None</asp:ListItem>
                             
                                
                     </asp:DropDownList>
                    <asp:TextBox ID="txttypeshow" runat="server" CssClass="form-control w-75" Visible="False"></asp:TextBox>
                    </div>
                    
            </div>
        </div>

        <div class="row pt-5">
            <div class="col-lg-4  col-md-8 col-md-4 col-sm-8 col-sm-12 ">
                <asp:Button ID="btnAdd" runat="server" Text="Add" CssClass="btn btn-success w-25 ml-3" OnClick="btnAdd_Click" />
                <asp:Button ID="btnupdate" runat="server" Text="Update" CssClass="btn btn-success w-25 ml-3" Visible="False" OnClick="btnupdate_Click" />
                <asp:Button ID="btnclear" runat="server" Text="Clear" CssClass="btn btn-danger w-25" Visible="False" OnClick="btnclear_Click" />
            </div>

        </div>

    </div>
       <div class="container-fluid pt-5 ">
        <asp:GridView ID="GridView1" runat="server" OnLoad="GridView1_Load" AutoGenerateColumns="False" CssClass="table table-striped table-bordered table-condensed" ShowHeaderWhenEmpty="True" DataKeyNames="tblCateringId" OnSelectedIndexChanged="GridView1_SelectedIndexChanged"  OnRowDeleting="GridView1_RowDeleting">
            <Columns>
                <asp:BoundField DataField="tblCateringId" HeaderText="ID" ControlStyle-Width="150" ItemStyle-Width="50" HeaderStyle-CssClass="text-center" ItemStyle-CssClass="text-center"
                    ControlStyle-Height="150" ItemStyle-Height="150" />
                <asp:BoundField DataField="tblCateringName" HeaderText="Name" ControlStyle-Width="150" ItemStyle-Width="50" HeaderStyle-CssClass="text-center" ItemStyle-CssClass="text-center"
                    ControlStyle-Height="150" ItemStyle-Height="150" />
                <asp:ImageField DataImageUrlField="tblCateringImage" HeaderText="Picture" HeaderStyle-CssClass="text-center" ItemStyle-CssClass="text-center"
                    ControlStyle-Width="150" ItemStyle-Width="50"
                    ControlStyle-Height="150" ItemStyle-Height="150" />
                <asp:BoundField DataField="tblCateringPrice" HeaderText="Price" ControlStyle-Width="150" ItemStyle-Width="50" HeaderStyle-CssClass="text-center" ItemStyle-CssClass="text-center"
                    ControlStyle-Height="150" ItemStyle-Height="150" />
                <asp:BoundField DataField="tblCateringType" HeaderText="Type" ControlStyle-Width="150" ItemStyle-Width="50" HeaderStyle-CssClass="text-center" ItemStyle-CssClass="text-center"
                    ControlStyle-Height="150" ItemStyle-Height="150" />

                <asp:CommandField ButtonType="Button" ShowDeleteButton="true" ItemStyle-CssClass="text-center pt-5" ControlStyle-Width="60" ItemStyle-Width="1"
                    ControlStyle-CssClass="btn btn-danger  w-50" ControlStyle-ForeColor="White" ControlStyle-Font-Size="15px" />

                <asp:CommandField ButtonType="Button" ShowSelectButton="true" ItemStyle-CssClass="text-center pt-5" ControlStyle-Width="60" ItemStyle-Width="10"
                    ControlStyle-CssClass="btn btn-danger w-50" ControlStyle-ForeColor="White" ControlStyle-Font-Size="15px" />





            </Columns>
            <EmptyDataTemplate>
                <div class="text-center">Record Available</div>
            </EmptyDataTemplate>
        </asp:GridView>

    </div>
</asp:Content>
