using BLL.Manager;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RoyalRoute.User
{
    public partial class MyBookings : System.Web.UI.Page
    {
        BookingManager bm = new BookingManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["logid"] != null)
            {
                if (!Page.IsPostBack)
                {

                    Response.Cache.SetExpires(DateTime.UtcNow.AddDays(-1));
                    Response.Cache.SetCacheability(HttpCacheability.NoCache);
                    Response.Cache.SetNoStore();

                    BindBookings();
                }
            }
            else
            {
                Response.Redirect("~/Public/login.aspx");
            }
        }

        private void BindBookings()
        {
            bm.bkng_pro.User_id = Convert.ToInt32(Session.Contents["logid"]);
            GridView1.DataSource = bm.SelectAllBookingsById();
            GridView1.DataBind();
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            this.BindBookings();
        }
    }
}