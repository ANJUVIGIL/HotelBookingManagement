using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL.Property
{
   public class BookingProperty
    {
        public int Book_id { get; set; }
        public int User_id { get; set; }
        public int Hotel_id { get; set; }
        public int Package_id { get; set; }
        public string Source { get; set; }
        public int No_Person { get; set; }
        public string Room_type { get; set; }
        public DateTime Date { get; set; }
        public string Status { get; set; }
        public string User_name { get; set; }
        public string Package_name { get; set; }
        public string Hotel_name { get; set; }



      

    }
}
