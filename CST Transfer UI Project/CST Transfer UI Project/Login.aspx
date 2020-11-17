<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Bootstrap_UI.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>

</head>
<body>
    <form id="form1" runat="server">
        <div class="row" style="height: 99vh; width: 99vw">
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
        </>
    </form>
</body>
</html>
