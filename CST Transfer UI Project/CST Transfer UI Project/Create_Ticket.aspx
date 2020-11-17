<%@ Page Title="Create Ticket" Language="C#" MasterPageFile="~/Master_Page.Master" AutoEventWireup="true" CodeBehind="Create_Ticket.aspx.cs" Inherits="CST_Transfer_UI_Project.Create_Ticket" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="Page_Name" runat="server">
Create Ticket
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <style>
        p{
            text-align: left;
            font-family: Roboto;
            font-weight: bold;
            border-radius: 8px;
            border-radius: 10px;
        }
        h2{
            text-align:center;
            font-weight: bold;
            font-family: Roboto;
            font-size: 36px;
        }
        .container{
            border-top: 1px solid black;
            border-left: 1px solid black;
            border-right: 1px solid black;
            border-bottom: 1px solid black;
        }
        #createTicket{
            background-color: #F1E7E7;
            height: 75px;
            border-left: 1px solid black;
            border-right: 1px solid black;
            border-bottom: 1px solid black;
            text-align: left;
            color: black;
            font-size: 20px;
            padding-left:140px;
            padding-top:10px; 
        }
        h3{
            margin-left: 60px;
            padding: 14px;
            font-weight: bold;
            font-family: Merriweather;
            font-size: 22px;
        }
