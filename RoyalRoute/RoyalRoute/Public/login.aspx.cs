using BLL.Manager;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RoyalRoute.Public
{
    public partial class login : System.Web.UI.Page
    {
        UserRegisterManager urm = new UserRegisterManager();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLog_Click(object sender, EventArgs e)
        {
            
            Login();
        }

        private void Login()
        {
            urm.usr_pro.email = txtEmail.Text.Trim().ToString();
            urm.usr_pro.password = txtPassword.Text.Trim().ToString();
            string result = urm.Login();
            string[] arr = result.Split(',');
            string res = arr[0];


            if (res == "Success")
            {
                int id = Convert.ToInt16(arr[1]);
                string role = arr[2];
                if (role == "admin")
                {
                    Session.Add("logid", id);
                    Response.Redirect("~/Admin/AdminHome.aspx");
                }
                else if (role == "user")
                {
                    Session.Add("logid", id);
                    Response.Redirect("~/User/UserHome.aspx");
                }

            }
            else
            {
                lblMsg.Visible = true;
                lblMsg.Text = "login failed";
            }

        }

    }
}