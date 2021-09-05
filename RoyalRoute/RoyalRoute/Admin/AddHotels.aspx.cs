using BLL.Manager;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RoyalRoute.Admin
{
    public partial class AddHotels : System.Web.UI.Page
    {
        HotelManager hm = new HotelManager();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["logid"] != null)
            {
                if (Page.IsPostBack == false)
                {

                    HotelBind();
                }
            }
            else
            {
                Response.Redirect("~/Public/login.aspx");
            }
            
           
        }

        private void HotelBind()
        {
            GridView1.DataSource = hm.SelectAllHotels();
            GridView1.DataBind();
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            if (HiddenHotel.Value == "-1")
            {
                Hotelinsert();
                Clear();

            }
            else
            {
                HotelEdit();
            }
            HotelBind();
        }

        private void HotelEdit()
        {
            hm.htl_pro.name = txtName.Text.Trim().ToString();
            hm.htl_pro.place = txtPlace.Text.Trim().ToString();
            hm.htl_pro.address = txtAddress.Text.Trim().ToString();
            hm.htl_pro.rating = Convert.ToDouble(txtRating.Text.Trim().ToString());
            hm.htl_pro.id = Convert.ToInt32( HiddenHotel.Value);
            string filename = GetRandomText();
            string path = Server.MapPath("~/image/");
            flupImg.SaveAs(path + filename + ".jpg");
            hm.htl_pro.image = ("~/image/" + filename + ".jpg");
            hm.htl_pro.contact = txtContact.Text.Trim().ToString();
            string result = hm.HotelUpdate();

            if (result == "Success")
            {
                lblMsg.Visible = true;
                lblMsg.Text = "Updated successfully";
                Clear();
            }
            //else if (result == "Already Exist")
            //{
            //    lblMsg.Visible = true;
            //    lblMsg.Text = "alreaddy Registerd";

            //}
            else if (result == "Error")
            {
                lblMsg.Visible = true;
                lblMsg.Text = "failed due to error";

            }

            HotelBind();
        }

        private void Hotelinsert()
        {
            hm.htl_pro.name = txtName.Text.Trim().ToString();
            hm.htl_pro.place = txtPlace.Text.Trim().ToString();
            hm.htl_pro.address = txtAddress.Text.Trim().ToString();
            hm.htl_pro.rating = Convert.ToDouble(txtRating.Text.Trim().ToString());

            string filename = GetRandomText();
            string path = Server.MapPath("~/image/");
            flupImg.SaveAs(path + filename + ".jpg");
            hm.htl_pro.image = ("~/image/" + filename + ".jpg");
            hm.htl_pro.contact = txtContact.Text.Trim().ToString();
            string result = hm.HotelInsert();

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

            HotelBind();
        
        }

        private void Clear()
        {
            txtName.Text = "";
            txtPlace.Text = "";
            txtAddress.Text = "";
            txtContact.Text = "";
            txtRating.Text = "";
            
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

        protected void imgBtnEdit_Click(object sender, ImageClickEventArgs e)
        {

            ImageButton imgbtn = sender as ImageButton;
            GridViewRow gvr = imgbtn.NamingContainer as GridViewRow;
            HiddenHotel.Value = GridView1.DataKeys[gvr.RowIndex].Value.ToString();
            selectbyid();

        }

        private void selectbyid()
        {

            string path = Server.MapPath("~/image/");
            //Imgpic.Visible = true;

            hm.htl_pro.id = int.Parse(HiddenHotel.Value);
            hm.SelectHotelById();

            txtPlace.Text = hm.htl_pro.place;
            txtName.Text = hm.htl_pro.name;
            txtAddress.Text = hm.htl_pro.address;
            txtRating.Text = hm.htl_pro.rating.ToString();
            txtContact.Text = hm.htl_pro.contact.ToString();
            
           




        }

        protected void imgBtnDelete_Click(object sender, ImageClickEventArgs e)
        {
            ImageButton imgbtn = sender as ImageButton;
            GridViewRow gvr = imgbtn.NamingContainer as GridViewRow;
            HiddenHotel.Value = GridView1.DataKeys[gvr.RowIndex].Value.ToString();
            HotelDelete();
        }

        private void HotelDelete()
        {
            hm.htl_pro.id = int.Parse(HiddenHotel.Value);

            string result = hm.HotelDelete();
            HiddenHotel.Value = "-1";

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

            HotelBind();
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            this.HotelBind();
        }

       
       
    }
}