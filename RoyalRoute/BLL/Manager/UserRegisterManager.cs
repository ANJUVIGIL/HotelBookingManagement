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
    public class UserRegisterManager
    {
        private DBhelper Db_Obj = new DBhelper();
        public UserRegisterProperty usr_pro = new UserRegisterProperty();

        private SortedList S1 = new SortedList();

        //public List<UserRegisterProperty> SelectAllUser()
        //{
        //    DataTable dt = new DataTable();

        //}

        public string UserInsert()
        {
            S1.Clear();

            S1.Add("name", usr_pro.name);
            S1.Add("district", usr_pro.district);
            S1.Add("email", usr_pro.email);
            S1.Add("phone", usr_pro.phone);
            S1.Add("image", usr_pro.image);

            S1.Add("password", usr_pro.password);
            S1.Add("date", DateTime.Now);

            return Db_Obj.executeprocedure(S1, "UserInsert");

        }




        public string Login()
        {
            S1.Clear();
            S1.Add("email", usr_pro.email);
            S1.Add("password", usr_pro.password);
            return Db_Obj.executeprocedure(S1, "logincheck");
        }

        public void SelectUserById()
        {
            S1.Clear();
            S1.Add("Id",usr_pro.id);
            DataTable dt = new DataTable();
            dt = Db_Obj.getdatatable(S1, "selectuserbyid");
            if (dt.Rows.Count > 0)
            {
                usr_pro.name = dt.Rows[0].ItemArray[0].ToString();
                usr_pro.district = dt.Rows[0].ItemArray[1].ToString();
                usr_pro.email = dt.Rows[0].ItemArray[2].ToString();
                usr_pro.phone = dt.Rows[0].ItemArray[3].ToString();
                usr_pro.image = dt.Rows[0].ItemArray[4].ToString();
                usr_pro.password = dt.Rows[0].ItemArray[5].ToString();
              

                //Dispro_Obj.DistrictName = dt.Rows[0].ItemArray[0].ToString();
            }
        }
        public List<UserRegisterProperty> SelectAllUsers()
        {
            DataTable dt = new DataTable();
            dt = Db_Obj.getdatatable("selectuser");
            List<UserRegisterProperty> _list = new List<UserRegisterProperty>();
            foreach (DataRow dr in dt.Rows)
            {
                _list.Add(new UserRegisterProperty
                {
                    id = Convert.ToInt32(dr["id"]),
                    name = dr["name"].ToString(),
                    district = dr["district"].ToString(),
                    email = dr["email"].ToString(),
                    phone = dr["phone"].ToString(),
                   
                    image = dr["image"].ToString(),
                    
                 
                });
            }

            return _list;

        }

        public string UserDelete()
        {
            S1.Clear();
            S1.Add("id", usr_pro.id);
            return Db_Obj.executeprocedure(S1, "user_delete");
        }

        public List<UserRegisterProperty> SelectAllRequests()
        {
            DataTable dt = new DataTable();
            dt = Db_Obj.getdatatable("selectrequests");
            List<UserRegisterProperty> _list = new List<UserRegisterProperty>();
            foreach (DataRow dr in dt.Rows)
            {
                _list.Add(new UserRegisterProperty
                {
                    id = Convert.ToInt32(dr["id"]),
                    name = dr["name"].ToString(),
                    district = dr["district"].ToString(),
                    email = dr["email"].ToString(),
                    phone = dr["phone"].ToString(),

                    image = dr["image"].ToString(),


                });
            }

            return _list;
        }

        public string UserApprove()
        {
            S1.Clear();
            S1.Add("id", usr_pro.id);
            return Db_Obj.executeprocedure(S1, "user_approve");
        }

        public string UserUpdate()
        {
            S1.Clear();
            S1.Add("id", usr_pro.id);
            S1.Add("name", usr_pro.name);
            S1.Add("district", usr_pro.district);
            S1.Add("email", usr_pro.email);
            S1.Add("phone", usr_pro.phone);
            S1.Add("image", usr_pro.image);
            S1.Add("password", usr_pro.password);
           

            return Db_Obj.executeprocedure(S1, "UserUpdate");

        }
    }
}