</style>

        
            <div class="container">
            <h2>Create Ticket</h2>
                </div>
               <div class="container  ">
                   <br />
                   
  <div class="row">
    <div class="col-sm-2">
        <p> 
        <asp:Label ID="lblStudentTUID" runat="server" Text="Student TUID:" ></asp:Label><br /><br />
        <asp:Label ID="lblCourse" runat="server" Text="Course #: "></asp:Label><br /><br />
        <asp:Label ID="lblCourseCredits" runat="server" Text="Course Credits:"></asp:Label><br /><br />
        <asp:Button ID="btnAddAnotherCourse" runat="server" Text="Add Another Course" BackColor="White" BorderColor="Black" Font-Bold="True" OnClick="btnAddAnotherCourse_Click" /><br /><br />
         <asp:Button ID="btnSubmit" runat="server" Text="SUBMIT" BackColor="#9E1C35" BorderColor="Black" Width="163px" Font-Bold="True" Font-Names="Garamond" ForeColor="White" BorderStyle="Solid" OnClick="btnSubmit_Click"  />
         

        </p>
    </div>

    <div class="col-sm-3">
        <asp:TextBox ID="txtStudentTUID" runat="server" Height="30px" Width="200px"></asp:TextBox><br /><br />
        <asp:TextBox ID="txtCourseNum" runat="server" Height="30px" Width="200px"></asp:TextBox><br /><br />
        <asp:TextBox ID="txtCourseCredits" runat="server" Height="30px" Width="200px"></asp:TextBox>
    </div>

    <div class="col-sm-2">        
        <p>
        <asp:Label ID="lblTransferUniversity" runat="server" Text="Transfer University:"></asp:Label><br /><br />
        <asp:Label ID="lblSemesterTaken" runat="server" Text="Semester Taken:"></asp:Label><br /><br />
        <asp:Label ID="lblTempleDepartment" runat="server" Text="Temple Department:"></asp:Label>
        </p>
    </div>
      <div class="col-sm">
      <asp:TextBox ID="txtTransferUniversity" runat="server" Height="30px" Width="200px" ></asp:TextBox><br /><br />
          <asp:TextBox ID="txtSemesterTaken" runat="server" Height="30px" Width="200px"></asp:TextBox><br /><br />
          <asp:TextBox ID="txtTempleDepartment" runat="server" Height="30px" Width="200px"></asp:TextBox>
    </div>
  </div> 
                </div>   
     
            <div id="courseTwo" runat="server" Visible="False"> 
         <div class="container " >          
  <div class="row">
    <div class="col-sm-2">
         <p>
        <asp:Label ID="lblStudentTUID2" runat="server" Text="Student TUID:" Visible="False"></asp:Label><br /><br />
        <asp:Label ID="lblCourse2" runat="server" Text="Course #: " Visible="False"></asp:Label><br /><br />
        <asp:Label ID="lblCourseCredits2" runat="server" Text="Course Credits:" Visible="False"></asp:Label><br /><br />
        <asp:Button ID="btnAddAnotherCourse2" runat="server" Text="Add Another Course" BackColor="White" BorderColor="Black" Font-Bold="True" Visible="False"  OnClick="btnAddAnotherCourse2_Click" /><br /><br />
             <asp:Button ID="btnSubmitTwoCourses" runat="server" Text="SUBMIT" Visible="False" BackColor="#9E1C35" BorderColor="Black" Width="163px" Font-Bold="True" ForeColor="White" OnClick="btnSubmitTwoCourses_Click"/>   
             </p>
              </div>
    <div class="col-sm-3">
    <asp:TextBox ID="txtStudentTUID2" runat="server" Height="30px" Width="200px" Visible="False"></asp:TextBox><br /><br />
        <asp:TextBox ID="txtCourseNum2" runat="server" Height="30px" Width="200px" Visible="False"></asp:TextBox><br /><br />
        <asp:TextBox ID="txtCourseCredits2" runat="server" Height="30px" Width="200px" Visible="False"></asp:TextBox>
    </div>
    <div class="col-sm-2">
        <p>  
        <asp:Label ID="lblTransferUniversity2" runat="server" Text="Transfer University:" Visible="False"></asp:Label><br /><br />
        <asp:Label ID="lblSemesterTaken2" runat="server" Text="Semester Taken:" Visible="False"></asp:Label><br /><br />
        <asp:Label ID="lblTempleDepartment2" runat="server" Text="Temple Department:" Visible="False"></asp:Label>
    </p>
            </div>
      <div class="col-sm">
      <asp:TextBox ID="txtTransferUniversity2" runat="server" Height="30px" Width="200px" Visible="False" ></asp:TextBox><br /><br />
          <asp:TextBox ID="txtSemesterTaken2" runat="server" Height="30px" Width="200px" Visible="False"></asp:TextBox><br /><br />
          <asp:TextBox ID="txtTempleDepartment2" runat="server" Height="30px" Width="200px" Visible="False"></asp:TextBox>
    </div>
  </div>
    
               </div>  </div>
 
            
                        <div id="courseThree" runat="server" Visible="False"> 

            <div class="container ">
  <div class="row">
    <div class="col-sm-2">
        <p> 
    <asp:Label ID="lblStudentTUID3" runat="server" Text="Student TUID:" Visible="False"></asp:Label><br /><br />
        <asp:Label ID="lblCourse3" runat="server" Text="Course #: " Visible="False"></asp:Label><br /><br />
        <asp:Label ID="lblCourseCredits3" runat="server" Text="Course Credits:" Visible="False"></asp:Label><br /><br />
        <asp:Button ID="btnAddAnotherCourse3" runat="server" Text="Add Another Course" BackColor="White" BorderColor="Black" Font-Bold="True" Visible="False" OnClick="btnAddAnotherCourse3_Click" /><br /><br />
            <asp:Button ID="btnSubmitThreeCourses" runat="server" Text="SUBMIT"  Visible="False" BackColor="#9E1C35" BorderColor="Black" Width="163px" Font-Bold="True" ForeColor="White" />
        </p>
            </div>
    <div class="col-sm-3">
    <asp:TextBox ID="txtStudentTUID3" runat="server" Height="30px" Width="200px" Visible="False"></asp:TextBox><br /><br />
        <asp:TextBox ID="txtCourseNum3" runat="server" Height="30px" Width="200px" Visible="False"></asp:TextBox><br /><br />
        <asp:TextBox ID="txtCourseCredits3" runat="server" Height="30px" Width="200px" Visible="False"></asp:TextBox>
    </div>
    <div class="col-sm-2">
        <p>
        <asp:Label ID="lblTransferUniversity3" runat="server" Text="Transfer University:" Visible="False"></asp:Label><br /><br />
        <asp:Label ID="lblSemesterTaken3" runat="server" Text="Semester Taken:" Visible="False"></asp:Label><br /><br />
        <asp:Label ID="lblTempleDepartment3" runat="server" Text="Temple Department:" Visible="False"></asp:Label>
   </p>
        </div>
      <div class="col-sm">
      <asp:TextBox ID="txtTransferUniversity3" runat="server" Height="30px" Width="200px" Visible="False" ></asp:TextBox><br /><br />
          <asp:TextBox ID="txtSemesterTaken3" runat="server" Height="30px" Width="200px" Visible="False"></asp:TextBox><br /><br />
          <asp:TextBox ID="txtTempleDepartment3" runat="server" Height="30px" Width="200px" Visible="False"></asp:TextBox>
    </div>
  </div>  

      </div></div>
            
                   
            <div id="courseFour" runat="server" Visible="False"> 
            <div class="container " >
  <div class="row">
    <div class="col-sm-2">
        <p> 
    <asp:Label ID="lblStudentTUID4" runat="server" Text="Student TUID:" Visible="False"></asp:Label><br /><br />
        <asp:Label ID="lblCourse4" runat="server" Text="Course #: " Visible="False"></asp:Label><br /><br />
        <asp:Label ID="lblCourseCredits4" runat="server" Text="Course Credits:" Visible="False"></asp:Label><br /><br />
            <asp:Button ID="btnSubmitFourCourses" runat="server" Text="SUBMIT" Visible="False" BackColor="#9E1C35" BorderColor="Black" Width="163px" Font-Bold="True" ForeColor="White"/>
        </p>
            </div>
    <div class="col-sm-3">
    <asp:TextBox ID="txtStudentTUID4" runat="server" Height="30px" Width="200px" Visible="False"></asp:TextBox><br /><br />
        <asp:TextBox ID="txtCourseNum4" runat="server" Height="30px" Width="200px" Visible="False"></asp:TextBox><br /><br />
        <asp:TextBox ID="txtCourseCredits4" runat="server" Height="30px" Width="200px" Visible="False"></asp:TextBox>
    </div>
    <div class="col-sm-2">
        <p>
        <asp:Label ID="lblTransferUniversity4" runat="server" Text="Transfer University:" Visible="False"></asp:Label><br /><br />
        <asp:Label ID="lblSemesterTaken4" runat="server" Text="Semester Taken:" Visible="False"></asp:Label><br /><br />
        <asp:Label ID="lblTempleDepartment4" runat="server" Text="Temple Department:" Visible="False"></asp:Label>
   </p>
        </div>
      <div class="col-sm">
      <asp:TextBox ID="txtTransferUniversity4" runat="server" Height="30px" Width="200px" Visible="False" ></asp:TextBox><br /><br />
          <asp:TextBox ID="txtSemesterTaken4" runat="server" Height="30px" Width="200px" Visible="False"></asp:TextBox><br /><br />
          <asp:TextBox ID="txtTempleDepartment4" runat="server" Height="30px" Width="200px" Visible="False"></asp:TextBox>
    </div>
  </div>  
        </div></div>
        

</asp:Content>