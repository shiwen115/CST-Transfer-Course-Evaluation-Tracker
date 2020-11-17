<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Page.Master" AutoEventWireup="true" CodeBehind="Student_Overview.aspx.cs" Inherits="CST_Transfer_UI_Project.Student_Overview" %>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="CSS/Student_Overview.css" />
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="Page_Name" runat="server">
    <h3>Ticket Overview
        <p style="float: right; font-size:medium">John Doe</p>
        </h3>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="mainContent">

        <!--Drop Down Filter-->
        <asp:DropDownList id="statusFilter" AutoPostBack="true" OnSelectedIndexChanged="Status_Changed" runat="server" style="margin-left: 26%; margin-top: 5em;">

                  <asp:ListItem Selected="true" Value="all"> All </asp:ListItem>
                  <asp:ListItem Value="Uploading"> Uploading </asp:ListItem>
                  <asp:ListItem Value="Unclaimed"> Unclaimed </asp:ListItem>
                  <asp:ListItem Value="Evaluating"> Evaluating </asp:ListItem>
                  <asp:ListItem Value="Complete"> Complete </asp:ListItem>

               </asp:DropDownList>

        <!--Gridview-->
        <asp:GridView ID="gvStudentTickets" runat="server" AutoGenerateColumns="False" style="margin-left: auto; margin-right: auto; margin-top:5em;" CellPadding="15">
            <Columns>
                <asp:BoundField DataField="Status" HeaderText="Status" />
                <asp:BoundField DataField="DateCreated" HeaderText="Date Created" />
                <asp:BoundField DataField="TicketID" HeaderText="Ticket ID" />
                <asp:BoundField DataField="TransferCourse" HeaderText="Transfer Course" />
                <asp:BoundField DataField="StudentName" HeaderText="Student Name" />
                <asp:BoundField DataField="TransferUniversity" HeaderText="Transfer University" />
                <asp:BoundField DataField="Department" HeaderText="Department" />
                <asp:TemplateField HeaderText="View">
                    <ItemTemplate>
                        <asp:Button ID="btnView" onclick="btnView_Clicked" runat="server" Text="View" />
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>






    <!--
    <div class="container">
        <div class="dropdown">
            <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                Ticket Status
            </button>
            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                <a class="dropdown-item" href="#">Uploading</a>
                <a class="dropdown-item" href="#">Evaluating</a>
                <a class="dropdown-item" href="#">Closed</a>
            </div>
        </div>

        <div class="form-group">
            <label>Search By TUID: </label>
            <asp:TextBox class="form-control col-2" ID="TextBox1" runat="server" placeholder=""></asp:TextBox>
        </div>

        <div class="dropdown">
            <button class="btn btn-secondary dropdown-toggle" type="button" id="dropButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                Filter Departments
            </button>
            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                <a class="dropdown-item" href="#">Biology</a>
                <a class="dropdown-item" href="#">Chemistry</a>
                <a class="dropdown-item" href="#">CIS</a>
                <a class="dropdown-item" href="#">Earth/Env.</a>
                <a class="dropdown-item" href="#">Math</a>
                <a class="dropdown-item" href="#">Physics</a>
            </div>
        </div>
        <br />
        <br />

        <div class="card">
            <div class="card-body">
                <table id="ta" class="table" style="table-layout: fixed;">
                    <tr>
                        <td>Status</td>
                        <td>Date Created</td>
                        <td>TUID</td>
                        <td>Ticket ID</td>
                        <td>Transfer Course</td>
                        <td>Student Name</td>
                        <td>Transfer University</td>
                        <td>Department</td>
                        <td></td>
                    </tr>
                </table>

                <table class="table table-bordered table-striped" style="table-layout: fixed;">
                    <tr>
                        <td>Closed</td>
                        <td>06-20-2020</td>
                        <td>915386450</td>
                        <td>12356</td>
                        <td>BIO-630</td>
                        <td>John Doe</td>
                        <td>Penn State University</td>
                        <td>Biology</td>
                        <td class="form-group">
                            <asp:Button class="btn btn-light btn-block btn-xs" ID="Button3" runat="server" Text="View" />
                        </td>
                    </tr>

                    <tr>
                        <td>Evaluating</td>
                        <td>09-01-2019</td>
                        <td>918469241</td>
                        <td>654321</td>
                        <td>CIS3344</td>
                        <td>Bill Smith</td>
                        <td>Ohio State</td>
                        <td>Computer & Information Sciences</td>
                        <td class="form-group">
                            <asp:Button class="btn btn-light btn-block btn-xs" ID="Button4" runat="server" Text="View" />
                        </td>
                    </tr>

                    <tr>
                        <td>Waiting upload</td>
                        <td>10-05-2020</td>
                        <td>915386450</td>
                        <td>654321</td>
                        <td>CHEM-204</td>
                        <td>John Doe</td>
                        <td>Penn State University</td>
                        <td>Chemistry</td>
                        <td class="form-group">
                            <asp:Button class="btn btn-light btn-block btn-xs" ID="Button1" runat="server" Text="View" />
                        </td>
                    </tr>

                    <tr>
                        <td>Waiting upload</td>
                        <td>12-28-2018</td>
                        <td>916237951</td>
                        <td>956780</td>
                        <td>CIS3318</td>
                        <td>Kristen Thompson</td>
                        <td>Drexel</td>
                        <td>Computer & Information Sciences</td>
                        <td class="form-group">
                            <asp:Button class="btn btn-light btn-block btn-xs" ID="Button2" runat="server" Text="View" />
                        </td>
                    </tr>

                    <tr>
                        <td>CLosed</td>
                        <td>08-21-2020</td>
                        <td>916237951</td>
                        <td>701256</td>
                        <td>Phys-119</td>
                        <td>Rick Sanchez</td>
                        <td>Ursinus</td>
                        <td>Physics</td>
                        <td class="form-group">
                            <asp:Button class="btn btn-light btn-block btn-xs" ID="Button5" runat="server" Text="View" />
                        </td>
                    </tr>
                </table>
            </div>
        </div>

        <div class="row">
            <div class="col">
                <div class="dropdown">
                    <button class="btn btn-default dropdown-toggle" type="button" id="dropdownButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Entries
                    </button>
                    <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                        <a class="dropdown-item" href="#">1</a>
                        <a class="dropdown-item" href="#">2</a>
                        <a class="dropdown-item" href="#">3</a>
                        <a class="dropdown-item" href="#">4</a>
                        <a class="dropdown-item" href="#">5</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
        -->
</asp:Content>
