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
   public class ContactManager
    {
        private DBhelper Db_Obj = new DBhelper();
        public ContactProperty cnt_pro = new ContactProperty();

        private SortedList S1 = new SortedList();



        public string ContactInsert()
        {
            S1.Clear();

            S1.Add("name", cnt_pro.name);
            S1.Add("email", cnt_pro.email);
            S1.Add("phone", cnt_pro.phone);
            S1.Add("subject", cnt_pro.subject);
            S1.Add("Msg", cnt_pro.msg);
            S1.Add("date", DateTime.Now);





            //S1.Add("Date", bkng_pro.Date);


            return Db_Obj.executeprocedure(S1, "ContactInsert");
        }

        public object SelectAllFeedbacks()
        {
            DataTable dt = new DataTable();
            dt = Db_Obj.getdatatable("selectfeedbacks");
            List<ContactProperty> _list = new List<ContactProperty>();
            foreach (DataRow dr in dt.Rows)
            {
                _list.Add(new ContactProperty
                {
                    id = Convert.ToInt32(dr["id"]),
                    name = dr["name"].ToString(),
                 
                    email = dr["email"].ToString(),
                    phone = dr["phone"].ToString(),

                     subject= dr["subject"].ToString(),
                    msg = dr["message"].ToString(),
                    date=Convert.ToDateTime(dr["date"])


                });
            }

            return _list;
        }

        public string MsgDelete()
        {
            S1.Clear();
            S1.Add("id", cnt_pro.id);
            return Db_Obj.executeprocedure(S1, "Msg_delete");



        }
    }
}
