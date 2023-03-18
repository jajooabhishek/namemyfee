using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NameMyFee
{
    public partial class edit_prog : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source = (localdb)\MSSQLlocalDB; Initial Catalog = University; Integrated Security = True; Pooling=False");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["email"] == null)
            {
                Response.Redirect("login.aspx", true);                
            }

            con.Open();

                string query1 = "SELECT prog_name from programs where prog_name =" + "'" + Session["ProgName"] + "'" + "AND uni_name = " + "'" + Session["name"] + "'";
                SqlCommand cmd1 = new SqlCommand(query1, con);
                DropDownList4.SelectedItem.Text = cmd1.ExecuteScalar().ToString();

            string query2 = "SELECT school from programs where prog_name =" + "'" + Session["ProgName"] + "'" + "AND uni_name = " + "'" + Session["name"] + "'";
            SqlCommand cmd2 = new SqlCommand(query2, con);
            DropDownList2.SelectedItem.Text = cmd2.ExecuteScalar().ToString();

            string query3 = "SELECT discipline from programs where prog_name =" + "'" + Session["ProgName"] + "'" + "AND uni_name = " + "'" + Session["name"] + "'";
            SqlCommand cmd3 = new SqlCommand(query3, con);
            DropDownList3.SelectedItem.Text = cmd3.ExecuteScalar().ToString();

            string query4 = "SELECT fee_structure from programs where prog_name =" + "'" + Session["ProgName"] + "'" + "AND uni_name = " + "'" + Session["name"] + "'";
            SqlCommand cmd4 = new SqlCommand(query4, con);
            DropDownList5.SelectedItem.Text = cmd4.ExecuteScalar().ToString();

            string query5 = "SELECT full_tution_fee from programs where prog_name =" + "'" + Session["ProgName"] + "'" + "AND uni_name = " + "'" + Session["name"] + "'";
            SqlCommand cmd5 = new SqlCommand(query5, con);
            TextBox1.Text = cmd5.ExecuteScalar().ToString();

            string query6 = "SELECT other_fees from programs where prog_name =" + "'" + Session["ProgName"] + "'" + "AND uni_name = " + "'" + Session["name"] + "'";
            SqlCommand cmd6 = new SqlCommand(query6, con);
            TextBox8.Text = cmd6.ExecuteScalar().ToString();

            string query7 = "SELECT bid_start_date from programs where prog_name =" + "'" + Session["ProgName"] + "'" + "AND uni_name = " + "'" + Session["name"] + "'";
            SqlCommand cmd7 = new SqlCommand(query7, con);
            TextBox2.Text = cmd7.ExecuteScalar().ToString();

            string query8 = "SELECT bid_close_date from programs where prog_name =" + "'" + Session["ProgName"] + "'" + "AND uni_name = " + "'" + Session["name"] + "'";
            SqlCommand cmd8 = new SqlCommand(query8, con);
            TextBox3.Text = cmd8.ExecuteScalar().ToString();

            string query9 = "SELECT available_seats from programs where prog_name =" + "'" + Session["ProgName"] + "'" + "AND uni_name = " + "'" + Session["name"] + "'";
            SqlCommand cmd9 = new SqlCommand(query9, con);
            TextBox4.Text = cmd9.ExecuteScalar().ToString();

            string query10 = "SELECT min_price from programs where prog_name =" + "'" + Session["ProgName"] + "'" + "AND uni_name = " + "'" + Session["name"] + "'";
            SqlCommand cmd10 = new SqlCommand(query10, con);
            TextBox7.Text = cmd10.ExecuteScalar().ToString();

            string query11 = "SELECT program_link from programs where prog_name =" + "'" + Session["ProgName"] + "'" + "AND uni_name = " + "'" + Session["name"] + "'";
            SqlCommand cmd11 = new SqlCommand(query11, con);
            TextBox6.Text = cmd11.ExecuteScalar().ToString();

            con.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            string query = "update programs set uni_name = @name,uni_email = @uni_email,prog_name = @prog_name,bid_start_date = @bid_start_date,bid_close_date = @bid_close_date,school = @school,available_seats = @available_seats,program_link = @program_link,full_tution_fee = @full_tution_fee,discipline = @discipline,fee_structure = @fee_structure,min_price = @min_price where prog_name =" + "'" + Session["ProgName"] + "'" + "AND uni_name = " + "'" + Session["name"] + "'";
            SqlCommand sqlcom = new SqlCommand(query, con);
            sqlcom.Parameters.AddWithValue("@name", Session["name"]);
            sqlcom.Parameters.AddWithValue("@uni_email", Session["email"]);
            sqlcom.Parameters.AddWithValue("@prog_name", DropDownList4.SelectedItem.Value);
            sqlcom.Parameters.AddWithValue("@bid_start_date", DateTime.Parse(TextBox2.Text).ToString("yyyy/MM/dd"));
            sqlcom.Parameters.AddWithValue("@bid_close_date", DateTime.Parse(TextBox2.Text).ToString("yyyy/MM/dd"));
            sqlcom.Parameters.AddWithValue("@available_seats", TextBox4.Text);
            sqlcom.Parameters.AddWithValue("@program_link", TextBox6.Text);
            sqlcom.Parameters.AddWithValue("@full_tution_fee", TextBox1.Text);
            sqlcom.Parameters.AddWithValue("@school", DropDownList2.SelectedItem.Value);
            sqlcom.Parameters.AddWithValue("@discipline", DropDownList3.SelectedItem.Value);
            sqlcom.Parameters.AddWithValue("@fee_structure", DropDownList5.SelectedItem.Value);
            sqlcom.Parameters.AddWithValue("@min_price", TextBox7.Text);
            //sqlcom.Parameters.AddWithValue("@req_docs", chkboxlist);
            sqlcom.ExecuteNonQuery();
            con.Close();
            Response.Redirect("university_dash.aspx");
        }
    }
}