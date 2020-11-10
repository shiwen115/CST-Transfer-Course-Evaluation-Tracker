﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="CST_Transfer_UI_Project.HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
    <title></title>

    <style>
            .container {
            background-color: black;
            }
           
</style>

</head>
<body>

    <div class="container">
        <div class="row">

            <div class="col-xs-1">
                <img src="..." class="rounded float-left" alt="...">
            </div>
            <div class="col text-left text-white">
                <p>College of Science & Technology</p>
                <h1>E-COURSE TRANSFER DASHBOARD</h1>
            </div>
        </div>

        <div class="row-lg-1 text-white">
            <div class="col text-white">
                <nav class="navbar navbar-expand-lg navbar-light bg-light">
                    <a class="navbar-brand" href="#">Navbar</a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse text-white" id="navbarNav" >
                        <ul class="navbar-nav">
                            <li class="nav-item active text-white">
                                <a class="nav-link" href="#">Tickets <span class="sr-only">(current)</span></a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">Create Ticket</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">Rules</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link " href="#">Equivalency Tool</a>
                            </li>
                        </ul>
                    </div>
                </nav>
            </div>
            <div class="col text-black-50">
                <h2>TICKET DASHBOARD</h2>
            </div>
            <div class="col">
            </div>
        </div>
    </div>


    <form id="form1" runat="server">
        <div>
        </div>
    </form>
</body>
</html>
