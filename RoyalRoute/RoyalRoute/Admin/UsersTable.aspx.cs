using BLL.Manager;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RoyalRoute.Admin
{
    public partial class UsersTable : System.Web.UI.Page
    {
        UserRegisterManager urm = new UserRegisterManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["logid"] != null)
            {
                if (Page.IsPostBack == false)
                {
                    userbind();
                }
            }
            else
            {
                Response.Redirect("~/Public/login.aspx");
            }


           
        }

        private void userbind()
        {
            GridView1.DataSource = urm.SelectAllUsers();
            GridView1.DataBind();
        }

        

        protected void imgBtn_Click1(object sender, ImageClickEventArgs e)
        {
            ImageButton imgbtn = sender as ImageButton;
            GridViewRow gvr = imgbtn.NamingContainer as GridViewRow;
            HiddenUser.Value = GridView1.DataKeys[gvr.RowIndex].Value.ToString();
            UserDelete();
        }

        private void UserDelete()
        {
            urm.usr_pro.id = int.Parse(HiddenUser.Value);
            string result = urm.UserDelete();
           
            HiddenUser.Value = "-1";

            if (result == "Success")
            {
                
                //Lblimageshow.Visible = false;
                lblMsg.Visible = true;
                lblMsg.Text = "Successfully Deleted";

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
            userbind();
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            this.userbind();
        }

      
    }
}