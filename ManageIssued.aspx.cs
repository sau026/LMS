using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ManageIssued : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void GridViewIssueBook_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (GridViewAllData.Visible)
        {
            GridViewAllData.Visible = false;
            Button1.Text = "Show All Record";
        }
        else
        {
            GridViewAllData.Visible = true;
            Button1.Text = "Hide All Record";
        }
    }
    protected void ButtonSearch_Click(object sender, EventArgs e)
    {
        GridViewIssueBook.Visible = true;
    }
}