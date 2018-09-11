using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
    protected void Button1_Click1(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
        conn.Open();
        string checkuser = "select count(*) from UserData where Username='" + TextBoxUN.Text + "'";
        SqlCommand com = new SqlCommand(checkuser, conn);
        int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
        conn.Close();
        if (temp == 1)
        {
            conn.Open();
            string checkPassword = "select Password from UserData where Username='" + TextBoxUN.Text + "'";
            SqlCommand passcom = new SqlCommand(checkPassword, conn);
            string password = passcom.ExecuteScalar().ToString().Replace(" ","");
            if (password == TextBoxPass.Text)
            {
                Session["User"] = TextBoxUN.Text;
                Response.Redirect("AdminPage.aspx");
            }
            else
            {
                Response.Write("<script>alert('Password is Not correct')</script>");
                
            }
            conn.Close();
        }
        else
        {
            Response.Write("<script>alert('Username is Not correct')</script>");
        }
        conn.Close();
    }
    protected void LinkButtonNewuser_Click(object sender, EventArgs e)
    {
        Response.Redirect("Registration.aspx");
    }
    protected void LinkButtonFpassword_Click(object sender, EventArgs e)
    {
        Response.Redirect("ForgotPassword.aspx");
    }
    protected void TextBoxUN_TextChanged(object sender, EventArgs e)
    {

    }
}