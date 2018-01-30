using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Contact : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox1.Focus();
  
    }

    

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            Label1.Visible = false;
            SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["Database"].ConnectionString);

            connection.Open();

            
            string insertQuery = "insert into UDetails (FName,LName,Email,ZipCode,State)values (@FName,@LName,@Email,@ZipCode,@State)";
            SqlCommand cmd = new SqlCommand(insertQuery, connection);
            cmd.Parameters.AddWithValue("@FName", TextBox1.Text);
            cmd.Parameters.AddWithValue("@LName", TextBox2.Text);
            cmd.Parameters.AddWithValue("@Email", TextBox3.Text);
            cmd.Parameters.AddWithValue("@ZipCode", TextBox4.Text);
            cmd.Parameters.AddWithValue("@State", DropDownList1.Text);
            cmd.ExecuteNonQuery();
            
            connection.Close();
            Label1.Visible = true;
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            DropDownList1.SelectedValue = "Select State";

        }

        catch(Exception ex)
        {
            Response.Write("Error: " + ex.ToString());

        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Label1.Visible = false;
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        DropDownList1.SelectedValue = "Select State";
        Label1.Visible = false;


    }
}