using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplicationTest
{
    public partial class WebForm2 : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["New"] != null)
            {
                LabelUNC.Text = Session["New"].ToString();
            }
            else
            {
                Response.Redirect("Login.aspx");
            }

            View1.Visible = true;
            View2.Visible = false;
            View3.Visible = false;
            View4.Visible = false;
            View5.Visible = false;
            LabelRadio.Visible = false;
        }

        //sets doc label as selected doc
        protected void ButtonDoc_Click(object sender, EventArgs e)
        {
            LabelDoctor.Text = DropDownListDoctors.SelectedItem.ToString();

            View1.Visible = true;
            View2.Visible = true;


        }

        //fixes postback issue with form reset
        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            View1.Visible = true;
            View2.Visible = true;
        }

        //sets label as chosen date
        protected void ButtonDate_Click(object sender, EventArgs e)
        {
            LabelDate.Text = Calendar1.SelectedDate.ToShortDateString();

            View1.Visible = true;
            View2.Visible = true;
            View3.Visible = true;
        }


        //picks which radiobutton was selected and loads it into labeltime
        protected void ButtonTime_Click(object sender, EventArgs e)
        {
            //list

            List<string> TimeList = new List<string>(); 
            
            string chosenDate = Calendar1.SelectedDate.ToShortDateString();

            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["PPAdbConnectionString"].ConnectionString);
            conn.Open();

            //
            string checkTimeQuery = "SELECT Count(*) FROM [DocAppts] WHERE Date='" + chosenDate + "'";

            SqlCommand timeComm = new SqlCommand(checkTimeQuery, conn);

            SqlDataReader dataReader = timeComm.ExecuteReader();

            while (dataReader.Read())
            {
                if (dataReader.HasRows == true)
                {
                    TimeList.Add(dataReader.GetValue(0).ToString());
                }
                else
                {
                    conn.Close();
                }
            }

            //if loop for determining button visibility
            if (TimeList.Contains(RadioButton9.Text))
            {
                RadioButton9.Enabled = false;
            }
            else if (TimeList.Contains(RadioButton10.Text))
            {
                RadioButton10.Enabled = false;
            }
            else if (TimeList.Contains(RadioButton11.Text))
            {
                RadioButton11.Enabled = false;
            }
            else if (TimeList.Contains(RadioButton12.Text))
            {
                RadioButton12.Enabled = false;
            }
            else if (TimeList.Contains(RadioButton2.Text))
            {
                RadioButton2.Enabled = false;
            }
            else if (TimeList.Contains(RadioButton3.Text))
            {
                RadioButton3.Enabled = false;
            }
            else if (TimeList.Contains(RadioButton4.Text))
            {
                RadioButton4.Enabled = false;
            }
            else
            {
                LabelRadio.Visible = false;
            }

            //if loop for selecting the time
            if (RadioButton9.Checked == true)
            {
                LabelRadio.Visible = false;
                LabelTime.Text = RadioButton9.Text;
                View1.Visible = true;
                View2.Visible = true;
                View3.Visible = true;
                View4.Visible = true;
            }
            else if (RadioButton10.Checked == true)
            {
                LabelRadio.Visible = false;
                LabelTime.Text = RadioButton10.Text;
                View1.Visible = true;
                View2.Visible = true;
                View3.Visible = true;
                View4.Visible = true;
            }
            else if (RadioButton11.Checked == true)
            {
                LabelRadio.Visible = false;
                LabelTime.Text = RadioButton11.Text;
                View1.Visible = true;
                View2.Visible = true;
                View3.Visible = true;
                View4.Visible = true;
            }
            else if (RadioButton12.Checked == true)
            {
                LabelRadio.Visible = false;
                LabelTime.Text = RadioButton12.Text;
                View1.Visible = true;
                View2.Visible = true;
                View3.Visible = true;
                View4.Visible = true;
            }
            else if (RadioButton2.Checked == true)
            {
                LabelRadio.Visible = false;
                LabelTime.Text = RadioButton2.Text;
                View1.Visible = true;
                View2.Visible = true;
                View3.Visible = true;
                View4.Visible = true;
            }
            else if (RadioButton3.Checked == true)
            {
                LabelRadio.Visible = false;
                LabelTime.Text = RadioButton3.Text;
                View1.Visible = true;
                View2.Visible = true;
                View3.Visible = true;
                View4.Visible = true;
            }
            else if (RadioButton4.Checked == true)
            {
                LabelRadio.Visible = false;
                LabelTime.Text = RadioButton4.Text;
                View1.Visible = true;
                View2.Visible = true;
                View3.Visible = true;
                View4.Visible = true;
            }
            else
            {
                LabelRadio.Visible = true;
                View1.Visible = true;
                View2.Visible = true;
                View3.Visible = true;
            }
        }

        /*SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
conn.Open();

string checktime = "SELECT Count(*) FROM [ApptTest] WHERE Time='" + DropDownListTime.SelectedItem.ToString() + "'";

//Command, uses the checktime string and connection established above
SqlCommand checktimecom = new SqlCommand(checktime, conn);

int temp = Convert.ToInt32(checktimecom.ExecuteScalar().ToString());

if (temp == 0)
{
    DropDownListTime.SelectedItem.Value = Visible;
}

    LabelTime.Text = DropDownListTime.SelectedItem.ToString();*/
    }
}

/* SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
conn.Open();

//Insert selected doctor query
string insertDocQuery = "INSERT INTO ApptTest (Doctor) values (@doctor)";

//Insert selected doc command (under the connection above)
SqlCommand insertDocCom = new SqlCommand(insertDocQuery, conn);

//Inserts selected doctor into database
insertDocCom.Parameters.AddWithValue("@doctor", DropDownListDoctors.SelectedItem.ToString());*/