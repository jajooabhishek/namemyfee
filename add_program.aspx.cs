using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NameMyFee
{
    public partial class add_program : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source = (localdb)\MSSQLlocalDB; Initial Catalog = University; Integrated Security = True; Pooling=False");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["email"] == null)
            {
                Response.Redirect("login.aspx", true);
            }

            if (!IsPostBack)
            {
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();

            //string chkboxlist = "";
            //for(int i=0; i < CheckBox1.Items.Count; i++)
            //{
            //    if (CheckBox1.Items[i].Selected)
            //    {
            //        if(chkboxlist == "")
            //        {
            //            chkboxlist = CheckBox1.Items[i].Text;
            //        }
            //        else
            //        {
            //            chkboxlist += "," + CheckBox1.Items[i].Text;
            //        }
            //    }
            //}
            string query1 = "SELECT count(*) from programs where prog_name =" + "'" + DropDownList4.SelectedItem.Value + "'" + "AND uni_name = " + "'" + Session["name"] + "'";
            SqlCommand cmd1 = new SqlCommand(query1, con);
            string check = cmd1.ExecuteScalar().ToString();

            if (int.Parse(check) < 1)
            {
                string query = "insert into programs(uni_name,uni_email,prog_name,bid_start_date,bid_close_date,school,available_seats,program_link,full_tution_fee,discipline,fee_structure,min_price) values(@name,@uni_email,@prog_name,@bid_start_date,@bid_close_date,@school,@available_seats,@program_link,@full_tution_fee,@discipline,@fee_structure,@min_price)";
            SqlCommand sqlcom = new SqlCommand(query, con);
            sqlcom.Parameters.AddWithValue("@name", Session["name"]);
            sqlcom.Parameters.AddWithValue("@uni_email", Session["email"]);
            sqlcom.Parameters.AddWithValue("@prog_name", DropDownList4.SelectedItem.Value);
            sqlcom.Parameters.AddWithValue("@bid_start_date", DateTime.Parse(TextBox2.Text).ToString("yyyy/MM/dd"));
            sqlcom.Parameters.AddWithValue("@bid_close_date", DateTime.Parse(TextBox3.Text).ToString("yyyy/MM/dd"));
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
            else
            {
                Response.Write("Already Listed");
            }
           
        }
    }
}
