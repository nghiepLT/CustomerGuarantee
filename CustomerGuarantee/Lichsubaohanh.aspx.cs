using CustomerGuarantee.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CustomerGuarantee
{
    public partial class Lichsubaohanh : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["CustomerLogin"] != null)
            {
                customerlogin.Value = Request.Cookies["CustomerLogin"].Value;
            }
        }
        [WebMethod]
        public static string LoadDanhSach(string CustomerUser)
        {

            CustomerCaseEntities db = new CustomerCaseEntities();
            var cus = db.CustomerCaseInfors.Where(m=>m.Email==CustomerUser).ToList();
            JavaScriptSerializer js = new JavaScriptSerializer();
            var result = js.Serialize(cus);
            return result;
        }
    }
}