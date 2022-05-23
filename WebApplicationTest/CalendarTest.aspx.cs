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
    public partial class CalendarTest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Makes sure you're logged in to view the page

            if (Session["New"] != null)
            {
                LabelUNC.Text = Session["New"].ToString();

                //Establish connection to find userID
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["PPAdbConnectionString"].ConnectionString);
                conn.Open();

                string userIDQuery = "SELECT UserID FROM UserData WHERE Username='" + LabelUNC.Text + "'";

                //New command to check this userID
                SqlCommand passComm = new SqlCommand(userIDQuery, conn);

                //stores userID in int 
                int userID = Convert.ToInt32(passComm.ExecuteScalar().ToString());
                LabelUserID.Text = userID.ToString();
                conn.Close();
            }
            else
            {
                Response.Redirect("Login.aspx");
            }

            //Sets the default views for the page
            View1.Visible = true;
            View2.Visible = false;
            View3.Visible = false;
            View4.Visible = false;
            View5.Visible = false;
            LabelRadio.Visible = false;

            if (IsPostBack)
            {
                //Resets views on postback
                View1.Visible = true;
                View2.Visible = true;
                View3.Visible = false;
                View4.Visible = false;
                View5.Visible = false;
                LabelRadio.Visible = false;

                //Resets buttons on postback
                RadioButton9.Enabled = true;
                RadioButton10.Enabled = true;
                RadioButton11.Enabled = true;
                RadioButton12.Enabled = true;
                RadioButton2.Enabled = true;
                RadioButton3.Enabled = true;
                RadioButton4.Enabled = true;
            }
        }
        protected void DropDownListDoctors_SelectedIndexChanged(object sender, EventArgs e)
        {
            //This honestly might not do anything? Have to double check
            View1.Visible = true;
            View2.Visible = false;
            View3.Visible = false;
            View4.Visible = false;
            View5.Visible = false;
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

        protected void Calendar1_VisibleMonthChanged(object sender, MonthChangedEventArgs e)
        {
            View1.Visible = true;
            View2.Visible = true;
        }

        //Might not do anything either, have to check
        protected void Calendar1_Select(object sender, EventArgs e)
        {
            View1.Visible = true;
            View2.Visible=true;
        }

        protected void ButtonDate_Click(object sender, EventArgs e)
        {
            //sets label as chosen date
            LabelDate.Text = Calendar1.SelectedDate.ToShortDateString();

            View1.Visible = true;
            View2.Visible = true;
            View3.Visible = true;

            //ALL of the following checks the doc, date, and time against each other
            //For the radio button selection in the next section

            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["PPAdbConnectionString"].ConnectionString);
            conn.Open();

            //Checks if there are any appointments for the doctor and date selected
            string timeQuery = "SELECT Count(*) FROM DocAppts WHERE Date='" + LabelDate.Text + "' AND Doctor='" + LabelDoctor.Text + "'";
            SqlCommand timeComm = new SqlCommand(timeQuery, conn);

            //Counts the number of rows from the previous query
            int temp = Convert.ToInt32(timeComm.ExecuteScalar().ToString());
            conn.Close();

            //If there are appointments for that date and doc, this runs
            if (temp >= 1)
            {
                conn.Open();

                //This checks what times are already taken for the selected doctor and date
                string checkTimeQuery = "SELECT Time FROM DocAppts WHERE Date='" + LabelDate.Text + "' AND Doctor='" + LabelDoctor.Text + "'";
                SqlCommand checkTimeComm = new SqlCommand(checkTimeQuery, conn);
                
                //Reads through entries for the query
                SqlDataReader dr = checkTimeComm.ExecuteReader();

                //List to store these entries
                List<string> TimeList = new List<string>();

                //Reads through data entries and adds them to list
                while (dr.Read())
                {
                    TimeList.Add(dr["Time"].ToString());
                }

                //Checks if list contains values and disables radio buttons if it does
                if (TimeList.Contains("9:00 AM"))
                {
                    RadioButton9.Enabled = false;
                }
                else if (TimeList.Contains("10:00 AM"))
                {
                    RadioButton10.Enabled = false;
                }
                else if (TimeList.Contains("11:00 AM"))
                {
                    RadioButton11.Enabled = false;
                }
                else if (TimeList.Contains("12:00 AM"))
                {
                    RadioButton12.Enabled = false;
                }
                else if (TimeList.Contains("2:00 PM"))
                {
                    RadioButton2.Enabled = false;
                }
                else if (TimeList.Contains("3:00 PM"))
                {
                    RadioButton3.Enabled = false;
                }
                else if (TimeList.Contains("4:00 PM"))
                {
                    RadioButton4.Enabled = false;
                }
                else
                {
                    LabelRadio.Visible = false;
                }
            }
            else
            {
                conn.Close();
            }
        }

        //picks which radiobutton was selected and loads it into labeltime
        protected void ButtonTime_Click(object sender, EventArgs e)
        {
            //if loop for selecting the time and ensuring views aren't reset upon clicking
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

        //Confirm button! Loads the info into the database
        protected void ButtonConfirm_Click(object sender, EventArgs e)
        {
            //Open connection
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["PPAdbConnectionString"].ConnectionString);
            conn.Open();

            //Insertion query
            string insertQuery = "INSERT INTO DocAppts (Doctor, Time, IsBooked, UserID, Date, UserName) values (@doctor, @time, @isbooked, @userid, @date, @username)";
            SqlCommand insertCom = new SqlCommand(insertQuery, conn);

            insertCom.Parameters.AddWithValue("@doctor", LabelDoctor.Text);
            insertCom.Parameters.AddWithValue("@time", LabelTime.Text);
            insertCom.Parameters.AddWithValue("@isbooked", "True");
            insertCom.Parameters.AddWithValue("@userid", LabelUserID.Text);
            insertCom.Parameters.AddWithValue("@date", LabelDate.Text);
            insertCom.Parameters.AddWithValue("@username", LabelUNC.Text);

            insertCom.ExecuteNonQuery();

            //hides all other views except success view
            View1.Visible = false;
            View2.Visible = false;
            View3.Visible = false;
            View4.Visible = false;
            View5.Visible = true;

            conn.Close();
        }
    }
}

/*
//THIS WORKED, WE'LL BE FINE IF ITS JUST THIS, it's backup code
string timecheck = checkTimeComm.ExecuteScalar().ToString();

if (timecheck == "10:00 AM")
{
RadioButton10.Enabled = false;
}
else
{
RadioButton10.Enabled = true;
}*/