using BLL.Manager;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RoyalRoute.User
{
    public partial class UserHome : System.Web.UI.Page
    {
        UserRegisterManager urm = new UserRegisterManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["logid"] != null)
            {
                Response.Cache.SetExpires(DateTime.UtcNow.AddDays(-1));
                Response.Cache.SetCacheability(HttpCacheability.NoCache);
                Response.Cache.SetNoStore();

                Selectbyid();
            }
            else
            {
                Response.Redirect("~/Public/login.aspx");
            }
        }

        private void Selectbyid()
        {


            urm.usr_pro.id = Convert.ToInt32( Session.Contents["logid"]);
            urm.SelectUserById();
            ImageMap1.ImageUrl = urm.usr_pro.image;
            lblName.Text = urm.usr_pro.name;
            lblDistrict.Text = urm.usr_pro.district;
            lblEmail.Text = urm.usr_pro.email;
            lblPhone.Text = urm.usr_pro.phone;
           
        }

        protected void btnEdit_Click(object sender, EventArgs e)
        {

            Response.Redirect("EditProfile.aspx");



        }

      

    }
}