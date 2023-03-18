using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NameMyFee
{
    public partial class home_page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlDataSource1.SelectCommand = "select * from Uni_login where status = 'Invited' and user_type = 'Admin'";
        }

        protected void LinkButton_Click(Object sender, EventArgs e)
        {
            Session["filter"] = TextBox1.Text;
            Response.Redirect("university_list.aspx");
        }

    }
}