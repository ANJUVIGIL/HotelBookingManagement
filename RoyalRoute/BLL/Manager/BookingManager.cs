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
   public class BookingManager
    {

        private DBhelper Db_Obj = new DBhelper();
        public BookingProperty bkng_pro = new BookingProperty();

        private SortedList S1 = new SortedList();

        public string BookingInsert()
        {
            S1.Clear();
           
            S1.Add("User_id", bkng_pro.User_id);
            S1.Add("Hotel_id", bkng_pro.Hotel_id);
            S1.Add("Package_id", bkng_pro.Package_id);
            S1.Add("Source", bkng_pro.Source);
            S1.Add("Date", bkng_pro.Date);
            S1.Add("No_Persons", bkng_pro.No_Person);
            S1.Add("Room_type", bkng_pro.Room_type);



            //S1.Add("Date", bkng_pro.Date);
           

            return Db_Obj.executeprocedure(S1, "BookingInsert");

        }





        public object SelectAllBookings()
        {
            DataTable dt = new DataTable();
            dt = Db_Obj.getdatatable("selectallbookings");
            List<BookingProperty> _list = new List<BookingProperty>();
            foreach (DataRow dr in dt.Rows)
            {
                _list.Add(new BookingProperty
                {
                   Book_id = Convert.ToInt32(dr["Book_id"]),
                   User_name=dr["name"].ToString(),
                   Package_name = dr["place"].ToString(),
                   Hotel_name=dr["Hname"].ToString(),
                   Source=dr["Source"].ToString(),
                   No_Person=Convert.ToInt32(dr["No_Persons"]),
               
                   Date=Convert.ToDateTime(dr["Date"])

                });
            }

            return _list;
        }

        public string BookingApprove()
        {

            S1.Clear();
            S1.Add("id", bkng_pro.Book_id);
            return Db_Obj.executeprocedure(S1, "Booking_approve");

        }

        public List<BookingProperty> SelectAllBookingsById()
        {
            S1.Clear();
            S1.Add("id", bkng_pro.User_id);
            DataTable dt = new DataTable();
            dt = Db_Obj.getdatatable(S1, "selectBookingById");
            List<BookingProperty> _list = new List<BookingProperty>();
            foreach (DataRow dr in dt.Rows)
            {
                _list.Add(new BookingProperty
                {
                    Book_id = Convert.ToInt32(dr["Book_id"]),
                   
                    Package_name = dr["place"].ToString(),
                    Hotel_name = dr["Hname"].ToString(),
                    Source = dr["Source"].ToString(),
                    No_Person = Convert.ToInt32(dr["No_Persons"]),
                    Room_type = dr["Room_type"].ToString(),
                    Status = dr["Status"].ToString(),
                    Date = Convert.ToDateTime(dr["Date"])

                });
            }

            return _list;
        }
    }
}
