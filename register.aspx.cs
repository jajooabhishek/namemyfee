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
    public partial class register : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source = (localdb)\MSSQLlocalDB; Initial Catalog = University; Integrated Security = True; Pooling=False");
        String encrypwd;

        public void encryption1()
        {
            string strmsg = string.Empty;
            byte[] encode = new byte[password.Text.ToString().Length];
            encode = Encoding.UTF8.GetBytes(password.Text);
            strmsg = Convert.ToBase64String(encode);
            encrypwd = strmsg;
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            encryption1();

            String query = "SELECT count(email) FROM uni_login where email=" + "'" + email.Text + "'";
            SqlCommand cmd2 = new SqlCommand(query, con);
            string UserExist = cmd2.ExecuteScalar().ToString();

            if (UserExist == "1")
            {
                Label2.Text = "User Exists";
            }
            else
            {
                cmd.CommandText = "insert into Uni_login(user_type,admin_name,name,country,city,email,password,contact_number,license,uni_link)" + "values('" + Label1.Text + "','" + TextBox1.Text + "','" + name.Text + "','" + DropDownList1.SelectedItem.Value + "','" + city.Text + "','" + email.Text + "','" + encrypwd + "','" + number.Text + "','" + license.Text + "','" + uni_link.Text + "');";
                cmd.ExecuteNonQuery();
                Response.Redirect("login.aspx");
            }
            con.Close();
            
        }
    }
}

