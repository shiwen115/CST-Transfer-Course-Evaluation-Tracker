<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Page.Master" AutoEventWireup="true" CodeBehind="Faculty_Overview.aspx.cs" Inherits="CST_Transfer_UI_Project.Faculty_Overview" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link rel="stylesheet" href="CSS/Student_Overview.css" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="mainContent">

        <!--Drop Down Status-->
        <asp:DropDownList id="statusFilter" AutoPostBack="true" OnSelectedIndexChanged="Status_Changed" runat="server" style="margin-left: 22%; margin-top: 5em;">

                  <asp:ListItem Selected="true" Value="all"> All </asp:ListItem>
                  <asp:ListItem Value="Uploading"> Uploading </asp:ListItem>
                  <asp:ListItem Value="Unclaimed"> Unclaimed </asp:ListItem>
                  <asp:ListItem Value="Evaluating"> Evaluating </asp:ListItem>
                  <asp:ListItem Value="Complete"> Complete </asp:ListItem>

        </asp:DropDownList>


        <!--Search Box-->
        <asp:Label ID="lblSearch" runat="server" Text="Search TUID" style="margin-left:40em;"></asp:Label>
        <asp:TextBox id="txtSearch" runat="server" type="text"></asp:TextBox>
        <asp:Button ID="btnSearch" class="button" runat="server" Text="Search" onclick="btnSearch_Clicked"/> 
        <br />

        <!--Drop Down Departments-->
        <asp:Label ID="lblFilterDep" runat="server" Text="Filter Department" style="margin-left: 65%;"></asp:Label>
        <asp:DropDownList id="ddlDepartment" AutoPostBack="true" OnSelectedIndexChanged="Dep_Changed" runat="server" style="margin-top: 2em;">

                  <asp:ListItem Selected="true" Value="all"> All </asp:ListItem>
                  <asp:ListItem Value="Biology"> Biology </asp:ListItem>
                  <asp:ListItem Value="Chemistry"> Chemistry </asp:ListItem>
                  <asp:ListItem Value="Computer & Information Sciences"> CIS </asp:ListItem>
                  <asp:ListItem Value="Earth/Env"> Earth/Environment </asp:ListItem>
                  <asp:ListItem Value="Math"> Math </asp:ListItem>
                  <asp:ListItem Value="Physics"> Physics </asp:ListItem>
        </asp:DropDownList>

        <!--Gridview-->
        <asp:GridView ID="gvStudentTickets" runat="server" AutoGenerateColumns="False" style="margin-left: auto; margin-right: auto; margin-top:5em;" CellPadding="15">
            <Columns>
                <asp:BoundField DataField="Status" HeaderText="Status" />
                <asp:BoundField DataField="DateCreated" HeaderText="Date Created" />
                <asp:BoundField DataField="TUID" HeaderText="TUID" />
                <asp:BoundField DataField="TicketID" HeaderText="Ticket ID" />
                <asp:BoundField DataField="FA" HeaderText="Faculty Advisor" />
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
