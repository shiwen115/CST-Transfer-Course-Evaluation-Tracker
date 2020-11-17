using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CST_Transfer_UI_Project
{
    public partial class Student_Ticket_Details : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnEdit_Click(object sender, EventArgs e)
        {
            if (btnEdit.Text == "EDIT")
            {
                btnEdit.Text = "SUBMIT";

                txtLinktoCD.Enabled = true;
                btnUploadSyllabus.Enabled = true;

                lblCourseTranscript.Visible = true;
                lblAdditionalDoc.Visible = true;

                btnUploadedTranscript.Visible = true;
                btnUploadedDoc.Visible = true;

                lblMessage.Text = "You Have Entered Edit View!";
            }
            else
            {
                btnEdit.Text = "EDIT";

                txtLinktoCD.Enabled = false;
                btnUploadSyllabus.Enabled = false;

                lblCourseTranscript.Visible = false;
                lblAdditionalDoc.Visible = false;

                btnUploadedTranscript.Visible = false;
                btnUploadedDoc.Visible = false;

                lblMessage.Text = "You Have Submited Changes!";
            }



            btnUploadSyllabus.Enabled = true;
            if (btnUploadSyllabus.Enabled == true)
            {
                btnUploadSyllabus.BackColor = Color.DarkRed;
            }
            else
            {
                btnUploadSyllabus.BackColor = Color.Gray;
            }

        }
    }
}