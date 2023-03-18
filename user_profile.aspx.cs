using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NameMyFee
{
    public partial class user_profile : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source = (localdb)\MSSQLlocalDB; Initial Catalog = University; Integrated Security = True; Pooling=False");

        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = Session["Uni_Name"].ToString();
            SqlDataSource1.SelectCommand = "SELECT * FROM uni_login where name=" + "'" + Session["Uni_Name"] + "' and user_type='Manager';";

            if (Session["satus_label"].ToString() == "Invited")
            {
                Button1.Visible = false;
                Button2.Visible = false;
            }

            con.Open();
            String query = "SELECT admin_name FROM uni_login where name=" + "'" + Label1.Text + "' and user_type='Admin';";
            SqlCommand cmd = new SqlCommand(query, con);
            Label2.Text = cmd.ExecuteScalar().ToString();

            String query2 = "SELECT country FROM uni_login where name=" + "'" + Label1.Text + "' and user_type='Admin';";
            SqlCommand cmd2 = new SqlCommand(query2, con);
            Label4.Text = cmd2.ExecuteScalar().ToString();

            String query3 = "SELECT uni_link FROM uni_login where name=" + "'" + Label1.Text + "' and user_type='Admin';";
            SqlCommand cmd3 = new SqlCommand(query3, con);
            Label6.Text = cmd3.ExecuteScalar().ToString();

            String query4 = "SELECT email FROM uni_login where name=" + "'" + Label1.Text + "' and user_type='Admin';";
            SqlCommand cmd4 = new SqlCommand(query4, con);
            Label7.Text = cmd4.ExecuteScalar().ToString();

            String query5 = "SELECT contact_number FROM uni_login where name=" + "'" + Label1.Text + "' and user_type='Admin';";
            SqlCommand cmd5 = new SqlCommand(query5, con);
            Label8.Text = cmd5.ExecuteScalar().ToString();
            con.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("update uni_login set status='Invited' where name='" + Label1.Text + "';", con);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("admin_panel.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd2 = new SqlCommand("update uni_login set status='Rejected' where name='" + Label1.Text + "';", con);
            cmd2.ExecuteNonQuery();
            con.Close();
            Response.Redirect("admin_panel.aspx");
        }
    }
}