using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using CustomerGuarantee.Models;
using System.Web.Script.Serialization;

namespace CustomerGuarantee
{
    public partial class CheckBH : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [WebMethod]
        public static string CheckPhieu(string MaPhieu)
        {
            CustomerCaseEntities db = new CustomerCaseEntities();
            CustomerCaseInfor cus = db.CustomerCaseInfors.Where(m => m.CodeGenerate == MaPhieu).FirstOrDefault();

            JavaScriptSerializer js = new JavaScriptSerializer();
            var result= js.Serialize(cus);
            return result;
        }
    }
}