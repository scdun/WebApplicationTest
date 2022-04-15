using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//These allow the SqlConnection
using System.Data.SqlClient;
using System.Configuration;

//CAN'T RESET FORM AFTER FAILED LOGIN

namespace WebApplicationTest
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                MultiView1.ActiveViewIndex = 0;
            }
        }

        protected void ButtonSubmit_Click(object sender, EventArgs e)
        {
            //WORKING
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["PPAdbConnectionString"].ConnectionString);
            
            //Anytime you want to execute a query you need to open and later close the database. Think of them as curly braces
            conn.Open();


            //Checks if the inputted username already exists in database
            string checkuser = "SELECT Count(*) FROM [UserData] WHERE Username='" + TextBoxUN.Text + "'";
            
            //Command, uses the checkuse string and connection established above
            SqlCommand com = new SqlCommand(checkuser, conn);

            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            if (temp == 0)
            {
                try
                {

                    //inserts info to database
                    string insertQuery = "INSERT INTO UserData (Username, Password, FirstName, LastName, DOB, Sex, PhoneNum, StreetAdd, StateAdd, Email, Role) values (@username, @password, @firstname, @lastname, @dob, @sex, @phonenum, @streetadd, @stateadd, @email, @role)";
                    SqlCommand insertCom = new SqlCommand(insertQuery, conn);

                    //replaces the @values with inputted info from the form
                    insertCom.Parameters.AddWithValue("@username", TextBoxUN.Text);
                    insertCom.Parameters.AddWithValue("@password", TextBoxPass.Text);
                    insertCom.Parameters.AddWithValue("@firstname", TextBoxFN.Text);
                    insertCom.Parameters.AddWithValue("@lastname", TextBoxLN.Text);
                    insertCom.Parameters.AddWithValue("@dob", TextBoxDOB.Text);
                    insertCom.Parameters.AddWithValue("@sex", DropDownListSex.SelectedItem.ToString());
                    insertCom.Parameters.AddWithValue("@phonenum", TextBoxPhone.Text);
                    insertCom.Parameters.AddWithValue("@streetadd", TextBoxAddress.Text);
                    insertCom.Parameters.AddWithValue("@stateadd", DropDownListState.SelectedItem.ToString());
                    insertCom.Parameters.AddWithValue("@email", TextBoxEmail.Text);
                    insertCom.Parameters.AddWithValue("@role", "User");

                    //executes query
                    insertCom.ExecuteNonQuery();

                    MultiView1.ActiveViewIndex = 1;

                    conn.Close();
                }

                //Shows the error message if everything doesn't work for a diff reason
                catch (Exception ex)
                {
                    Response.Write("Error: " + ex.Message);
                }
            }
            //MIGHT WANT TO TRY TO CODE THIS SO IT SHOWS UP SOMEWHERE BELOW THE SUBMIT BUTTON
            else
            {
                LabelFail.Visible = true;
                LabelFail.Text = "Username Unavailable";
                TextBoxUN.Text = "";
                MultiView1.ActiveViewIndex = 0;

            }
        }

        protected void ButtonSuccess_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}