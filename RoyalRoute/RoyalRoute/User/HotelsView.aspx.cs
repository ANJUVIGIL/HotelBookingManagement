using BLL.Manager;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RoyalRoute.User
{
    public partial class HotelsView : System.Web.UI.Page
    {
        string place;
        int hidid;
        HotelManager hm = new HotelManager();
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

                    HiddenPkg.Value = Request.QueryString["pkgId"];
                    selectpackagebyid();
                    HotelBind();


                    //SelectHotelById();
                }
            }
            else
            {
                Response.Redirect("~/Public/login.aspx");
            }

           
        }

        private void HotelBind()
        {

            hm.htl_pro.place = place;
            DataList1.DataSource = hm.SelectAllHotelsByPlace();
            DataList1.DataBind();
           



        }

private void selectpackagebyid()
{
 	
     pm.pkg_pro.id = int.Parse(HiddenPkg.Value);
            pm.SelectPackageById();

             place = pm.pkg_pro.place;





}

        //private void SelectHotelById()
        //{
           
        //    hm.htl_pro.id = int.Parse(HiddenHotel.Value);
        //    hm.SelectHotelById();

        //    string place = pm.pkg_pro.place;
        
        //}

        protected void btnChoose_Click(object sender, EventArgs e)
        {

        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            int i;
            int index = Convert.ToInt32(e.Item.ItemIndex);
            Label lblid = (Label)e.Item.FindControl("idLabel");
            HiddenHotel.Value = lblid.Text;
            hidid = Convert.ToInt32(HiddenHotel.Value);
            Response.Redirect("Booking.aspx?htlid=" + HiddenHotel.Value+"&pkgId="+HiddenPkg.Value);
        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}