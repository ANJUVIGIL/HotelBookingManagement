using BLL.Manager;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RoyalRoute.Public
{
    public partial class register : System.Web.UI.Page
    {
        UserRegisterManager urm = new UserRegisterManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
               
            }

        }

        protected void Submit()
        {
            if (HiddenUser.Value == "-1")
            {
                UserInsert();
            }
            else
            {
                UserUpdate();
            }
        }

       private void UserInsert(){

           urm.usr_pro.name = txtName.Text.Trim().ToString();
           urm.usr_pro.district = txtDistrict.Text.Trim().ToString();
           urm.usr_pro.email = txtEmail.Text.Trim().ToString();

           string filename = GetRandomText();
           string path = Server.MapPath("~/image/");
           flupimage.SaveAs(path + filename + ".jpg");
           urm.usr_pro.image = ("~/image/" + filename + ".jpg");


           urm.usr_pro.phone = txtPhone.Text.Trim().ToString();
           urm.usr_pro.password = txtPassword.Text.Trim().ToString();


           string result = urm.UserInsert();
          
           if (result == "Success")
           {
               lblMsg.Visible = true;
               lblMsg.Text = "Registered successfully";
               Clear();
           }
           else if (result == "Already Exist")
           {
               lblMsg.Visible = true;
               lblMsg.Text = "alreaddy Registerd";

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
       private void UserUpdate()
       {

         }

       protected void btnRegister_Click(object sender, EventArgs e)
       {
           if (HiddenUser.Value == "-1")
           {
               UserInsert();
           }
           else
           {
               UserUpdate();
           }
       }
       public void Clear()
       {
           txtName.Text = "";
           txtDistrict.Text = "";
           txtEmail.Text = "";
           txtPhone.Text = "";
           txtPassword.Text = "";
           txtCPass.Text = "";

       }

  

       protected void btnRegister_Click2(object sender, EventArgs e)
       {

           if (HiddenUser.Value == "-1")
           {
               UserInsert();
           }
           else
           {
               UserUpdate();
           }

       }

      
    }
}