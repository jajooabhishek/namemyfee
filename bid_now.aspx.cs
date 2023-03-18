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


    public partial class bid_now : System.Web.UI.Page
    {

        class ProgrammeList
        {
            public string Name;
            public string BidAmount;
            public string OtherFees;
            public string FullTutionFee;
        }

        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection(@"Data Source = (localdb)\MSSQLlocalDB; Initial Catalog = University; Integrated Security = True; Pooling=False");

        String min_bid, full_tution_fee, applicant_name;

        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["email"] == null)
            {
                Response.Redirect("login.aspx", true);
            }

            Bid_Check();

            con.Open();
            String query = "select min_price from programs where uni_name = " + "'" + Session["UniName"] + "'" + "AND prog_name = " + "'" + Session["ProgName"] + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            min_bid = cmd.ExecuteScalar().ToString();
            Session["MinBid"] = min_bid;

            String query1 = "select full_tution_fee from programs where uni_name = " + "'" + Session["UniName"] + "'" + "AND prog_name = " + "'" + Session["ProgName"] + "'";
            SqlCommand cmd1 = new SqlCommand(query1, con);
            full_tution_fee = cmd1.ExecuteScalar().ToString();


            SqlDataSource1.SelectCommand = "select * from programs where uni_name = " + "'" + Session["UniName"] + "'" + "AND prog_name = " + "'" + Session["ProgName"] + "'";

            //bid_amount_validator.MinimumValue = min_bid;
            //bid_amount_validator.MaximumValue = full_tution_fee;
            //bid_amount_validator.ErrorMessage = "Please Enter an amount between " + min_bid + " and " + full_tution_fee;

            if (!IsPostBack)
            {
                this.DataBind();
            }

            con.Close();
        }

        protected void Bid_Now_Pressed(object sender, EventArgs e)
        {



            con.Open();
            String query = "select first_name from student_login where email = " + "'" + Session["email"] + "';";
            SqlCommand cmd = new SqlCommand(query, con);
            String applicant_fname = cmd.ExecuteScalar().ToString();

            String query1 = "select last_name from student_login where email = " + "'" + Session["email"] + "';";
            SqlCommand cmd1 = new SqlCommand(query1, con);
            String applicant_lname = cmd1.ExecuteScalar().ToString();

            String query2 = "select nationality from student_login where email = " + "'" + Session["email"] + "';";
            SqlCommand cmd2 = new SqlCommand(query2, con);
            String nationality = cmd2.ExecuteScalar().ToString();

            String query3 = "select country from student_login where email = " + "'" + Session["email"] + "';";
            SqlCommand cmd3 = new SqlCommand(query3, con);
            String country = cmd3.ExecuteScalar().ToString();

            applicant_name = applicant_fname + " " + applicant_lname;

            SqlCommand cmd4 = con.CreateCommand();
            cmd4.CommandType = CommandType.Text;
            cmd4.CommandText = "insert into applicants(name,email,bid_price,bid_date,uni_applied,nationality,country,prog_applied) values(" + "'" + applicant_name + "','" + Session["email"] + "','" + float.Parse(bid_amount.Text) + "','" + DateTime.Today + "','" + Session["UniName"] + "','" + nationality + "','" + country + "','" + Session["ProgName"] + "');";
            cmd4.ExecuteNonQuery();
            con.Close();

            Response.Redirect("student_dash.aspx");
        }

        protected void Update_Bid_Pressed(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "update applicants set bid_price=" + "'" + bid_amount.Text + "'" + "where email=" + "'" + Session["email"] + "';";
            cmd.ExecuteNonQuery();
            con.Close();

        }

        protected void Bid_Check()
        {
            con.Open();
            String query = "select count(*) from applicants where email=" + "'" + Session["email"] + "'" + "AND uni_applied =" + "'" + Session["UniName"] + "'" + "AND prog_applied=" + "'" + Session["ProgName"] + "';";
            SqlCommand cmd = new SqlCommand(query, con);
            int UserExist = (int)cmd.ExecuteScalar();

            if (UserExist > 0)
            {
                bid_now_button.Text = "Increase Bid";
                bid_now_button.Click -= new EventHandler(Bid_Now_Pressed);
                bid_now_button.Click += new EventHandler(Update_Bid_Pressed);
            }
            else
            {
                bid_now_button.Text = "Bid Now";
                bid_now_button.Click -= new EventHandler(Update_Bid_Pressed);
                bid_now_button.Click += new EventHandler(Bid_Now_Pressed);
            }

            con.Close();
        }
    }
}