using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CST_Transfer_UI_Project
{
    public partial class Rules : System.Web.UI.Page
    {
        protected List<string>[] Departments;
        protected List<string> Bio = new List<string>();
        protected List<string> Chem = new List<string>();
        protected List<string> IST = new List<string>();
        protected List<string> Earth = new List<string>();
        protected List<string> Math = new List<string>();
        protected List<string> Phys = new List<string>();


        protected void Page_Load(object sender, EventArgs e)
        {

            //Bind Repeater Buttons
            rptBio.ItemCommand += new RepeaterCommandEventHandler(rpt_ItemCommand);
            rptChem.ItemCommand += new RepeaterCommandEventHandler(rpt_ItemCommand);
            rptIST.ItemCommand += new RepeaterCommandEventHandler(rpt_ItemCommand);
            rptEarth.ItemCommand += new RepeaterCommandEventHandler(rpt_ItemCommand);
            rptMath.ItemCommand += new RepeaterCommandEventHandler(rpt_ItemCommand);
            rptPhys.ItemCommand += new RepeaterCommandEventHandler(rpt_ItemCommand);

            //Set Image sizes
            btnBioAdd.Height = txtBio.Height;

            //First Page Load Data Construction
            if (!IsPostBack)
            {

                Departments = new List<string>[6];

                Departments[0] = (Bio);
                Departments[1] = (Chem);
                Departments[2] = (IST);
                Departments[3] = (Earth);
                Departments[4] = (Math);
                Departments[5] = (Phys);

                //Default Values
                Departments[0].Add("1239876542");
                Departments[1].Add("9153214780");
                Departments[1].Add("3594523554");

                //Save new List to Session;
                Session["List"] = Departments;

                SetDataSources();

                BindFAs();
            }

            //If Postback 
            else
            {

                //Department Fetch
                Departments = (List<string>[])Session["List"];

                SetDataSources();
            }

        }


        protected void btnBioAdd_Click(object sender, ImageClickEventArgs e)
        {

            //If the tuid is valid
            if (NoChar(txtBio.Text))
            {

                //Add it to Bio
                Departments[0].Add(txtBio.Text);

                //Clear textbox
                txtBio.Text = "";

                //Update Session
                Session["List"] = Departments;

                //Update DataSource
                rptBio.DataSource = ((List<string>[])Session["List"])[0];

                //Update Repeater
                rptBio.DataBind();
            }
        }

        protected void btnChemAdd_Click(object sender, ImageClickEventArgs e)
        {

            //If the tuid is valid
            if (NoChar(txtChem.Text))
            {

                //Add it to Chem
                Departments[1].Add(txtChem.Text);

                //Clear textbox
                txtChem.Text = "";

                //Update Session
                Session["List"] = Departments;

                //Update Repeater
                rptChem.DataBind();
            }
        }


        protected void btnISTAdd_Click(object sender, ImageClickEventArgs e)
        {

            //If the tuid is valid
            if (NoChar(txtIST.Text))
            {

                //Add it to IST
                Departments[2].Add(txtIST.Text);

                //Clear textbox
                txtIST.Text = "";

                //Update Session
                Session["List"] = Departments;

                //Update Repeater
                rptIST.DataBind();
            }
        }


        protected void btnEarthAdd_Click(object sender, ImageClickEventArgs e)
        {

            //If the tuid is valid
            if (NoChar(txtEarth.Text))
            {

                //Add it to Earth
                Departments[3].Add(txtEarth.Text);

                //Clear textbox
                txtEarth.Text = "";

                //Update Session
                Session["List"] = Departments;

                //Update Repeater
                rptEarth.DataBind();
            }
        }


        protected void btnMathAdd_Click(object sender, ImageClickEventArgs e)
        {

            //If the tuid is valid
            if (NoChar(txtMath.Text))
            {

                //Add it to Earth
                Departments[4].Add(txtMath.Text);

                //Clear textbox
                txtMath.Text = "";

                //Update Session
                Session["List"] = Departments;

                //Update Repeater
                rptMath.DataBind();
            }
        }


        protected void btnPhysAdd_Click(object sender, ImageClickEventArgs e)
        {

            //If the tuid is valid
            if (NoChar(txtPhys.Text))
            {

                //Add it to Earth
                Departments[5].Add(txtPhys.Text);

                //Clear textbox
                txtPhys.Text = "";

                //Update Session
                Session["List"] = Departments;

                //Update Repeater
                rptPhys.DataBind();
            }
        }



        //Route Remove Button Clicks
        private void rpt_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

            string dept = e.CommandName;
            string id = e.CommandArgument.ToString();
            int z;


            switch (dept)
            {

                case "Bio":
                    z = GetDeptIndex(0, id);
                    if (z > -1)
                    {
                        Departments[0].RemoveAt(z);
                    }
                    break;

                case "Chem":
                    z = GetDeptIndex(1, id);
                    if (z > -1)
                    {
                        Departments[1].RemoveAt(z);
                    }
                    break;

                case "IST":
                    z = GetDeptIndex(2, id);
                    if (z > -1)
                    {
                        Departments[2].RemoveAt(z);
                    }
                    break;


                case "Earth":
                    z = GetDeptIndex(3, id);
                    if (z > -1)
                    {
                        Departments[3].RemoveAt(z);
                    }
                    break;

                case "Math":
                    z = GetDeptIndex(4, id);
                    if (z > -1)
                    {
                        Departments[4].RemoveAt(z);
                    }
                    break;

                case "Phys":
                    z = GetDeptIndex(5, id);
                    if (z > -1)
                    {
                        Departments[5].RemoveAt(z);
                    }
                    break;
            }
            /*
            //If Remove Button was clicked
            if (dept == "Remove"){

                int z = GetDeptIndex(2, id);
                if (z > -1){

                    Departments[2].RemoveAt(z);
                }
            }
            */
            //Update Session
            Session["List"] = Departments;

            BindFAs();
            //rptIST.DataBind();
        }


        //Get the index of a given tuid in a given Department
        private int GetDeptIndex(int deptID, string tuid)
        {

            //For each FA
            for (int i = 0; i < Departments[deptID].Count; i++)
            {

                //If this is the FA
                if (Departments[deptID][i] == tuid)
                {

                    //Return this index in the Dept
                    return i;
                }
            }
            return -1;
        }



        private void BindFAs()
        {

            //If Bio has data to be displayed
            if (Departments[0].Count >= 0)
            {

                //Bind data to Repeaters
                rptBio.DataBind();
            }

            //If Chem has data to be displayed
            if (Departments[1].Count >= 0)
            {

                //Bind data to Repeaters
                rptChem.DataBind();
            }

            //If IST has data to be displayed
            if (Departments[2].Count >= 0)
            {

                //Bind data to Repeaters
                rptIST.DataBind();
            }

            //If Earth data to be displayed
            if (Departments[3].Count >= 0)
            {

                //Bind data to Repeaters
                rptEarth.DataBind();
            }

            //If Math data to be displayed
            if (Departments[4].Count >= 0)
            {

                //Bind data to Repeaters
                rptMath.DataBind();
            }

            //If Phys has data to be displayed
            if (Departments[5].Count >= 0)
            {

                //Bind data to Repeaters
                rptPhys.DataBind();
            }
        }


        protected void SetDataSources()
        {

            //Set Data Sources
            rptBio.DataSource = ((List<string>[])Session["List"])[0];
            rptChem.DataSource = ((List<string>[])Session["List"])[1];
            rptIST.DataSource = ((List<string>[])Session["List"])[2];
            rptEarth.DataSource = ((List<string>[])Session["List"])[3];
            rptMath.DataSource = ((List<string>[])Session["List"])[4];
            rptPhys.DataSource = ((List<string>[])Session["List"])[5];

        }


        //Return whether a string does not contain letters
        private bool NoChar(string dirty)
        {

            if (dirty.Trim() == "")
                return false;

            foreach (char c in dirty)
            {

                if (Char.IsLetter(c))
                {
                    return false;
                }
            }
            return true;
        }
    }
}