using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplicationTest
{
    public partial class AdminAppts : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["New"].ToString() == "Admin")
            {
                LabelAdmin1.Text = Session["New"].ToString();
            }
            else
            {
                Response.Redirect("User.aspx");
            }
        }
    }
}