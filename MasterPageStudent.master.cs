using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPageStudent : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["user"] = "1";
        
            Label1.Text = "Welcome, " + Session["user"].ToString();
        

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["User"] = null;
        Response.Redirect("Logout.aspx");
    }
}
