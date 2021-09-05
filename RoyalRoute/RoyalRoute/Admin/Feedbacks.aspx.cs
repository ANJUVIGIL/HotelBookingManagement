using BLL.Manager;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RoyalRoute.Admin
{
    public partial class Feedbacks : System.Web.UI.Page
    {
        ContactManager cm = new ContactManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["logid"] != null)
            {
                if (!Page.IsPostBack)
                {
                    BindMsg();
                }
            }
            else
            {
                Response.Redirect("~/Public/login.aspx");
            }
           
        }

        private void BindMsg()
        {
            GridView1.DataSource = cm.SelectAllFeedbacks();
            GridView1.DataBind();
        }

        protected void imgbtnDelete_Click(object sender, ImageClickEventArgs e)
        {


            ImageButton imgbtn = sender as ImageButton;
            GridViewRow gvr = imgbtn.NamingContainer as GridViewRow;
            HiddenBooking.Value = GridView1.DataKeys[gvr.RowIndex].Value.ToString();
            MsgDelete();




           
        }

        private void MsgDelete()
        {
            cm.cnt_pro.id = int.Parse(HiddenBooking.Value);
            string result = cm.MsgDelete();

            HiddenBooking.Value = "-1";

            if (result == "Success")
            {

                //Lblimageshow.Visible = false;
                lblMsg.Visible = true;
                lblMsg.Text = "Successfully Deleted";

            }
            else if (result == "Error")
            {
                lblMsg.Visible = true;
                lblMsg.Text = "failed due to some  error";
            }

            //else if (result == "Already exist")
            //{
            //    lblMsg.Visible = true;
            //    lblMsg.Text = "Already Exist";
            //}
            else
            {
                lblMsg.Visible = true;
                lblMsg.Text = "failed due to some technical error";
            }
            BindMsg();
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            this.BindMsg(); 
        }
    }
}