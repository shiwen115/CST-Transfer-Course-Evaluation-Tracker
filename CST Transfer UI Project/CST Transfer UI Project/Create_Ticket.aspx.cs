using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CST_Transfer_UI_Project
{
    public partial class Create_Ticket : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAddAnotherCourse_Click(object sender, EventArgs e)
        {

            //Displays all the labels for adding a new course
            lblStudentTUID2.Visible = true;
            lblCourse2.Visible = true;
            lblCourseCredits2.Visible = true;
            lblTransferUniversity2.Visible = true;
            lblSemesterTaken2.Visible = true;
            lblTempleDepartment2.Visible = true;

            //Displays all the textboxes for adding a new course
            txtStudentTUID2.Visible = true;
            txtCourseNum2.Visible = true;
            txtCourseCredits2.Visible = true;
            txtTransferUniversity2.Visible = true;
            txtSemesterTaken2.Visible = true;
            txtTempleDepartment2.Visible = true;

            //Display the new add course button and disable the first course button
            btnAddAnotherCourse2.Visible = true;
            btnAddAnotherCourse.Visible = false;
            btnSubmit.Visible = false;

            courseTwo.Visible = true;
            btnSubmitTwoCourses.Visible = true;


        }

        protected void btnAddAnotherCourse2_Click(object sender, EventArgs e)
        {
            //Displays all the labels for adding a new course
            lblStudentTUID3.Visible = true;
            lblCourse3.Visible = true;
            lblCourseCredits3.Visible = true;
            lblTransferUniversity3.Visible = true;
            lblSemesterTaken3.Visible = true;
            lblTempleDepartment3.Visible = true;

            //Displays all the textboxes for adding a new course
            txtStudentTUID3.Visible = true;
            txtCourseNum3.Visible = true;
            txtCourseCredits3.Visible = true;
            txtTransferUniversity3.Visible = true;
            txtSemesterTaken3.Visible = true;
            txtTempleDepartment3.Visible = true;


            //Display the new add course button and disable the first course button
            btnAddAnotherCourse3.Visible = true;
            btnAddAnotherCourse2.Visible = false;
            btnSubmitTwoCourses.Visible = false;

            courseThree.Visible = true;
            btnSubmitThreeCourses.Visible = true;

        }

        protected void btnAddAnotherCourse3_Click(object sender, EventArgs e)
        {
            lblStudentTUID4.Visible = true;
            lblCourse4.Visible = true;
            lblCourseCredits4.Visible = true;
            lblTransferUniversity4.Visible = true;
            lblSemesterTaken4.Visible = true;
            lblTempleDepartment4.Visible = true;

            txtStudentTUID4.Visible = true;
            txtCourseNum4.Visible = true;
            txtCourseCredits4.Visible = true;
            txtTransferUniversity4.Visible = true;
            txtSemesterTaken4.Visible = true;
            txtTempleDepartment4.Visible = true;


            //btnAddAnotherCourse4.Visible = true;
            btnAddAnotherCourse3.Visible = false;
            courseFour.Visible = true;

            btnSubmitFourCourses.Visible = true;
            btnSubmitThreeCourses.Visible = false;

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            String studentTUID = Request["txtStudentTUID"];
            String courseNumber = Request["txtCourseNum"];
            String courseCredits = Request["txtCourseCredits"];
            String university = Request["txtTransferUniversity"];
            String semesterTaken = Request["txtSemesterTaken"];
            String department = Request["txtTempleDepartment"];
            //Response.Redirect("");


        }

        protected void btnSubmitTwoCourses_Click(object sender, EventArgs e)
        {
            //First Ticket
            String studentTUID = Request["txtStudentTUID"];
            String courseNumber = Request["txtCourseNum"];
            String courseCredits = Request["txtCourseCredits"];
            String university = Request["txtTransferUniversity"];
            String semesterTaken = Request["txtSemesterTaken"];
            String department = Request["txtTempleDepartment"];

            //Second Ticket
            String studentTUID2 = Request["txtStudentTUID2"];
            String courseNumber2 = Request["txtCourseNum2"];
            String courseCredits2 = Request["txtCourseCredits2"];
            String university2 = Request["txtTransferUniversity2"];
            String semesterTaken2 = Request["txtSemesterTaken2"];
            String department2 = Request["txtTempleDepartment2"];

        }
    }
}