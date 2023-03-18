using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NameMyFee
{
    public partial class info_page : System.Web.UI.Page
    {

        /*class ProgDetails
        {
            public string ProgName;
            public string MinBid;
            public string ClosingDate;
            public string FullFee;
        }*/

        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["email"] == null)
            {
                Response.Redirect("login.aspx", true);
            }

            con = new SqlConnection(@"Data Source = (localdb)\MSSQLlocalDB; Initial Catalog = University; Integrated Security = True; Pooling=False");
            con.Open();

            //Setting Uni Name and Overview Details
            String query1 = "select name from uni_login where name =" + "'" + Session["UniName"] + "'";
            SqlCommand cmd1 = new SqlCommand(query1, con);
            String name = cmd1.ExecuteScalar().ToString();

            uni_name.Text = name;
            overview.Text = name;

            GridView2.AutoGenerateColumns = false;

            SqlDataSource1.SelectCommand = "SELECT * FROM [programs] where uni_name =" + "'" + Session["UniName"] + "' and prog_status='Active';";

            //Populate_Programme_Table();
            /*if (!IsPostBack)
            {
                this.DataBind();
            }*/

            con.Close();

        }

        protected void OnSelected_SqlDataSource(object sender, SqlDataSourceStatusEventArgs e)
        {
            if (e.AffectedRows == 0) //Here AffectedRows gives you the count of returned rows.
            {
                GridView2.Visible = false;
                no_data.Visible = true;
            }
        }

        /*protected void Populate_Programme_Table() {
            String query2 = "select programme_name, min_bid, bid_close_date, full_tution_fee from programme_list where uni_name =" + "'" + Session["UniName"] + "'";
            SqlCommand cmd2 = new SqlCommand(query2, con);
            SqlDataReader rd = cmd2.ExecuteReader();
            List<ProgDetails> Items = new List<ProgDetails>();

            while (rd.Read())
            {
                var item = new ProgDetails
                {
                    ProgName = rd["programme_name"].ToString(),
                    MinBid = rd["min_bid"].ToString(),
                    ClosingDate = rd["bid_close_date"].ToString(),
                    FullFee = rd["full_tution_fee"].ToString()
                };
                Items.Add(item);

            }

        }*/

        protected void Remove_Cols(object sender, GridViewRowEventArgs e)
        {

        }

        protected void Bid_Now_Pressed(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            Label ProgNameLabel = btn.Parent.Parent.FindControl("prog_name") as Label;
            Session["ProgName"] = ProgNameLabel.Text;
            //Response.Write(Session["email"]);
            //Response.Write(Session["ProgName"]);
            Response.Redirect("bid_now.aspx");
        }

    }
}