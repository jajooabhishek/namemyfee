using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NameMyFee
{
    public partial class view_applicants : System.Web.UI.Page
    {
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
        }

        

        private void BindGrid()
        {
            string constr = @"Data Source = (localdb)\MSSQLlocalDB; Initial Catalog = University; Integrated Security = True; Pooling=False";
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.CommandText = "select Id, name, email, document_name, application_id from invitees";
                    cmd.Connection = con;
                    con.Open();
                    GridView1.DataSource = cmd.ExecuteReader();
                    GridView1.DataBind();
                    con.Close();
                }
                using (SqlCommand cmd2 = new SqlCommand())
                {

                    cmd2.CommandText = "select Id, name, bid_price, nationality, country from applicants where uni_applied=" + "'" + Session["name"] + "'" + " AND prog_applied =" + "'" + Session["ProgName"] + "';";
                    cmd2.Connection = con;
                    con.Open();
                    GridView2.DataSource = cmd2.ExecuteReader();
                    GridView2.DataBind();
                    con.Close();

                }
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
                        cmd4.CommandText = "insert into invitees(name,email,bid_amount,application_id) values(" + "'" + lblName.Text + "','" + applicant_email + "','" + lblBid.Text + "','" + lblID.Text + "');";
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
            int id = int.Parse((sender as LinkButton).CommandArgument);
            byte[] bytes;
            string fileName, contentType;
            string constr = @"Data Source = (localdb)\MSSQLlocalDB; Initial Catalog = University; Integrated Security = True; Pooling=False";
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.CommandText = "select email, document_name, document from invitees where Id=@Id";
                    cmd.Parameters.AddWithValue("@Id", id);
                    cmd.Connection = con;
                    con.Open();
                    using (SqlDataReader sdr = cmd.ExecuteReader())
                    {
                        sdr.Read();
                        bytes = (byte[])sdr["document"];
                        contentType = sdr["email"].ToString();
                        fileName = sdr["document_name"].ToString();
                    }
                    con.Close();
                }
            }
            Response.Clear();
            Response.Buffer = true;
            Response.Charset = "";
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.ContentType = contentType;
            Response.AppendHeader("Content-Disposition", "attachment; filename=" + fileName);
            Response.BinaryWrite(bytes);
            Response.Flush();
            Response.End();
        }

    }
}