using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Ionic.Zip;

namespace NameMyFee
{
    public partial class demo : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection(@"Data Source = (localdb)\MSSQLlocalDB; Initial Catalog = University; Integrated Security = True; Pooling=False");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["email"] == null)
            {
                Response.Redirect("login.aspx", true);
            }

            
            if (!IsPostBack)
            {
                BindGrid();
            }

            foreach (GridViewRow row in GridView1.Rows)
            {
                con.Open();
                Label paymentLabel = row.FindControl("payment_status") as Label;
                Label idLabel = row.FindControl("application_id") as Label;
                string query4 = "select payment_status from applicants where id=" + "'" + idLabel.Text + "'";
                SqlCommand cmd5 = new SqlCommand(query4, con);
                String bid_payment = cmd5.ExecuteScalar().ToString();

                if(bid_payment == "Paid")
                {
                    paymentLabel.Text = "Paid";
                }
                else
                {
                    paymentLabel.Text = "Pending";
                }
                con.Close();
            }
        }



        private void BindGrid()
        {
            
            string constr = @"Data Source = (localdb)\MSSQLlocalDB; Initial Catalog = University; Integrated Security = True; Pooling=False";
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.CommandText = "SELECT * FROM invitees where uni_name=" + "'" + Session["name"] + "'" + " AND program =" + "'" + Session["ProgName"] + "';";
                    cmd.Connection = con;
                    con.Open();
                    GridView1.DataSource = cmd.ExecuteReader();
                    GridView1.DataBind();
                    con.Close();
                }
                using (SqlCommand cmd2 = new SqlCommand())
                {

                    cmd2.CommandText = "select Id, name, bid_price, nationality, country from applicants where uni_applied=" + "'" + Session["name"] + "'" + " AND prog_applied =" + "'" + Session["ProgName"] + "'" + " AND status ='Pending'";
                    cmd2.Connection = con;
                    con.Open();
                    GridView2.DataSource = cmd2.ExecuteReader();
                    GridView2.DataBind();
                    con.Close();

                }

                con.Open();
                string query2 = "select count(*) from applicants where uni_applied=" + "'" + Session["name"] + "'" + " AND prog_applied =" + "'" + Session["ProgName"] + "'" + " AND status ='invited'";
                string query3 = "select available_seats from programs where uni_name=" + "'" + Session["name"] + "'" + " AND prog_name =" + "'" + Session["ProgName"] + "'";
                SqlCommand cmd3 = new SqlCommand(query2, con);
                SqlCommand cmd4 = new SqlCommand(query3, con);
                Label6.Text = cmd3.ExecuteScalar().ToString();
                Label7.Text = cmd4.ExecuteScalar().ToString();

                con.Close();

            }

            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string constr = @"Data Source = (localdb)\MSSQLlocalDB; Initial Catalog = University; Integrated Security = True; Pooling=False";
            using (SqlConnection con = new SqlConnection(constr))
            {
                foreach (GridViewRow gvrow in GridView2.Rows)
                {
                    var checkbox = gvrow.FindControl("CheckBox1") as CheckBox;
                    if (checkbox.Checked)
                    {
                        con.Open();
                        var lblID = gvrow.FindControl("Label1") as Label;
                        var lblName = gvrow.FindControl("Label2") as Label;
                        var lblBid = gvrow.FindControl("Label5") as Label;
                        Label random = GridView2.FindControl("Label2") as Label;

                        SqlCommand cmd2 = new SqlCommand("update applicants set status='invited' where id='" + lblID.Text + "';", con);
                        String query = "select email from applicants where id = " + "'" + lblID.Text + "';";
                        SqlCommand cmd3 = new SqlCommand(query, con);
                        String applicant_email = cmd3.ExecuteScalar().ToString();
                        SqlCommand cmd4 = con.CreateCommand();
                        cmd4.CommandType = CommandType.Text;
                        cmd4.CommandText = "insert into invitees(name,email,bid_amount,uni_name,program,application_id) values(" + "'" + lblName.Text + "','" + applicant_email + "','" + lblBid.Text + "','" + Session["name"] + "','" + Session["ProgName"] + "','" + lblID.Text + "');";
                        cmd4.ExecuteNonQuery();
                        cmd2.ExecuteNonQuery();

                        con.Close();
                        BindGrid();
                    }
                }
            }
        }

        protected void DownloadFile(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            Label nameLabel = btn.Parent.Parent.FindControl("Label1") as Label;
            Session["id"] = nameLabel.Text;

            con.Open();

            String query = "SELECT document_path from invitees where id = " + "'" + Session["id"] + "';";
            SqlCommand cmd = new SqlCommand(query, con);
            string path = cmd.ExecuteScalar().ToString();

            /*string[] filePaths = Directory.GetFiles(path);
            Response.Write(filePaths.Length);*/

            string[] filePaths = Directory.GetFiles(path);
            List<ListItem> files = new List<ListItem>();
            ZipFile zip = new ZipFile();
            foreach (string filePath in filePaths)
            {
                files.Add(new ListItem(Path.GetFileName(filePath), filePath));
                zip.AddFile(filePath, "Documents");
            }
            zip.AlternateEncodingUsage = ZipOption.AsNecessary;
            zip.AddDirectoryByName("Documents");
            Response.Clear();
            Response.BufferOutput = false;
            string zipName = String.Format("Documents_{0}.zip", Path.GetFileName(path));
            Response.ContentType = "application/zip";
            Response.AddHeader("content-disposition", "attachment; filename=" + zipName);
            zip.Save(Response.OutputStream);
            Response.End();




            /*for (int i = 1; i <= 4; i++)
            {
                WebClient req = new WebClient();
                HttpResponse response = HttpContext.Current.Response;
                response.Clear();
                response.ClearContent();
                response.ClearHeaders();
                response.Buffer = true;
                response.AddHeader("Content-Disposition", "attachment;filename=\"" + Path.GetFileName(filePaths[i]) + "\"");
                byte[] data = req.DownloadData((filePaths[i]));
                response.BinaryWrite(data);
                response.End();

                
            }*/

            con.Close();
        }

    }
}