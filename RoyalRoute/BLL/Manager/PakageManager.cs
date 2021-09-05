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
   public class PakageManager
    {
        private DBhelper Db_Obj = new DBhelper();
        public PakageProperty pkg_pro = new PakageProperty();

        private SortedList S1 = new SortedList();


        public string PakageInsert()
        {
            S1.Clear();

            S1.Add("place",pkg_pro.place);
            S1.Add("rate", pkg_pro.rate);
            S1.Add("days", pkg_pro.days);
            S1.Add("nights", pkg_pro.nights);
            S1.Add("image", pkg_pro.image);

            return Db_Obj.executeprocedure(S1, "PakageInsert");

        }

        //public string PakageInsert()
        //{
        //    S1.Clear();

        //    S1.Add("place", pkg_pro.place);
        //    S1.Add("rate", pkg_pro.rate);
        //    S1.Add("days", pkg_pro.days);
        //    S1.Add("nights", pkg_pro.nights);
        //    S1.Add("image", pkg_pro.image);

        //    return Db_Obj.executeprocedure(S1, "PakageInsert");

        //}

        public object SelectAllPakages()
        {
            DataTable dt = new DataTable();
            dt = Db_Obj.getdatatable("selectpakages");
            List<PakageProperty> _list = new List<PakageProperty>();
            foreach (DataRow dr in dt.Rows)
            {
                _list.Add(new PakageProperty
                {
                    id = Convert.ToInt32(dr["id"]),
                    place=dr["place"].ToString(),
                    rate=Convert.ToInt32(dr["rate"].ToString()),
                    days = Convert.ToInt32(dr["days"].ToString()),
                    nights = Convert.ToInt32(dr["nights"].ToString()),
                    image = dr["image"].ToString()


                });
            }

            return _list;
        }

        public string PakageDelete()
        {
            S1.Clear();
            S1.Add("id", pkg_pro.id);
            return Db_Obj.executeprocedure(S1, "pakage_delete");
        }

        public string PakageEdit()
        {
            S1.Clear();
            S1.Add("id", pkg_pro.id);
            S1.Add("place", pkg_pro.place);
            S1.Add("rate", pkg_pro.rate);
            S1.Add("days", pkg_pro.days);
            S1.Add("nights", pkg_pro.nights);
            S1.Add("image", pkg_pro.image);
            return Db_Obj.executeprocedure(S1, "pakage_edit");
        }

        public void SelectPackageById()
        {
            S1.Clear();
            S1.Add("id", pkg_pro.id);
            DataTable dt = new DataTable();
            dt = Db_Obj.getdatatable(S1, "selectpackagebyid");
            if (dt.Rows.Count > 0)
            {
                pkg_pro.place = dt.Rows[0].ItemArray[0].ToString();
                pkg_pro.rate = Convert.ToInt32( dt.Rows[0].ItemArray[1].ToString());
                pkg_pro.days = Convert.ToInt32(dt.Rows[0].ItemArray[2].ToString());
                pkg_pro.nights = Convert.ToInt32(dt.Rows[0].ItemArray[3].ToString());
                pkg_pro.image = dt.Rows[0].ItemArray[0].ToString();

                
                //Dispro_Obj.DistrictName = dt.Rows[0].ItemArray[0].ToString();
            }
        }
    }
}
