using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NameMyFee
{
    public partial class uni_list2 : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();

        SqlConnection con = new SqlConnection(@"Data Source = (localdb)\MSSQLlocalDB; Initial Catalog = University; Integrated Security = True; Pooling=False");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["email"] == null)
            {
                Response.Redirect("login.aspx", true);
            }

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

            SqlDataSource1.SelectCommand = "select * from Uni_login where status = 'Invited' and user_type = 'Admin'";
        }

        protected void Button_Press(object sender, EventArgs e)
        {

            Button btn = (Button)sender;
            Label UniNameLabel = btn.Parent.Parent.FindControl("uni_name") as Label;
            Session["UniName"] = UniNameLabel.Text;
            Response.Redirect("info_page.aspx");
            Response.Write("UniName = " + Session["UniName"]);

        }

    }
}