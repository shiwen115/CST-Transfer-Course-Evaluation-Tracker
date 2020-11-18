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
        ArrayList array = new ArrayList();
        ArrayList filteredArray = new ArrayList();

        protected void Page_Load(object sender, EventArgs e)
        {

            StudentTicket t1 = new StudentTicket();
            t1.TicketID = 12356;
            t1.Status = "Complete";
            t1.DateCreated = "08/20/2020";
            t1.TransferCourse = "BIO-630";
            t1.StudentFirst = "John";
            t1.StudentLast = "Doe";
            t1.TransferUniversity = "Penn State University";
            t1.Department = "Biology";
            array.Add(t1);

            StudentTicket t2 = new StudentTicket();
            t2.TicketID = 654321;
            t2.Status = "Uploading";
            t2.DateCreated = "05/10/2020";
            t2.TransferCourse = "CHEM-204";
            t2.StudentFirst = "John";
            t2.StudentLast = "Doe";
            t2.TransferUniversity = "Penn State University";
            t2.Department = "Chemistry";
            array.Add(t2);

            if (!(IsPostBack))
            {
                gvStudentTickets.DataSource = array;
                gvStudentTickets.DataBind();
            }
        }

        protected void Status_Changed(object sender, EventArgs e)
        {
            string status = statusFilter.SelectedValue;

            if(!(status == "all"))
            {
                for (int i = 0; i < array.Count; i++)
                {
                    StudentTicket ticket = (StudentTicket)array[i];
                    if (ticket.Status == status)
                    {
                        filteredArray.Add(ticket);
                    }
                }
                gvStudentTickets.DataSource = filteredArray;
                gvStudentTickets.DataBind();
            }
            else
            {
                gvStudentTickets.DataSource = array;
                gvStudentTickets.DataBind();
            } 
        }

        protected void btnView_Clicked(object sender, EventArgs e)
        {
            Server.Transfer("Student_Ticket_Details.aspx");
        }
    }
}