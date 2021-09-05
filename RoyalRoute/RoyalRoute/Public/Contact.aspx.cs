using BLL.Manager;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RoyalRoute.Public
{
    public partial class Contact : System.Web.UI.Page
    {
        ContactManager cm = new ContactManager();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_Click(object sender, EventArgs e)
        {
            SubmitMessage();
        }

        private void SubmitMessage()
        {
            cm.cnt_pro.name = txtName.Text;
            cm.cnt_pro.email = txtEmail.Text;
            cm.cnt_pro.phone = txtPhone.Text;
            cm.cnt_pro.subject = txtSubject.Text;
            cm.cnt_pro.msg = txtMsg.Text;


            string result = cm.ContactInsert();

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

        private void Clear()
        {
            txtName.Text = "";
            txtEmail.Text = "";
            txtMsg.Text = "";
            txtSubject.Text = "";
            txtPhone.Text = "";

        }
    }
}