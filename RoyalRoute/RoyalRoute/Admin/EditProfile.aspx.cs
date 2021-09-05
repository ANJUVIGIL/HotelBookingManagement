using BLL.Manager;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RoyalRoute.Admin
{
    public partial class EditProfile : System.Web.UI.Page
    {
        UserRegisterManager urm = new UserRegisterManager();
        protected void Page_Load(object sender, EventArgs e)
        {
             if (Session["logid"] != null)
            {
            if (!Page.IsPostBack)
            {



                Response.Cache.SetExpires(DateTime.UtcNow.AddDays(-1));
                Response.Cache.SetCacheability(HttpCacheability.NoCache);
                Response.Cache.SetNoStore();

                urm.usr_pro.id = Convert.ToInt32(Session.Contents["logid"]);
                urm.SelectUserById();
                txtName.Text = urm.usr_pro.name;
                txtDistrict.Text = urm.usr_pro.district;
                txtEmail.Text = urm.usr_pro.email;
                txtPhone.Text = urm.usr_pro.phone;
                txtPass.Text = urm.usr_pro.password;
                imgMapProfile.ImageUrl = urm.usr_pro.image;
            }
            }
             else
             {
                 Response.Redirect("~/Public/login.aspx");
             }
        }

        protected void btnEdit_Click(object sender, EventArgs e)
        {
          
           



           



         urm.usr_pro.name = txtName.Text.Trim().ToString();
           urm.usr_pro.district = txtDistrict.Text.Trim().ToString();
           urm.usr_pro.email = txtEmail.Text.Trim().ToString();

           string filename = GetRandomText();
           string path = Server.MapPath("~/image/");
           flupImg.SaveAs(path + filename + ".jpg");
           urm.usr_pro.image = ("~/image/" + filename + ".jpg");


           urm.usr_pro.phone = txtPhone.Text.Trim().ToString();
           urm.usr_pro.password = txtPass.Text.Trim().ToString();


           string result = urm.UserUpdate();
          
           if (result == "Success")
           {
               lblMsg.Visible = true;
               lblMsg.Text = "Updated successfully";
             
           }
          
           else if (result == "Error")
           {
               lblMsg.Visible = true;
               lblMsg.Text = "failed due to error";

           }

           

        }

        private string GetRandomText()
        {

            string randomText = "";
            string alphabets = "0123456789";

            Random r = new Random();
            for (int j = 0; j <= 3; j++)
            {
                randomText += alphabets[r.Next(alphabets.Length)];
            }
            return randomText.ToString();


        }
    }
}