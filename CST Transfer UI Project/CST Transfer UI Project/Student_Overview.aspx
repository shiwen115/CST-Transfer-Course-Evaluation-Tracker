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
        <asp:GridView ID="gvStudentTickets" runat="server" AutoGenerateColumns="False">
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
                        <asp:Button ID="btnView" runat="server" Text="View" />
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>

</asp:Content>
