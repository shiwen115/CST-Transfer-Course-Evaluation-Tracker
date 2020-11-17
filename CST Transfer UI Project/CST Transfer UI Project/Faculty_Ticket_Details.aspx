<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Page.Master" AutoEventWireup="true" CodeBehind="Faculty_Ticket_Details.aspx.cs" Inherits="CST_Transfer_UI_Project.Faculty_Ticket_Details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Page_Name" runat="server">
    <h3>Ticket Details
        <p style="float: right; font-size:medium">Joel Sheffield</p>
    </h3>
    <div class="ClaimDisplay">
        <div class="mr-1"><asp:Label ID="lblClaim" runat="server" Text="FA:"></asp:Label> </div>
        <div>
            <input class="text-center" type="text" id="txtClaim" name="txtClaim" value="Unclaimed" runat="server"/>
        </div>
    </div>
</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <link href="CSS/Faculty_Ticket_Details.css" rel="stylesheet" />

    <div class="container mb-3">
        <div class="row justify-content-center">
            <div class="FormHeader d-flex">

                <div class="col-1 align-self-center text-center">
                    <div class="btnUpload2"><asp:Button ID="btnClaimTicket" runat="server" Text="Claim Ticket" OnClick="btnClaimTicket_Click" /></div>
                </div>

                <div class="col-10">
                    <p class="text-center font-weight-bold Title">Ticket 123456</p>
                </div>
            </div>

        </div>

        <div class="row">
            <div class="col-sm-3 col-md-1 text-center">

                <div class="StatusBox">
                    <div class="StatusLine">
                        <div><img src="Images/Uploading.png" /></div>
                        <div><asp:Label ID="b" runat="server" Text="Awaiting Upload"></asp:Label></div>
                    </div>
                
                    <div class="StatusDivider"></div>

                    <div class="StatusLine">
                        <div><img src="Images/Unclaimed.png" /></div>
                        <div><asp:Label ID="lblStatus2" runat="server" Text="Unclaimed"></asp:Label></div>
                    </div>
                
                    <div class="StatusDivider"></div>

                    <div class="StatusLine">
                        <div><img src="Images/Evaluating.jpg" /></div>
                        <div><asp:Label ID="lblStatus3" runat="server" Text="Evaluating"></asp:Label></div>
                    </div>
                
                    <div class="StatusDivider"></div>

                    <div class="StatusLine">
                        <div><img src="Images/Complete.jpg" /></div>
                        <div><asp:Label ID="lblStatus4" runat="server" Text="Complete"></asp:Label></div>
                    </div>
                 </div>
            </div>



            <div class="col-sm-3 col-md-2 offset-1 MarginLabel">
               <div><asp:Label ID="lblTUID" runat="server" Text="Selected TUID:"></asp:Label></div>
                <div><asp:Label ID="lblStudentName" runat="server" Text="Student Name:"></asp:Label></div>
                <div><asp:Label ID="lblTUniversity" runat="server" Text="Transfer University:"></asp:Label></div>
                <div><asp:Label ID="lblSemesterTaken" runat="server" Text="Semester Taken:"></asp:Label></div>
                <div><asp:Label ID="lblCourseName" runat="server" Text="Course Name:"></asp:Label></div>
                <div><asp:Label ID="lblCourseNumber" runat="server" Text="Course Number:"></asp:Label></div>
                <div><asp:Label ID="lblCourseGrade" runat="server" Text="Course Grade:"></asp:Label></div>
                <div><asp:Label ID="lblMajor" runat="server" Text="Major:"></asp:Label></div>
                <div><asp:Label ID="lblLinktoCD" runat="server" Text="Link to Course Description:"></asp:Label></div>
                <div><asp:Label ID="lblDateCreated" runat="server" Text="Date Created:"></asp:Label></div>
                <div><asp:Label ID="lblDateClosed" runat="server" Text="Date Closed:"></asp:Label></div>
                <div><asp:Label ID="lblCourseSyllabus" runat="server" Text="Course Syllabus:"></asp:Label></div>

                <div><asp:Label ID="lblCourseTranscript" runat="server" Text="Course Transcript:"></asp:Label></div>
                <div><asp:Label ID="lblAdditionalDoc" runat="server" Text="Additional Documentation:" Visible="True"></asp:Label></div>

                <div><asp:Label ID="lblAdvisorNote" runat="server" Text="Advisor's Note:"></asp:Label></div>
               
            </div>

            <div class="col-sm-5 col-md-2 MarginInput">
                <div><asp:TextBox ID="txtTUID" Text="915386450" runat="server" Enabled="False"></asp:TextBox></div>
                <div><asp:TextBox ID="txtStudentName" Text="John Doe" runat="server" Enabled="False"></asp:TextBox></div>
                <div><asp:TextBox ID="txtTUniversity" Text="Penn State University" runat="server" Enabled="False"></asp:TextBox></div>
                <div><asp:TextBox ID="txtSemesterTaken" Text="Fall 2019" runat="server" Enabled="False"></asp:TextBox></div>
                <div><asp:TextBox ID="txtCourseName" Text="Data Warehousing" runat="server" Enabled="False"></asp:TextBox></div>
                <div><asp:TextBox ID="txtCourseNumber" Text="INFSY 555" runat="server" Enabled="False"></asp:TextBox></div>
                <div><asp:TextBox ID="txtCourseGrade" Text="B+" runat="server" Enabled="False"></asp:TextBox></div>
                <div><asp:TextBox ID="txtMajor" Text="Information Systems" runat="server" Enabled="False"></asp:TextBox></div>
                <div><asp:TextBox ID="txtLinktoCD" Text="https://bulletine.psu.edu/graduate.." runat="server" Enabled="False"></asp:TextBox></div>
                <div><asp:TextBox ID="txtDateCreated" Text="08-20-2020" runat="server" Enabled="False"></asp:TextBox></div>
                <div><asp:TextBox ID="txtDateClosed" Text="09-01-2020" runat="server" Enabled="False"></asp:TextBox></div>

                <div class="btnUpload2"><asp:Button ID="btnDownloadSyllabus" runat="server" Text="Download Syllabus" Enabled="True" OnClick="btnUploadSyllabus_Click1"/></div>

                <div class="btnUpload2"><asp:Button ID="btnDownloadTranscript" runat="server" Text="Upload Transcript" Enabled="True" Visible="True" OnClick="btnDownloadTranscript_Click" /></div>
                <div class="btnUpload2"><asp:Button ID="btnDownloadDocs" runat="server" Text="Download Documents" Enabled="True" Visible="True" OnClick="btnUploadedDoc_Click" /></div>

                <div class="NoteInput"><asp:TextBox ID="txtAdvisorNote" class="CommentBox" Text="Incorrect course syllabus information." runat="server" Enabled="False"></asp:TextBox></div>
            </div>

            <div class="col-sm-8 col-md-3 d-block offset-1">

                <div class="d-flex justify-content-around"> 
                    <div><asp:Label ID="lblCurrentStatus" runat="server" Text="Current Ticket Status:"></asp:Label> </div>
                        <div class="ml-1"> <asp:DropDownList ID="ddlStatus" runat="server" Enabled="False">
                            <asp:ListItem>Awaiting Upload</asp:ListItem>
                            <asp:ListItem>Unclaimed</asp:ListItem>
                            <asp:ListItem>Evaluating</asp:ListItem>
                            <asp:ListItem>Complete</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                </div>

                <div class="EvalBox d-block text-center">
                    <div class="text-center"><h3>Course Re-Evaluation</h3></div>
                    <div class="font-weight-bold mt-1"><asp:Label ID="lblEDepartment" runat="server" Text="Department"></asp:Label> </div>
                    <div><asp:TextBox ID="txtEDepartment" runat="server" Visible="True" Text="Computer Information Science (CIS)" Enabled="False"></asp:TextBox></div>

                    <div class="font-weight-bold mt-1"><asp:Label ID="lblECourseID" runat="server" Text="CourseID"></asp:Label> </div>
                    <div><asp:TextBox ID="txtECourseID" runat="server" Text="CIS 2168" Enabled="False"></asp:TextBox></div>

                     <div class="font-weight-bold mt-1"><asp:Label ID="lblECourseName" runat="server" Text="Course Name"></asp:Label> </div>
                    <div><asp:TextBox ID="TxtECourseName" runat="server" Visible="True" Text="Data Structures" Enabled="False"></asp:TextBox></div>

                </div>
            </div>

            <div class="col-sm-2">
                <asp:Label ID="lblMessage" runat="server" Text="" CssClass="Message"></asp:Label>
            </div>
        </div>

        <div class="row">
            <div class="col-sm-2 offset-3 align mt-1 mb-3">
                 <div class="btnEdit2"><asp:Button ID="btnEdit" runat="server" Text="EDIT" OnClick="btnEdit_Click" /></div>
            </div>
        </div>

    </div>

</asp:Content>
