using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NameMyFee
{
    public partial class add_managers : System.Web.UI.Page
    {
        string inv = "Invited";
        SqlConnection con = new SqlConnection(@"Data Source = (localdb)\MSSQLlocalDB; Initial Catalog = University; Integrated Security = True; Pooling=False");
        String encrypwd;

        public void encryption1()
        {
            string strmsg = string.Empty;
            byte[] encode = new byte[TextBox4.Text.ToString().Length];
            encode = Encoding.UTF8.GetBytes(TextBox4.Text);
            strmsg = Convert.ToBase64String(encode);
            encrypwd = strmsg;
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["email"] == null)
            {
                Response.Redirect("login.aspx", true);
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();

            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            encryption1();
            cmd.CommandText = "insert into uni_login(user_type,admin_name,name,email,password,department,status) values('" + Label1.Text + "','" + TextBox1.Text + "','" + Session["Uni_Name"] + "','" + TextBox3.Text + "','" + encrypwd + "','" + TextBox2.Text + "','" + inv + "');";
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("user_profile.aspx");
        }
    }
}