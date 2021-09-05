using BLL.Manager;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RoyalRoute.Admin
{
    public partial class AddPakage : System.Web.UI.Page
    {
        PakageManager pm = new PakageManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["logid"] == null)
            {
                Response.Redirect("~/Public/login.aspx");
            }
            else
            {

                if (Page.IsPostBack == false)
                {

                    userbind();
                }

            }

           
        }

        private void userbind()
        {
            GridView1.DataSource = pm.SelectAllPakages();
            GridView1.DataBind();
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            if (HiddenUser.Value == "-1")
            {
                Pakageinsert();
              
            }
            else
            {
                PakageEdit();
            }
            userbind();
        }

        private void Pakageinsert()
        {


            pm.pkg_pro.place = txtPlace.Text.Trim().ToString();
            pm.pkg_pro.rate = Convert.ToInt32( txtRate.Text.Trim().ToString());
            pm.pkg_pro.days = Convert.ToInt32(txtdays.Text.Trim().ToString());
            pm.pkg_pro.nights =Convert.ToInt32( txtNights.Text.Trim().ToString());
            


            //urm.usr_pro.name = txtName.Text.Trim().ToString();
            //urm.usr_pro.district = txtDistrict.Text.Trim().ToString();
            //urm.usr_pro.email = txtEmail.Text.Trim().ToString();

            string filename = GetRandomText();
            string path = Server.MapPath("~/image/");
            flupImg .SaveAs(path + filename + ".jpg");
            pm.pkg_pro.image = ("~/image/" + filename + ".jpg");


            //urm.usr_pro.image = ("~/image/" + filename + ".jpg");


            //urm.usr_pro.phone = txtPhone.Text.Trim().ToString();
            //urm.usr_pro.password = txtPassword.Text.Trim().ToString();


            string result = pm.PakageInsert();

            if (result == "Success")
            {
                lblMsg.Visible = true;
                lblMsg.Text = "Package added successfully";
                Clear();
            }
            else if (result == "already exist")
            {
                lblMsg.Visible = true;
                lblMsg.Text = "already Added";

            }
            else if (result == "Error")
            {
                lblMsg.Visible = true;
                lblMsg.Text = "failed due to error";

            }
        }

        private void Clear()
        {
            txtPlace.Text = "";
            txtRate.Text = "";
            txtdays.Text = "";
            txtNights.Text = "";
            
           
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

        protected void imgBtnDelete_Click(object sender, ImageClickEventArgs e)
        {
            ImageButton imgbtn = sender as ImageButton;
            GridViewRow gvr = imgbtn.NamingContainer as GridViewRow;
            HiddenUser.Value = GridView1.DataKeys[gvr.RowIndex].Value.ToString();
            PakageDelete();
        }

        private void PakageDelete()
        {
            pm.pkg_pro.id = int.Parse(HiddenUser.Value);

            string result = pm.PakageDelete();
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

        protected void imgBtnEdit_Click(object sender, ImageClickEventArgs e)
        {
            ImageButton imgbtn = sender as ImageButton;
            GridViewRow gvr = imgbtn.NamingContainer as GridViewRow;
            HiddenUser.Value = GridView1.DataKeys[gvr.RowIndex].Value.ToString();
            selectbyid();
        }

        private void selectbyid()
        {
            string path = Server.MapPath("~/image/");
            //Imgpic.Visible = true;

            pm.pkg_pro.id = int.Parse(HiddenUser.Value);
            pm.SelectPackageById();

            txtPlace.Text = pm.pkg_pro.place;
            txtRate.Text = pm.pkg_pro.rate.ToString();
            txtdays.Text = pm.pkg_pro.days.ToString();
            txtNights.Text = pm.pkg_pro.nights.ToString();
            //Imgpic.ImageUrl = pm.pkg_pro.image;

                  }

        private void PakageEdit()
        {
            pm.pkg_pro.id = int.Parse(HiddenUser.Value);

            pm.pkg_pro.place = txtPlace.Text.Trim().ToString();
            pm.pkg_pro.rate = Convert.ToInt32(txtRate.Text.Trim().ToString());
            pm.pkg_pro.days = Convert.ToInt32(txtdays.Text.Trim().ToString());
            pm.pkg_pro.nights = Convert.ToInt32(txtNights.Text.Trim().ToString());



            //urm.usr_pro.name = txtName.Text.Trim().ToString();
            //urm.usr_pro.district = txtDistrict.Text.Trim().ToString();
            //urm.usr_pro.email = txtEmail.Text.Trim().ToString();

            string filename = GetRandomText();
            string path = Server.MapPath("~/image/");
            flupImg.SaveAs(path + filename + ".jpg");
            pm.pkg_pro.image = ("~/image/" + filename + ".jpg");
            string result = pm.PakageEdit();
            HiddenUser.Value = "-1";

            if (result == "Success")
            {

                //Lblimageshow.Visible = false;
                lblMsg.Visible = true;
                lblMsg.Text = "Successfully Updated";

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