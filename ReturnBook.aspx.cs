using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class ReturnBook : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
            conn.Open();
            string checkBook = "select Count(*) from IssueBook where Username='" + DropDownListUN.SelectedValue + "' and Book_name='" + DropDownListBN.SelectedValue + "'";
            SqlCommand cmd = new SqlCommand(checkBook, conn);
            int getBook = Convert.ToInt32(cmd.ExecuteScalar().ToString());
            if (getBook != 1)
            {
                Response.Write("<script>alert('This Book Is Not Issued For this Username_ _ _')</script>");
                Session["exist"] = "1";
            }
            else
            {
                Session["exist"] = "0";
            }



            string checkStock = "select Stock from Book where Book_Name='" + DropDownListBN.Text + "'";
            SqlCommand stockcom = new SqlCommand(checkStock, conn);
            int stock = Convert.ToInt32(stockcom.ExecuteScalar().ToString());
            TextBoxAStock.Text = stock.ToString();
            conn.Close();
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("ManageIssued.aspx");
    }
    protected void ButtonReturn_Click(object sender, EventArgs e)
    {
        try
        {
            if (Session["exist"] == "0")
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
                conn.Open();
                string checkStock = "select Stock from Book where Book_Name='" + DropDownListBN.Text + "'";
                SqlCommand stockcom = new SqlCommand(checkStock, conn);
                int stock = Convert.ToInt32(stockcom.ExecuteScalar().ToString());
                int NStock = stock + 1;
                string updtBook = "UPDATE Book set [Stock] = @newStock where Book_Name='" + DropDownListBN.Text + "'";
                SqlCommand comm = new SqlCommand(updtBook, conn);
                comm.Parameters.AddWithValue("@newStock", NStock);
                comm.ExecuteNonQuery();
                conn.Close();

                conn.Open();
                string DeleteBook = "delete from IssueBook where Username='" + DropDownListUN.SelectedValue + "' and Book_name='" + DropDownListBN.SelectedValue + "'";
                SqlCommand com = new SqlCommand(DeleteBook, conn);
                com.ExecuteNonQuery();
                Response.Write("<script>alert('Book Succesfully Returned')</script>");
                conn.Close();
            }


        }
        catch (Exception ex)
        {
            Response.Write("Error:" + ex.ToString());
        }
    }
    protected void DropDownListUN_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void LinkButtonHP_Click(object sender, EventArgs e)
    {
    
    }
}