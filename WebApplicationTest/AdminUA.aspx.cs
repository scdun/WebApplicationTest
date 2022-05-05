using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplicationTest
{
    public partial class AdminUA : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["New"] != null)
            {
                if (Session["New"].ToString() == "Admin")
                {
                    LabelAdmin.Text = Session["New"].ToString();
                    Panel1.Visible = true;
                    Panel2.Visible = true;
                }
                else
                {
                    Response.Redirect("User.aspx");
                }
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            LabelUsername.Text = DropDownList2.SelectedItem.ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            LabelUsername.Text = DropDownList2.SelectedItem.ToString();
            Panel2.Visible = true;
        }
    }
}