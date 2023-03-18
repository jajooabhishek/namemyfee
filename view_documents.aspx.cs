using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NameMyFee
{
    public partial class view_documents : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                this.BindGrid();
            }
        }

        protected void Upload(object sender, EventArgs e)
        {
            foreach (HttpPostedFile postedFile in FileUpload1.PostedFiles)
            {
                string filename = Path.GetFileName(postedFile.FileName);
                string contentType = postedFile.ContentType;
                using (Stream fs = postedFile.InputStream)
                {
                    using (BinaryReader br = new BinaryReader(fs))
                    {
                        byte[] bytes = br.ReadBytes((Int32)fs.Length);
                        string constr = @"Data Source = (localdb)\MSSQLlocalDB; Initial Catalog = University; Integrated Security = True; Pooling=False";
                        using (SqlConnection con = new SqlConnection(constr))
                        {
                            string query = "insert into invitees (email, document_name, document) values (@email,@document_name, @document)";
                            using (SqlCommand cmd = new SqlCommand(query))
                            {
                                cmd.Connection = con;
                                cmd.Parameters.AddWithValue("@email", Label1.Text);
                                cmd.Parameters.AddWithValue("@document_name", filename);
                                cmd.Parameters.AddWithValue("@document", bytes);
                                con.Open();
                                cmd.ExecuteNonQuery();
                                con.Close();
                            }
                        }
                    }
                }
            }
            Response.Redirect(Request.Url.AbsoluteUri);
        }

        private void BindGrid()
        {
            string constr = @"Data Source = (localdb)\MSSQLlocalDB; Initial Catalog = University; Integrated Security = True; Pooling=False";

            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.CommandText = "select * from invitees where application_id=" + "'" + Session["doc_id"] + "'";
                    cmd.Connection = con;
                    con.Open();
                    GridView1.DataSource = cmd.ExecuteReader();
                    GridView1.DataBind();
                    con.Close();
                }
            }
        }
    }
}