using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplicationTest
{
    public partial class UserAppts : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["New"] != null)
            {
                LabelUser.Text = Session["New"].ToString();
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }
    }
}
//I can't comment this in the aspx page, so here
//Adding a height value to the rowstyle spaced the cells apart