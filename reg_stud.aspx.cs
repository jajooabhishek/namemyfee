using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Text;

namespace NameMyFee
{
    public partial class reg_stud : System.Web.UI.Page
    {
        String encrypwd;
        SqlConnection con = new SqlConnection(@"Data Source = (localdb)\MSSQLlocalDB; Initial Catalog = University; Integrated Security = True; Pooling=False");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public string DecryptString(string encrString)
        {
            byte[] b;
            string decrypted;

            try
            {
                b = Convert.FromBase64String(encrString);
                decrypted = System.Text.ASCIIEncoding.ASCII.GetString(b);
            }
            catch (FormatException fe)
            {
                decrypted = "";
            }
            return decrypted;
        }

        public string EncryptSting(string strEncrypted)
        {
            byte[] b = System.Text.ASCIIEncoding.ASCII.GetBytes(strEncrypted);
            string encrypted = Convert.ToBase64String(b);
            return encrypted;
        }

        public void encryption1()
        {
            string strmsg = string.Empty;
            byte[] encode = new byte[password.Text.ToString().Length];
            encode = Encoding.UTF8.GetBytes(password.Text);
            strmsg = Convert.ToBase64String(encode);
            encrypwd = strmsg;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            encryption1();
            String query = "SELECT count(email) FROM student_login where email=" + "'" + email.Text + "'";
            SqlCommand cmd2 = new SqlCommand(query, con);
            int UserExist = (int)cmd2.ExecuteScalar();

            if (UserExist > 0)
            {
                Label1.Text = "User Exists";
            }
            else
            {
                cmd.CommandText = "insert into student_login(first_name,last_name,email,password,mobile_no,nationality,country,city,dob)" + "values('" + name.Text + "','" + l_name.Text + "','" + email.Text + "','" + encrypwd + "','" + mobile.Text + "','" + nationality.Text + "','" + DropDownList1.SelectedItem.Value + "','" + city.Text + "','" + TextBox2.Text + "');";
                cmd.ExecuteNonQuery();
                Response.Redirect("login.aspx");
            }

                        

            con.Close();
            

        }
    }
}

