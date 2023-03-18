using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NameMyFee
{
    public partial class admin_panel : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source = (localdb)\MSSQLlocalDB; Initial Catalog = University; Integrated Security = True; Pooling=False");

        protected void Page_Load(object sender, EventArgs e)
        {
            SqlDataSource1.SelectCommand = "SELECT * FROM uni_login where user_type='Admin'";
        }

        protected void prog_applicants(object sender, EventArgs e)
        {
            LinkButton btn = (LinkButton)sender;
            Label StatusLabel = btn.Parent.Parent.FindControl("Label4") as Label;
            Session["satus_label"] = StatusLabel.Text;
            Label ProgNameLabel = btn.Parent.Parent.FindControl("Label3") as Label;
            Session["Uni_Name"] = ProgNameLabel.Text;
            //Response.Write(Session["email"]);
            Response.Redirect("user_profile.aspx");
        }
    }
}