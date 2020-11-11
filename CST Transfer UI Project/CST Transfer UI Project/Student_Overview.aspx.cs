using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CST_Transfer_UI_Project
{
    public partial class Student_Overview : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ArrayList array = new ArrayList();

            StudentTicket t1 = new StudentTicket();
            t1.TicketID = 12356;
            t1.Status = "Complete";
            t1.DateCreated = new DateTime(2020, 08, 20);
            t1.TransferCourse = "BIO-630";
            t1.StudentName = "John Doe";
            t1.TransferUniversity = "Penn State University";
            t1.Department = "Biology";
            array.Add(t1);

            StudentTicket t2 = new StudentTicket();
            t2.TicketID = 654321;
            t2.Status = "Uploading";
            t2.DateCreated = new DateTime(2020, 10, 05);
            t2.TransferCourse = "CHEM-204";
            t2.StudentName = "John Doe";
            t2.TransferUniversity = "Penn State University";
            t2.Department = "Chemistry";
            array.Add(t2);


            gvStudentTickets.DataSource = array;
            gvStudentTickets.DataBind();
        }
    }
}