using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class AddBook : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
            conn.Open();
            string checkBook = "select count(*) from Book where Book_Name='" + TextBoxAddBook.Text + "'";
            SqlCommand com = new SqlCommand(checkBook, conn);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            if (temp >= 1)
            {
                Session["exist"] = "2";
                Response.Write("<script>alert('Book Already Added')</script>");
                string checkStock = "select Stock from Book where Book_Name='" + TextBoxAddBook.Text + "'";
                SqlCommand stockcom = new SqlCommand(checkStock, conn);
                int stock = Convert.ToInt32(stockcom.ExecuteScalar().ToString());
                if (stock >= 10)
                {
                    
                    Response.Write("<script>alert('And stock of this book is also full')</script>");
                }
                else
                {
                    Response.Write("<script>alert('But stock is not full you can make changes in stock from manage page')</script>");
                }
            } 
            conn.Close();
        }
    }
    protected void ButtonAdd_book_Click(object sender, EventArgs e)
    {
        try
        {
            if (Session["exist"] != "2")
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
                conn.Open();
                string insertBook = "insert into Book (Book_Name, Author, Publisher, ISBN_No, Category, Stock) values (@AddBook ,@Author ,@Publisher ,@ISBN ,@Category ,@Stock)";
                SqlCommand com = new SqlCommand(insertBook, conn);
                com.Parameters.AddWithValue("@AddBook", TextBoxAddBook.Text);
                com.Parameters.AddWithValue("@Author", TextBoxAuthor.Text);
                com.Parameters.AddWithValue("@Publisher", TextBoxPublisher.Text);
                com.Parameters.AddWithValue("@ISBN", TextBoxISBN.Text);
                com.Parameters.AddWithValue("@Category", DropDownListCategory.Text);
                com.Parameters.AddWithValue("@Stock", TextBoxStock.Text);

                com.ExecuteNonQuery();
                Response.Write("<script>alert('Book Added')</script>");


                conn.Close();
            }
            else
            {
                Session["exist"] = "1";
            }
        }
        catch (Exception ex)
        {
            Response.Write("Error:" + ex.ToString());
        }
    }
    protected void LinkButtonMngBook_Click(object sender, EventArgs e)
    {
        
    }
    protected void LinkButtonSeeBook_Click(object sender, EventArgs e)
    {
       
    }
    protected void LinkButtonManage_Click(object sender, EventArgs e)
    {
        
    }
    protected void LinkButtonManage_Click1(object sender, EventArgs e)
    {
        Response.Redirect("ManageBook.aspx");
    }
    protected void TextBoxAddBook_TextChanged(object sender, EventArgs e)
    {

    }
    protected void LinkButtonHP_Click(object sender, EventArgs e)
    {
     
    }
}