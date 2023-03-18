using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Configuration;

namespace NameMyFee
{
    public partial class invitation : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source = (localdb)\MSSQLlocalDB; Initial Catalog = University; Integrated Security = True; Pooling=False");
        string username, id, path, status;

        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["email"] == null)
            {
                Response.Redirect("login.aspx", true);
            }

            text1.Text = "" + Session["UniName"];
            text2.Text = "" + Session["ProgName"];
            text3.Text = "" + Session["email"];
            text4.Text = "" + Session["TutionLabel"];
            text5.Text = "" + Session["otherPrice"];
            text6.Text = "" + Session["BidPrice"];

            con.Open();

            String query = "SELECT name from invitees where email = " + "'" + Session["email"] + "';";
            SqlCommand cmd = new SqlCommand(query, con);
            username = cmd.ExecuteScalar().ToString().Replace(" ", "");

            String idquery = "SELECT id from invitees where email = " + "'" + Session["email"] + "';";
            SqlCommand idcmd = new SqlCommand(idquery, con);
            id = idcmd.ExecuteScalar().ToString();

            String paymentquery = "SELECT payment_status from applicants where email = " + "'" + Session["email"] + "'" + " AND prog_applied =" + "'" + Session["ProgName"] + "'" + " AND uni_applied =" + "'" + Session["UniName"] + "';";
            SqlCommand cm2 = new SqlCommand(paymentquery, con);
            status = cm2.ExecuteScalar().ToString();

            String order_id = "SELECT id from applicants where email = " + "'" + Session["email"] + "'" + " AND prog_applied =" + "'" + Session["ProgName"] + "'" + " AND uni_applied =" + "'" + Session["UniName"] + "';";
            SqlCommand order = new SqlCommand(order_id, con);
            Textbox1.Text = order.ExecuteScalar().ToString();

            path = Server.MapPath("~/Documents/" + username + id);
            Directory.CreateDirectory(path);

            if (status == "Paid")
            {
                Label1.Text = "Payment Successful";
            }

            con.Close();

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            con.Open();

            SqlCommand payment = con.CreateCommand();
            payment.CommandType = CommandType.Text;
            payment.CommandText = "update applicants set payment_status = 'Paid'" + "where id =" + "'" + Textbox1.Text + "';";

            payment.ExecuteNonQuery();           

            con.Close();
            Response.Redirect("invitation.aspx");
        }

            protected void Button1_Click(object sender, EventArgs e)
        {
            /*string filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
            string contentType = FileUpload1.PostedFile.ContentType;
            using (Stream fs = FileUpload1.PostedFile.InputStream)
            {
                using (BinaryReader br = new BinaryReader(fs))
                {
                    byte[] bytes = br.ReadBytes((Int32)fs.Length);
                    using (SqlConnection con = new SqlConnection(constr))
                    {
                        string query = "update invitees set document_name = @document_name, document = @document, uni_name = @uni_name, program = @program where email='" + Session["email"] + "'" + " AND program =" + "'" + Session["ProgName"] + "';";
                        using (SqlCommand cmd = new SqlCommand(query))
                        {
                            cmd.Connection = con;
                            cmd.Parameters.AddWithValue("@document_name", filename);
                            
                            cmd.Parameters.AddWithValue("@document", bytes);
                            cmd.Parameters.AddWithValue("@uni_name", text1.Text);
                            cmd.Parameters.AddWithValue("@program", text2.Text);
                            con.Open();
                            cmd.ExecuteNonQuery();
                            con.Close();
                        }
                    }
                }
            }*/
            photo_upload();
            passport_upload();
            id_upload();
            transcript_upload();

            con.Open();

            SqlCommand pathCmd = con.CreateCommand();
            pathCmd.CommandType = CommandType.Text;
            pathCmd.CommandText = "update invitees set document_path =" + "'" + path + "'" + "where email =" + "'" + Session["email"] + "'" + " AND program =" + "'" + Session["ProgName"] + "';";

            pathCmd.ExecuteNonQuery();

            con.Close();
            Response.Redirect("student_dash.aspx");

        }

        protected void photo_upload()
        {
            string documentPath = "/Documents/" + username + id + "/photo" + System.IO.Path.GetExtension(photo_input.FileName);
            photo_input.SaveAs(Server.MapPath(documentPath));

            //con.Open();
            //SqlCommand cmd = con.CreateCommand();
            //cmd.CommandType = CommandType.Text;
            //cmd.CommandText = "update invitees set photo_path =" + "'" + documentPath + "'" + "where name =" + "'" + Session["name"] + "';";

            //cmd.ExecuteNonQuery();
            //con.Close();
        }

        protected void passport_upload()
        {
            string documentPath = "/Documents/" + username + id + "/passport" + System.IO.Path.GetExtension(photo_input.FileName);
            photo_input.SaveAs(Server.MapPath(documentPath));

            //con.Open();
            //SqlCommand cmd = con.CreateCommand();
            //cmd.CommandType = CommandType.Text;
            //cmd.CommandText = "update invitees set passport_path =" + "'" + documentPath + "'" + "where name =" + "'" + Session["name"] + "';";

            //cmd.ExecuteNonQuery();
            //con.Close();
        }

        protected void id_upload()
        {
            string documentPath = "/Documents/" + username + id + "/id" + System.IO.Path.GetExtension(photo_input.FileName);
            photo_input.SaveAs(Server.MapPath(documentPath));

            //con.Open();
            //SqlCommand cmd = con.CreateCommand();
            //cmd.CommandType = CommandType.Text;
            //cmd.CommandText = "update invitees set id_path =" + "'" + documentPath + "'" + "where name =" + "'" + Session["name"] + "';";

            //cmd.ExecuteNonQuery();
            //con.Close();
        }

        protected void transcript_upload()
        {
            string documentPath = "/Documents/" + username + id + "/transcript" + System.IO.Path.GetExtension(photo_input.FileName);
            photo_input.SaveAs(Server.MapPath(documentPath));

            //con.Open();
            //SqlCommand cmd = con.CreateCommand();
            //cmd.CommandType = CommandType.Text;
            //cmd.CommandText = "update invitees set transcript_path =" + "'" + documentPath + "'" + "where name =" + "'" + Session["name"] + "';";

            //cmd.ExecuteNonQuery();
            //con.Close();
        }

    }
}