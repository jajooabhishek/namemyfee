using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NameMyFee
{
    public partial class dash_demo : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source = (localdb)\MSSQLlocalDB; Initial Catalog = University; Integrated Security = True; Pooling=False");



        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["email"] == null)
            {
                Response.Redirect("login.aspx", true);
            }

            con.Open();

            SqlDataSource1.SelectCommand = "SELECT * FROM uni_login where name=" + "'" + Session["Uni_Name"] + "' and user_type='Manager';";
            SqlDataSource2.SelectCommand = "SELECT * FROM programs where uni_email=" + "'" + Session["email"] + "';";
            // string BidUsers = "SELECT COUNT(*) As Count FROM applicants where prog_applied = '" + random + "'" + " AND uni_applied =" + "'" + Session["name"] + "';";
            //  SqlCommand cmd = new SqlCommand(BidUsers, con);
            //  SqlDataAdapter sda = new SqlDataAdapter(cmd);
            //  DataSet ds = new DataSet();
            //  sda.Fill(ds);
            //SqlCommand cmd2 = con.CreateCommand();
            //cmd2.CommandType = CommandType.Text;
            //cmd2.CommandText = "SELECT bid_start_date, bid_close_date, prog_status = CASE WHEN GETDATE() >= bid_start_date and GETDATE() <= bid_close_date THEN 'Active' ELSE 'Inactive' END FROM Programs ";
            // cmd2.ExecuteNonQuery();
            foreach (GridViewRow row in GridView1.Rows)
            {
                Label random = row.FindControl("Label1") as Label;
                Label status = row.FindControl("Label4") as Label;

                String query1 = "SELECT bid_start_date from programs where prog_name =" + "'" + random.Text + "'" + "AND uni_name = " + "'" + Session["name"] + "'";
                SqlCommand cmd1 = new SqlCommand(query1, con);
                String bid_start_date = cmd1.ExecuteScalar().ToString();

                String query2 = "SELECT bid_close_date from programs where prog_name =" + "'" + random.Text + "'" + "AND uni_name = " + "'" + Session["name"] + "'";
                SqlCommand cmd2 = new SqlCommand(query2, con);
                String bid_close_date = cmd2.ExecuteScalar().ToString();

                DateTime startdate = DateTime.Parse(bid_start_date);
                DateTime enddate = DateTime.Parse(bid_close_date);
                String currentdate = DateTime.Today.ToString("dd/MM/yyyy");

                int enddatecheck = DateTime.Compare(enddate, DateTime.Parse(currentdate));
                int startdatecheck = DateTime.Compare(startdate, DateTime.Parse(currentdate));
                //status.Text = startdatecheck.ToString();

                if (enddatecheck >= 0 && startdatecheck <= 0)
                {
                    status.Text = "Active";
                }
                else
                {
                    status.Text = "Inactive";
                }
            }

            con.Close();
        }

        protected void prog_applicants(object sender, EventArgs e)
        {
            LinkButton btn = (LinkButton)sender;
            Label ProgNameLabel = btn.Parent.Parent.FindControl("Label1") as Label;
            Session["ProgName"] = ProgNameLabel.Text;
            //Response.Write(Session["email"]);
            Response.Redirect("demo.aspx");
        }

        protected void logout(object sender, EventArgs e)
        {
            Response.Redirect("home_page.aspx");
            Session.Clear();
            Session.Abandon();
            Session.RemoveAll();
        }


    }
}