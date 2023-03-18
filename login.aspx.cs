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
    public partial class login : System.Web.UI.Page
    {
        
        static String decryptedpwd;
        SqlConnection scon = new SqlConnection(@"Data Source = (localdb)\MSSQLlocalDB; Initial Catalog = University; Integrated Security = True; Pooling=False");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private void decryptpwd(String encrytpwd)
        {
            string decryptpwd = string.Empty;
            UTF8Encoding encodepwd = new UTF8Encoding();
            Decoder Decode = encodepwd.GetDecoder();
            byte[] todecode_byte = Convert.FromBase64String(encrytpwd);
            int charCount = Decode.GetCharCount(todecode_byte, 0, todecode_byte.Length);
            char[] decoded_char = new char[charCount];
            Decode.GetChars(todecode_byte, 0, todecode_byte.Length, decoded_char, 0);
            decryptpwd = new String(decoded_char);
            decryptedpwd = decryptpwd;

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

        protected void Button1_Click(object sender, EventArgs e)
        {

            scon.Open();
            String query = "select * from student_login where email='" + mail.Text + "'";
            String query2 = "select * from uni_login where email='" + mail.Text + "'";
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = query;
            cmd.Connection = scon;
            SqlCommand cmd2 = new SqlCommand();
            cmd2.CommandText = query2;
            cmd2.Connection = scon;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            String uname;
            String pass;
            SqlDataAdapter da2 = new SqlDataAdapter();
            da2.SelectCommand = cmd2;
            DataSet ds2 = new DataSet();
            da2.Fill(ds2);
            String uname2;
            String pass2;
            String name;

          

            if (ds.Tables[0].Rows.Count > 0)
            {
                uname = ds.Tables[0].Rows[0]["email"].ToString();
                pass = ds.Tables[0].Rows[0]["password"].ToString();
                

                scon.Close();

                decryptpwd(pass);
                if (uname == mail.Text && decryptedpwd == password.Text)
                {
                    Session["email"] = uname;
                    Response.Redirect("student_dash.aspx");
                }
                else
                {
                    Label1.Text = "Invalid username or password";
                }

            }
            else if (ds2.Tables[0].Rows.Count > 0)
            {
                uname2 = ds2.Tables[0].Rows[0]["email"].ToString();
                pass2 = ds2.Tables[0].Rows[0]["password"].ToString();
                name = ds2.Tables[0].Rows[0]["name"].ToString();

                scon.Close();

                decryptpwd(pass2);
                if (uname2 == mail.Text && decryptedpwd == password.Text)
                {
                    Session["email"] = uname2;
                    Session["name"] = name;
                    Response.Redirect("university_dash.aspx");
                }
                else
                {
                    Label1.Text = "Invalid username or password";
                }

            }
            else
            {
                Label1.Text = "Invalid Credentials";
            }

        }
    }
}

