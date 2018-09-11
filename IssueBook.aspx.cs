using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class IssueBook : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
            conn.Open();
            string checkBook = "select Count(*) from IssueBook where Username='" + DropDownUN.SelectedValue + "' and Book_name='" + DropDownListBN.SelectedValue + "'";
            SqlCommand cmd = new SqlCommand(checkBook, conn);
            int getBook = Convert.ToInt32(cmd.ExecuteScalar().ToString());
            if (getBook >= 1)
            {
                Response.Write("<script>alert('This book is already issued for this user')</script>");
                Session["exist"] = "0";
            }
            else
            {
                string checkStock = "select Stock from Book where Book_Name='" + DropDownListBN.Text + "'";
                SqlCommand stockcom = new SqlCommand(checkStock, conn);
                int stock = Convert.ToInt32(stockcom.ExecuteScalar().ToString());
                TextBoxAStock.Text = stock.ToString();
                if (stock == 0)
                {
                    Session["exist"] = "0";
                    Response.Write("<script>alert('This Book is Out of Stock_ _ _ _')</script>");
                }
                else
                {
                    Session["exist"] = "1";
                }
               
             }
            conn.Close();
        }
    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {

    }
    protected void ImageButtonCDate_Click(object sender, ImageClickEventArgs e)
    {
        if (Calendar1.Visible)
        {
            Calendar1.Visible = false;
        }
        else
        {
            Calendar1.Visible = true;
        }
    }
    protected void Calendar1_SelectionChanged1(object sender, EventArgs e)
    {
        TextBoxCDate.Text = Calendar1.SelectedDate.ToShortDateString();
        Calendar1.Visible = false;
    }
    protected void ImageButtonRDate_Click(object sender, ImageClickEventArgs e)
    {
        
    }
    protected void Calendar2_SelectionChanged(object sender, EventArgs e)
    {
        TextBoxRDate.Text = Calendar2.SelectedDate.ToShortDateString();
        Calendar2.Visible = false;
    }
    protected void ImageButtonReDate_Click(object sender, ImageClickEventArgs e)
    {
        if (Calendar2.Visible)
        {
            Calendar2.Visible = false;
        }
        else
        {
            Calendar2.Visible = true;
        }
    }
    protected void DropDownListBN_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }
    protected void ButtonIssue_Click(object sender, EventArgs e)
    {
        try
        {
            if (Session["exist"] != "0")
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
                conn.Open();

                string checkStock = "select Stock from Book where Book_Name='" + DropDownListBN.Text + "'";
                SqlCommand stockcom = new SqlCommand(checkStock, conn);
                int stock = Convert.ToInt32(stockcom.ExecuteScalar().ToString());
                int NStock = stock - 1;
                string updtBook = "UPDATE Book set [Stock] = @newStock where Book_Name='" + DropDownListBN.Text + "'";
                SqlCommand comm = new SqlCommand(updtBook, conn);
                comm.Parameters.AddWithValue("@newStock", NStock);
                comm.ExecuteNonQuery();
                conn.Close();

                conn.Open();
                string issueBook = "insert into IssueBook (Book_Name, Issue_Stock, Username, Issue_Date, Return_Date) values (@I_Book ,@I_Stock ,@U_Name ,@I_Date ,@R_Date)";
                SqlCommand com = new SqlCommand(issueBook, conn);
                com.Parameters.AddWithValue("@I_Book", DropDownListBN.Text);
                com.Parameters.AddWithValue("@I_Stock", TextBoxIssueStock.Text);
                com.Parameters.AddWithValue("@U_Name", DropDownUN.Text);
                com.Parameters.AddWithValue("@I_Date", TextBoxCDate.Text);
                com.Parameters.AddWithValue("@R_Date", TextBoxRDate.Text);


                com.ExecuteNonQuery();
                Response.Write("<script>alert('Book Successfully Issued')</script>");
                conn.Close();
            }
                

        }
        catch (Exception ex)
        {
            Response.Write("Error:" + ex.ToString());
        }
    }
    protected void LinkButtonManage_Click(object sender, EventArgs e)
    {
        Response.Redirect("ManageIssued.aspx");
    }
    protected void DropDownUN_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void LinkButtonHP_Click(object sender, EventArgs e)
    {
        Response.Redirect("AdminePage.aspx");
    }
}