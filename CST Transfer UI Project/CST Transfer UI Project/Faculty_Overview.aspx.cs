using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CST_Transfer_UI_Project
{
    public partial class Faculty_Overview : System.Web.UI.Page
    {
        ArrayList array = new ArrayList();
        ArrayList filteredArray = new ArrayList();

        protected void Page_Load(object sender, EventArgs e)
        {

            FA_Ticket t1 = new FA_Ticket();
            t1.TicketID = 12356;
            t1.Status = "Complete";
            t1.DateCreated = "20-08-2020";
            t1.TUID = 915386450;
            t1.FA = "Tina Smith";
            t1.TransferCourse = "BIO-630";
            t1.StudentName = "John Doe";
            t1.TransferUniversity = "Penn State University";
            t1.Department = "Biology";
            array.Add(t1);

            FA_Ticket t2 = new FA_Ticket();
            t2.TicketID = 654321;
            t2.Status = "Evaluating";
            t2.DateCreated = "09-01-2019";
            t2.TUID = 918469241;
            t2.FA = "John Legened";
            t2.TransferCourse = "CIS3314";
            t2.StudentName = "Bill Smith";
            t2.TransferUniversity = "Ohio State";
            t2.Department = "Computer & Information Sciences";
            array.Add(t2);

            FA_Ticket t3 = new FA_Ticket();
            t3.TicketID = 654321;
            t3.Status = "Uploading";
            t3.DateCreated = "10-05-2020";
            t3.TUID = 915386450;
            t3.FA = "Tina Smith";
            t3.TransferCourse = "CHEM-204";
            t3.StudentName = "John Doe";
            t3.TransferUniversity = "Penn State University";
            t3.Department = "Chemistry";
            array.Add(t3);

            FA_Ticket t4 = new FA_Ticket();
            t4.TicketID = 956780;
            t4.Status = "Unclaimed";
            t4.DateCreated = "12-28-2018";
            t4.TUID = 916237951;
            t4.FA = "Unclaimed";
            t4.TransferCourse = "CIS-3318";
            t4.StudentName = "Kristen Thompson";
            t4.TransferUniversity = "Drexel";
            t4.Department = "Computer & Information Sciences";
            array.Add(t4);

            FA_Ticket t5 = new FA_Ticket();
            t5.TicketID = 701256;
            t5.Status = "Complete";
            t5.DateCreated = "08-21-2020";
            t5.TUID = 916237951;
            t5.FA = "Sally Johnson";
            t5.TransferCourse = "PHYS-119";
            t5.StudentName = "Rick Sanchez";
            t5.TransferUniversity = "Ursinus";
            t5.Department = "Physics";
            array.Add(t5);


            gvStudentTickets.DataSource = array;
            gvStudentTickets.DataBind();
        }

        protected void Status_Changed(object sender, EventArgs e)
        {
            string status = statusFilter.SelectedValue;

            if (!(status == "all"))
            {
                for (int i = 0; i < array.Count; i++)
                {
                    FA_Ticket ticket = (FA_Ticket)array[i];
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

        protected void btnSearch_Clicked(object sender, EventArgs e)
        {
            // Get Entered TUID
            int TUID = 0;
            bool success = Int32.TryParse(txtSearch.Text, out TUID);

            //Check if search box is empty and display all tickets
            if (txtSearch.Text == "")
            {
                gvStudentTickets.DataSource = array;
                gvStudentTickets.DataBind();
            }

            //Check for entered TUID and display those tickets
            for (int i = 0; i < array.Count; i++)
            {
                FA_Ticket ticket = (FA_Ticket)array[i];
                if (ticket.TUID == TUID)
                {
                    filteredArray.Add(ticket);
                }
            }
            gvStudentTickets.DataSource = filteredArray;
            gvStudentTickets.DataBind();
        }

        protected void Dep_Changed(object sender, EventArgs e)
        {
            string dep = ddlDepartment.SelectedValue;

            if (!(dep == "all"))
            {
                for (int i = 0; i < array.Count; i++)
                {
                    FA_Ticket ticket = (FA_Ticket)array[i];
                    if (ticket.Department == dep)
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
            //Server.Transfer("Student_Ticket_Details.aspx");
        }
    }
}
