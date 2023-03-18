using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NameMyFee
{
    public partial class student_dash : System.Web.UI.Page
    {

        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection(@"Data Source = (localdb)\MSSQLlocalDB; Initial Catalog = University; Integrated Security = True; Pooling=False");

        Label UniNameLabel, ProgNameLabel, MinBidLabel, FullTutionFeeLabel, OtherFeesLabel;
        Image uniPic;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["email"] == null)
            {
                Response.Redirect("login.aspx", true);
            }

            SqlDataSource1.SelectCommand = "select * from applicants where email =" + "'" + Session["email"] + "'";
            
            foreach (GridViewRow row in GridView2.Rows)
            {
                //Label lb = (Label)row.FindControl("LabelID");
                UniNameLabel = row.FindControl("uni_name") as Label;
                ProgNameLabel = row.FindControl("prog_name") as Label;
                MinBidLabel = row.FindControl("min_bid") as Label;
                FullTutionFeeLabel = row.FindControl("full_tution_fee") as Label;
                OtherFeesLabel = row.FindControl("other_fees") as Label;
                uniPic = row.FindControl("Image5") as Image;
                con.Open();
                String query2 = "SELECT campus_image_path from uni_login where name = " + "'" + UniNameLabel.Text + "' and user_type = 'Admin'";
                SqlCommand cmd2 = new SqlCommand(query2, con);
                uniPic.ImageUrl = cmd2.ExecuteScalar().ToString();
                con.Close();
                Get_Programme_Data();
            }

            Status_Change();



            //Label min_bid_label = GridView2.FindControl("min_bid") as Label;
            //min_bid_label.Text = (string)Session["MinBid"];
            /*Session["uni"] = Label1.Text;
            Session["program"] = Label2.Text;
            Session["annual_fee"] = Label3.Text;
            Session["minimum_fee"] = Label4.Text;
            Session["current_bid"] = Label5.Text;
            Session["other_fee"] = Label6.Text;
            Label1.Text = "Applications for " + Session["email"];*/
        }

        protected void Get_Programme_Data()
        {
            con.Open();

            String CheckQuery = "select count(*) from applicants where email=" + "'" + Session["email"] + "';";
            SqlCommand CheckCmd = new SqlCommand(CheckQuery, con);
            String CountCheck = CheckCmd.ExecuteScalar().ToString();


            if (int.Parse(CountCheck) > 0)
            {

                //Response.Write(Session["UniName"]+" "+Session["ProgName"]);

                //String query = "select min_price from programs where uni_name = " + "'" + UniNameLabel.Text + "'" + "AND prog_name = " + "'" + ProgNameLabel.Text + "'";
                //SqlCommand cmd = new SqlCommand(query, con);
                //MinBidLabel.Text = cmd.ExecuteScalar().ToString();

                String query1 = "select full_tution_fee from programs where uni_name = " + "'" + UniNameLabel.Text + "'" + "AND prog_name = " + "'" + ProgNameLabel.Text + "'";
                SqlCommand cmd1 = new SqlCommand(query1, con);
                FullTutionFeeLabel.Text = cmd1.ExecuteScalar().ToString();

                String query2 = "select other_fees from programs where uni_name = " + "'" + UniNameLabel.Text + "'" + "AND prog_name = " + "'" + ProgNameLabel.Text + "'";
                SqlCommand cmd2 = new SqlCommand(query2, con);
                OtherFeesLabel.Text = cmd2.ExecuteScalar().ToString();

                con.Close();

            }
        }

        protected void prog_applicants(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            Label UniLabel = btn.Parent.Parent.FindControl("uni_name") as Label;
            Session["UniName"] = UniLabel.Text;
            Label ProgLabel = btn.Parent.Parent.FindControl("prog_name") as Label;
            Session["ProgName"] = ProgLabel.Text;
            Label BidLabel = btn.Parent.Parent.FindControl("bid_price") as Label;
            Session["BidPrice"] = BidLabel.Text;
            Label FullFeeLabel = btn.Parent.Parent.FindControl("full_tution_fee") as Label;
            Session["TutionLabel"] = FullFeeLabel.Text;
            Label OtherLabel = btn.Parent.Parent.FindControl("other_fees") as Label;
            Session["otherPrice"] = OtherLabel.Text;
            //Response.Write(Session["email"]);
            Response.Redirect("invitation.aspx");
        }

        protected void Status_Change()
        {

            con.Open();

            String CheckQuery = "select count(*) from applicants where email=" + "'" + Session["email"] + "';";
            SqlCommand CheckCmd = new SqlCommand(CheckQuery, con);
            String CountCheck = CheckCmd.ExecuteScalar().ToString();

            if (int.Parse(CountCheck) > 0)
            {
                /*String query = "select uni_applied from applicants where email=" + "'" + Session["email"] + "';";
                SqlCommand cmd = new SqlCommand(query, con);
                String UniApplied = cmd.ExecuteScalar().ToString();

                String query1 = "select prog_applied from applicants where email=" + "'" + Session["email"] + "';";
                SqlCommand cmd1 = new SqlCommand(query1, con);
                String ProgApplied = cmd1.ExecuteScalar().ToString();*/


                foreach (GridViewRow row in GridView2.Rows)
                {

                    Label UniNameLabel = row.FindControl("uni_name") as Label;
                    Label ProgNameLabel = row.FindControl("prog_name") as Label;
                    Label AnnualFeeLabel = row.FindControl("full_tution_fee") as Label;
                    Label MinimumBidLabel = row.FindControl("min_price") as Label;
                    Label CurrentBidLabel = row.FindControl("bid_price") as Label;
                    Label OtherFeeLabel = row.FindControl("other_fees") as Label;

                    Session["uni"] = UniNameLabel;
                    Session["program"] = ProgNameLabel;
                    Session["annual_fee"] = AnnualFeeLabel;
                    Session["minimum_fee"] = MinimumBidLabel;
                    Session["current_bid"] = CurrentBidLabel;
                    Session["other_fee"] = OtherFeeLabel;

                    String query2 = "select status from applicants where email=" + "'" + Session["email"] + "'" + " AND uni_applied =" + "'" + UniNameLabel.Text + "'" + " AND prog_applied =" + "'" + ProgNameLabel.Text + "';";
                    SqlCommand cmd2 = new SqlCommand(query2, con);
                    String status = cmd2.ExecuteScalar().ToString();

                    PlaceHolder placeholder = row.FindControl("placeholder1") as PlaceHolder;

                    if (status == "Pending" || status == "pending")
                    {
                        placeholder.Controls.Add(new Literal() { Text = "<div class=\"input-group\">" });

                        TextBox textbox1 = new TextBox();
                        textbox1.Text = "Increase Bid";
                        textbox1.ID = "textbox1";
                        textbox1.CssClass = "form-control br-tl-3  br-bl-3";
                        placeholder.Controls.Add(textbox1);

                        placeholder.Controls.Add(new Literal() { Text = "<div class=\"input-group-append\">" });

                        Button BidNowButton = new Button();
                        BidNowButton.Text = "Bid Now";
                        BidNowButton.ID = "bid_now_button";
                        BidNowButton.CssClass = "btn btn-primary br-tr-3  br-br-3";
                        BidNowButton.PostBackUrl = "~/info_page.aspx";
                        placeholder.Controls.Add(BidNowButton);

                        placeholder.Controls.Add(new Literal() { Text = "</div> </div>" });

                    }
                    else if (status == "Invited" || status == "invited")
                    {
                        placeholder.Controls.Add(new Literal() { Text = "<div class=\"input-group\">" });
                        placeholder.Controls.Add(new Literal() { Text = "<div class=\"input-group-append\">" });

                        Button BidNowButton = new Button();
                        BidNowButton.Text = "Complete Application";
                        BidNowButton.ID = "bid_now_button";
                        BidNowButton.CssClass = "btn btn-primary br-tr-3  br-br-3";
                        BidNowButton.Click += new EventHandler(prog_applicants);
                        placeholder.Controls.Add(BidNowButton);

                        placeholder.Controls.Add(new Literal() { Text = "</div>" });
                        placeholder.Controls.Add(new Literal() { Text = "</div>" });
                    }
                }
            }
        }
    }
}
 