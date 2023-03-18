using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NameMyFee
{
    public partial class university_list : System.Web.UI.Page
    {

        public string uni_name;
        SqlCommand cmd = new SqlCommand();


        SqlConnection con = new SqlConnection(@"Data Source = (localdb)\MSSQLlocalDB; Initial Catalog = University; Integrated Security = True; Pooling=False");

        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
            if (Session["filter"] == null || Session["filter"] == "")
            {
                SqlDataSource1.SelectCommand = "select * from Uni_login where status = 'Invited' and user_type = 'Admin'";
            }
            else
            {
                SqlDataSource1.SelectCommand = "select * from Uni_login where status='Invited' and user_type='Admin' and name='" + Session["filter"] + "'";
            }
            //cmd.Connection = con;
            //SqlDataReader rd = cmd.ExecuteReader();

            /*
            
            List<MyObj> Items = new List<MyObj>();

            while (rd.Read())
            {
                var item = new MyObj
                {
                    Name = rd["name"].ToString(),
                    Link = rd["uni_link"].ToString()
                };
                Items.Add(item);

            }*/

            

            if (!IsPostBack)
            {

                foreach (GridViewRow row in GridView2.Rows)
                {
                    Label random = row.FindControl("Label2") as Label;
                    Label uni = row.FindControl("uni_name") as Label;

                    String query2 = "SELECT count(prog_name) from programs where uni_name = " + "'" + uni.Text + "'";
                    SqlCommand cmd2 = new SqlCommand(query2, con);
                    random.Text = cmd2.ExecuteScalar().ToString();
                }
                    
            }

            con.Close();
        }

        protected void Button_Press(object sender, EventArgs e)
        {

            Button btn = (Button)sender;
            Label UniNameLabel = btn.Parent.Parent.FindControl("uni_name") as Label;
            Session["UniName"] = UniNameLabel.Text;
            Response.Redirect("info_page.aspx");

        }

        //protected void SqlDataSource1_Selected(object sender, SqlDataSourceStatusEventArgs e)
        //{
        //    if (e.AffectedRows <= 0)
        //    {
        //        no_rec.Visible = true;
        //    }
        //    else
        //        no_rec.Visible = false;
        //}
    }
}