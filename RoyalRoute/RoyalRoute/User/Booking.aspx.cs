using BLL.Manager;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RoyalRoute.User
{
    public partial class Booking : System.Web.UI.Page
    {
        PakageManager pm = new PakageManager();
        HotelManager hm = new HotelManager();
        BookingManager bm = new BookingManager();

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


                    HiddenHotel.Value = Request.QueryString["htlid"];
                    selectHotelById();

                }
            }
            else
            {
                Response.Redirect("~/Public/login.aspx");
            }
          
         
        }

        private void selectHotelById()
        {



            hm.htl_pro.id = int.Parse(HiddenHotel.Value);
            hm.SelectHotelById();

            txtHotel.Text = hm.htl_pro.name;








        }

        private void selectpackagebyid()
        {
            pm.pkg_pro.id = Convert.ToInt32(HiddenPkg.Value.ToString());
            pm.SelectPackageById();

            txtDestination.Text = pm.pkg_pro.place;
        }

        protected void btnHotel_Click(object sender, EventArgs e)
        {
            Response.Redirect("HotelsView.aspx?pkgId="+HiddenPkg.Value);
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)

        {
            DateTime myDateTime;
            string myString = Calendar1.SelectedDate.ToString();
            myDateTime = Calendar1.SelectedDate;
            String myString_new = myDateTime.ToString("dd-MM-yyyy");
            txtDatePicker.Text = myString_new;
        }

        protected void btnBook_Click(object sender, EventArgs e)
        {
            BookPackage();
        }

        private void BookPackage()
        {

            bm.bkng_pro.User_id = Convert.ToInt32(Session.Contents["logid"]);
            bm.bkng_pro.Hotel_id =Convert.ToInt32( HiddenHotel.Value);
            bm.bkng_pro.Package_id = Convert.ToInt32(HiddenPkg.Value);
            bm.bkng_pro.Source = txtPlace.Text.Trim().ToString();

            //string formatted = Date.ToString(txtDatePicker.Text);
            //DateTime dt = DateTime.Now;

            //String.Format("{0:dd-MM-yyyy}", dt);
            string date = txtDatePicker.Text.ToString();
            DateTime Date = Convert.ToDateTime(date);

            //bm.bkng_pro.Date =Convert.ToDateTime( txtDatePicker.Text);

            bm.bkng_pro.Date = Date;
            bm.bkng_pro.No_Person = Convert.ToInt32(DropDownList1.SelectedValue);
            bm.bkng_pro.Room_type = DropDownList2.SelectedValue.ToString();





            string result = bm.BookingInsert();

            if (result == "Success")
            {
                lblMsg.Visible = true;
                lblMsg.Text = "Booked successfully";
                Clear();
            }
            else if (result == "already exist")
            {
                lblMsg.Visible = true;
                lblMsg.Text = "alreaddy Registerd";

            }
            else if (result == "Error")
            {
                lblMsg.Visible = true;
                lblMsg.Text = "failed due to error";

            }
            else
            {
                lblMsg.Visible = true;
                lblMsg.Text = "alreaddy Registerd";
            }

        }

        private void Clear()
        {
            txtDatePicker.Text = "";
            txtPlace.Text = "";
            txtHotel.Text = "";
            DropDownList1.SelectedIndex = 0;
            DropDownList2.SelectedIndex = 0;

        }

       
      

      
    }
}