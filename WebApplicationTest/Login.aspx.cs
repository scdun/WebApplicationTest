using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace WebApplicationTest
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonLogin_Click(object sender, EventArgs e)
        {
            //Connection is the same as the one on Default. Connects to the same database
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["PPAdbConnectionString"].ConnectionString);
            conn.Open();

            string checkuser = "SELECT Count(*) FROM [UserData] WHERE Username='" + TextBoxLoginUN.Text + "'";
            SqlCommand com = new SqlCommand(checkuser, conn);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            conn.Close();

            if (temp == 1)
            {
                conn.Open();
                //This finds the password that matches the inputted username
                string checkPasswordQuery = "SELECT Password FROM UserData WHERE Username='" + TextBoxLoginUN.Text + "'";

                //New command to check this password
                SqlCommand passComm = new SqlCommand(checkPasswordQuery, conn);

                //Converts password in database to string, stores in password string
                string password = passComm.ExecuteScalar().ToString();

                if (password == TextBoxLoginPass.Text)
                {
                    //Start new session
                    Session["New"] = TextBoxLoginUN.Text;
                    //Will redirect to user page
                    Response.Write("User verified, welcome back!");
                    Response.Redirect("User.aspx");
                }
                else
                {
                    Response.Write("Password is incorrect.");
                }
            }
            else
            {
                Response.Write("Username does not exist");
            }
        }
    }
}