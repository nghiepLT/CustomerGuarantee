using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CustomerGuarantee.Models;
using System.Web.Services;
using System.Web.Script.Serialization;

namespace CustomerGuarantee
{
    public partial class Yeucaukhachgui : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.Cookies["Baohanhlogin"] != null)
                {
                    CustomerCaseEntities db = new CustomerCaseEntities();
                    var cus = db.CustomerCaseInfors.ToList();
                    userlogin.Value = Request.Cookies["Baohanhlogin"].Value;
                }
                else
                {
                    Response.Redirect("/dang-nhap");
                }
            }
        }
        [WebMethod]
        public static string LoadDanhSach()
        {
            CustomerCaseEntities db = new CustomerCaseEntities();
            var cus = db.CustomerCaseInfors.ToList();
            JavaScriptSerializer js = new JavaScriptSerializer();
            var result = js.Serialize(cus);
            return result;
        }
        [WebMethod]
        public static string GetData(int CustomerCaseID)
        {
            CustomerCaseEntities db = new CustomerCaseEntities();
            var cus = db.CustomerCaseInfors.Where(m=>m.CustomerCaseID==CustomerCaseID).FirstOrDefault();
            JavaScriptSerializer js = new JavaScriptSerializer();
            var result = js.Serialize(cus);
            return result;
        }
        [WebMethod]
        public static int UpdateData(CustomerCaseInfor CustomerCaseInfor)
        {
            CustomerCaseEntities db = new CustomerCaseEntities();
            var cus = db.CustomerCaseInfors.Where(m => m.CustomerCaseID == CustomerCaseInfor.CustomerCaseID).FirstOrDefault();
            cus.Status = CustomerCaseInfor.Status;
            cus.GhiChuXuLy = CustomerCaseInfor.GhiChuXuLy;
            cus.ThoiGianXuLy = DateTime.Now.ToString();
            cus.UserEdit = CustomerCaseInfor.UserEdit;
            db.SaveChanges();
            return 1;
        }
    }
}