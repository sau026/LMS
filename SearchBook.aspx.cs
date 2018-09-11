using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class SearchBook : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
     
    }
    protected void ButtonSearchBook_Click(object sender, EventArgs e)
    {
        GridViewBook.Visible = true;
    }
    protected void SqlDataSourceGridView_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
    protected void DropDownSelectBook1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}