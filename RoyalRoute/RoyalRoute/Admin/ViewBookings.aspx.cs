using BLL.Manager;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RoyalRoute.Admin
{
    public partial class ViewBookings : System.Web.UI.Page
    {
        BookingManager bm = new BookingManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["logid"] != null)
            {
                if (Page.IsPostBack == false)
                {
                    BindGrid();
                }
            }
            else
            {
                Response.Redirect("~/Public/login.aspx");
            }
           
        }

        private void BindGrid()
        {
            GridView1.DataSource = bm.SelectAllBookings();
            GridView1.DataBind();
        }

        protected void imgBtnApprove_Click(object sender, ImageClickEventArgs e)
        {

            ImageButton imgbtn = sender as ImageButton;
            GridViewRow gvr = imgbtn.NamingContainer as GridViewRow;
            HiddenBooking.Value = GridView1.DataKeys[gvr.RowIndex].Value.ToString();
            BookingApprove();


        }

        private void BookingApprove()
        {
            bm.bkng_pro.Book_id = int.Parse(HiddenBooking.Value);
            string result = bm.BookingApprove();

            HiddenUser.Value = "-1";

            if (result == "Success")
            {

                //Lblimageshow.Visible = false;
                lblMsg.Visible = true;
                lblMsg.Text = "Successfully Approved";

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
            BindGrid();
        }

       

        protected void GridView1_PageIndexChanging1(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            this.BindGrid(); 
        
        }

       
    }
}