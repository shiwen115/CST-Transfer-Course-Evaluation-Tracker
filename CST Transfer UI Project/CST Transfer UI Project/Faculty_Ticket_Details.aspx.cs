using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CST_Transfer_UI_Project
{
    public partial class Faculty_Ticket_Details : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

            }
        }

        protected void btnClaimTicket_Click(object sender, EventArgs e)
        {


            if (txtClaim.Value == "Unclaimed")
            {
                btnEdit.Enabled = true;
                txtClaim.Value = "Claimed";
                lblMessage.Text = "You Have Been Assigned To This Ticket!";
            }
            else
            {
                btnEdit.Enabled = false;
                txtClaim.Value = "Unlaimed!";
                lblMessage.Text = "You Have Been Un-Assigned From This Ticket!";
            }
        }

        protected void btnEdit_Click(object sender, EventArgs e)
        {
            if (btnEdit.Text == "EDIT")
            {
                btnEdit.Text = "SUBMIT";

                txtAdvisorNote.Enabled = true;

                ddlStatus.Enabled = true;
                txtEDepartment.Enabled = true;
                txtECourseID.Enabled = true;
                TxtECourseName.Enabled = true;

                lblMessage.Text = "You Have Entered Edit View!";
            }
            else if (btnEdit.Text == "SUBMIT" || btnEdit.Enabled == false)
            {
                btnEdit.Text = "EDIT";

                txtAdvisorNote.Enabled = false;

                ddlStatus.Enabled = false;
                txtEDepartment.Enabled = false;
                txtECourseID.Enabled = false;
                TxtECourseName.Enabled = false;

                lblMessage.Text = "You Have Submited Changes!";
            }



            btnDownloadSyllabus.Enabled = true;
            if (btnDownloadSyllabus.Enabled == true)
            {
                btnDownloadSyllabus.BackColor = Color.Red;
            }
            else
            {
                btnDownloadSyllabus.BackColor = Color.Gray;
            }

        }

        protected void btnUploadSyllabus_Click1(object sender, EventArgs e)
        {
            lblMessage.Text = "You have Downloaded Student's Syllabus";
        }

        protected void btnDownloadTranscript_Click(object sender, EventArgs e)
        {
            lblMessage.Text = "You have Downloaded Student's Transcript";
        }

        protected void btnUploadedDoc_Click(object sender, EventArgs e)
        {
            lblMessage.Text = "You have Downloaded Student's Additional Document";
        }
    }
}