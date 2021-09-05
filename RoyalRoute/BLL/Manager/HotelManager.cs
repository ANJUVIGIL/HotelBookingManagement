using BLL.Property;
using DAL;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL.Manager
{
   public class HotelManager
    {
            private DBhelper Db_Obj = new DBhelper();
            public HotelProperty htl_pro = new HotelProperty();

            private SortedList S1 = new SortedList();

        public string HotelInsert()
        {
            S1.Clear();
            S1.Add("name", htl_pro.name);
            S1.Add("place", htl_pro.place);
            S1.Add("address", htl_pro.address);
            S1.Add("rating", htl_pro.rating);
            S1.Add("image", htl_pro.image);
            S1.Add("contact", htl_pro.contact);
           

            return Db_Obj.executeprocedure(S1, "HotelInsert");

        }



        public object SelectAllHotels()
        {
            DataTable dt = new DataTable();
            dt = Db_Obj.getdatatable("selecthotel");
            List<HotelProperty> _list = new List<HotelProperty>();
            foreach (DataRow dr in dt.Rows)
            {
                _list.Add(new HotelProperty
                {
                    id = Convert.ToInt32(dr["id"]),
                    name=dr["name"].ToString(),
                    place = dr["place"].ToString(),
                    address=dr["address"].ToString(),
                    rating=Convert.ToDouble(dr["rating"]),
                    image = dr["image"].ToString(),
                    contact=dr["contact"].ToString()

                });
            }

            return _list;
        }

        public void SelectHotelById()
        {
            S1.Clear();
            S1.Add("id", htl_pro.id);
            DataTable dt = new DataTable();
            dt = Db_Obj.getdatatable(S1, "selecthotelbyid");
            if (dt.Rows.Count > 0)
            {

                htl_pro.name = dt.Rows[0].ItemArray[0].ToString();
                htl_pro.place = dt.Rows[0].ItemArray[1].ToString();
              
                htl_pro.address = dt.Rows[0].ItemArray[2].ToString();
                htl_pro.rating = Convert.ToDouble(dt.Rows[0].ItemArray[3].ToString());
                htl_pro.image = dt.Rows[0].ItemArray[4].ToString();
                htl_pro.contact = dt.Rows[0].ItemArray[5].ToString();
               
               


                
            }
        }

        public string HotelUpdate()
        {
            S1.Clear();
            S1.Add("id", htl_pro.id);
            S1.Add("name", htl_pro.name);
            S1.Add("place", htl_pro.place);
            S1.Add("address", htl_pro.address);
            S1.Add("rating", htl_pro.rating);
            S1.Add("image", htl_pro.image);
            S1.Add("contact", htl_pro.contact);


            return Db_Obj.executeprocedure(S1, "HotelUpdate");
        }

        public string HotelDelete()
        {
            S1.Clear();
            S1.Add("id", htl_pro.id);
            return Db_Obj.executeprocedure(S1, "Hotel_delete");
        }

        public List<HotelProperty> SelectAllHotelsByPlace()
        {
            S1.Clear();
            S1.Add("place", htl_pro.place);
            DataTable dt = new DataTable();
            dt = Db_Obj.getdatatable(S1,"selecthotelbyplace");
            List<HotelProperty> _list = new List<HotelProperty>();
            foreach (DataRow dr in dt.Rows)
            {
                _list.Add(new HotelProperty
                {
                    id = Convert.ToInt32(dr["id"]),
                    name = dr["name"].ToString(),
                   
                    address = dr["address"].ToString(),
                    rating = Convert.ToDouble(dr["rating"]),
                    image = dr["image"].ToString(),
                    contact = dr["contact"].ToString()

                });
            }

            return _list;
        }
    }
}
