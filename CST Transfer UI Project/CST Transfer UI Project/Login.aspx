<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Page.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CST_Transfer_UI_Project.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Page_Name" runat="server">
    Log In
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="row" style="height: 85vh; width: 99vw">
            <div id="login" class="col-xs-3 mx-auto my-auto p-3 text-center" style="border-radius: 5px; background-color: #C4C4C4; box-shadow: 0px 0px 4px">

                <!-- Login Header -->
                <div class="h3 text-center">
                    Login
                </div>

                <!-- Error Label -->
                <asp:Label runat="server" ID="lblError" />


                <!-- Email -->
                <div>
                    <div class="text-left">
                        <asp:Label Text="Email: " runat="server" ID="lblName" Style="text-align: left" />
                        <br />
                    </div>

                    <asp:TextBox Placeholder="John Doe" ID="txtEmail" runat="server" />
                </div>

                <!-- Password -->
                <div class="mt-3">
                    <div class="text-left">
                        <asp:Label Text="Password: " runat="server" ID="Label1" />
                        <br />
                    </div>

                    <asp:TextBox Placeholder="Password" ID="txtPassword" runat="server" />
                </div>


                <!-- Remeber Me -->
                <div class="form-group form-check text-left">
                    <input type="checkbox" class="form-check-input" id="chbRemember"/>
                    <label class="form-check-label" for="chbRemeber">Remember Me</label>
                </div>


                <!-- Login Button -->
                <div>
                    <asp:Button type="button" class="btn text-white" Text="Login" runat="server" ID="btnLogin" />
                </div>

            </div>
        </div>

</asp:Content>
