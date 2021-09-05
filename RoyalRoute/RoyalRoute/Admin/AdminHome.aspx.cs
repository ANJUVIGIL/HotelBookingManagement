using BLL.Manager;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RoyalRoute.Admin
{
    public partial class AdminHome : System.Web.UI.Page
    {
         UserRegisterManager urm = new UserRegisterManager();
        protected void Page_Load(object sender, EventArgs e)
         {
            
            if (Session["logid"] != null)
            {
             
                
                if (Page.IsPostBack == false)
                {
                    Response.Cache.SetExpires(DateTime.UtcNow.AddDays(-1));
                    Response.Cache.SetCacheability(HttpCacheability.NoCache);
                    Response.Cache.SetNoStore();
                    SelectById();
                }
            }
            else
            {
              
                Response.Redirect("~/Public/login.aspx");
            }

           

        }

        private void SelectById()
        {
            if (Session["logid"] != null)
            {

                urm.usr_pro.id = Convert.ToInt32(Session.Contents["logid"]);
                urm.SelectUserById();
                txtName.Text = urm.usr_pro.name;
                txtDistrict.Text = urm.usr_pro.district;
                txtEmail.Text = urm.usr_pro.email;
                txtPhone.Text = urm.usr_pro.phone;
                txtPass.Text = urm.usr_pro.password;
                imgMapProfile.ImageUrl = urm.usr_pro.image;

            }
            else
            {
                Response.Redirect("~/Public/login.aspx");
            }
        }




        }
    
}