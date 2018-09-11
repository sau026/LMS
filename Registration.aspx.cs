using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
            conn.Open();
            string checkuser = "select count(*) from UserData where username='" + TextBoxUN.Text + "'";
            SqlCommand com = new SqlCommand(checkuser, conn);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            if (temp >= 1)
            {
                Response.Write("<script>alert('User Already Exist')</script>");
                Session["exist"] = "0";
            }
            else
            {
                Session["exist"] = "1";
            }


            conn.Close();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            if (Session["exist"] != "0")
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
                conn.Open();
                string insertuser = "insert into UserData (Username,Email, Phone_No, Gender, Country, Password) values (@uname ,@Email ,@Phone ,@Gender ,@Country ,@pass)";
                SqlCommand com = new SqlCommand(insertuser, conn);
                com.Parameters.AddWithValue("@uname", TextBoxUN.Text);
                com.Parameters.AddWithValue("@Email", TextBoxEmail.Text);
                com.Parameters.AddWithValue("@Phone", TextBoxPh_No.Text);
                com.Parameters.AddWithValue("@Gender", DropDownListSex.Text);
                com.Parameters.AddWithValue("@Country", DropDownListCountry.Text);
                com.Parameters.AddWithValue("@pass", TextBoxPass.Text);

                com.ExecuteNonQuery();
                Response.Write("<script language=javascript>confirm('The system not allow negative inventory,continue?');</script>");
                Response.Redirect("Registration.aspx");
                conn.Close();
            }
           
        }
        catch (Exception ex)
        {
            Response.Write("Error:" + ex.ToString());
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
       
    }
}