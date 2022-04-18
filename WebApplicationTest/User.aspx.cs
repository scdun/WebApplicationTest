using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplicationTest
{
    public partial class User : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["New"] != null)
            {
                LabelUser.Text = Session["New"].ToString();
            }
            else
            {
                Response.Redirect("Login.aspx");
            }

            //Shows or hides Admin hyperlink depending on user
            if (LabelUser.Text == "Admin")
            {
                HyperLinkAdmin.Visible = true;
                HyperLinkApptData.Visible = true;
            }
            else
            {
                HyperLinkAdmin.Visible = false;
                HyperLinkApptData.Visible = false;
            }
        }

        protected void ButtonLogout_Click(object sender, EventArgs e)
        {
            Session["New"] = null;
            Response.Redirect("Login.aspx");
        }
    }
}