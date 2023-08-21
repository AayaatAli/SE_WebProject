using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace SE_Project
{
    public class Confirmation_
    {
        public static int getCount()
        {
            var x = Sql.getAllShipping();
            int count = x.Rows.Count;
            return count;
        }

        public static DataTable getRow()
        {
            int count_ = getCount();
            return Sql.fillDataTable("select * from ShippingDetails where [ShippingID]=" + count_ + "");
        }
    }
}