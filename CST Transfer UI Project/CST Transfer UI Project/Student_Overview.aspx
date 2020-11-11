<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Page.Master" AutoEventWireup="true" CodeBehind="Student_Overview.aspx.cs" Inherits="CST_Transfer_UI_Project.Student_Overview" %>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="CSS/Student_Overview.css" />
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="header">
        <div class="alert" role="alert">
             Ticket Dashboard
        </div>
    </div>

    <div id="mainContent">
        <asp:GridView ID="gvStudentTickets" runat="server"></asp:GridView>
    </div>

</asp:Content>
