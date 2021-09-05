using BLL.Manager;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RoyalRoute.User
{
    public partial class Packages : System.Web.UI.Page
    {
        int hidid;
        PakageManager pm = new PakageManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["logid"] != null)
            {
                if (Page.IsPostBack == false)
                {
                    Response.Cache.SetExpires(DateTime.UtcNow.AddDays(-1));
                    Response.Cache.SetCacheability(HttpCacheability.NoCache);
                    Response.Cache.SetNoStore();

                    packagebind();
                }
            }
            else
            {
                Response.Redirect("~/Public/login.aspx");
            }



           
        }

        private void packagebind()
        {
            DataList1.DataSource = pm.SelectAllPakages();
            DataList1.DataBind();
           
        }

      

        protected void btnBook_Click1(object sender, EventArgs e)
        {



            //Response.Redirect("/Booking.aspx?Id=" + Hiddenpkg.Value);
            
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            int i;
            int index = Convert.ToInt32(e.Item.ItemIndex);
            Label lblid = (Label)e.Item.FindControl("lblId");
            Hiddenpkg.Value = lblid.Text;
            hidid = Convert.ToInt32(Hiddenpkg.Value);
            Response.Redirect("Booking.aspx?htlid=0&pkgId=" + Hiddenpkg.Value);
        }
    }
}