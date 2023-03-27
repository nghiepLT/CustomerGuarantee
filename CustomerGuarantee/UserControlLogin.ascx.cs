using CustomerGuarantee.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CustomerGuarantee
{
    public partial class UserControlLogin : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.Cookies["CustomerLogin"] != null)
                {
                    this.customerlogin.Value = "1";
                    this.customeruser.Value = Request.Cookies["CustomerLogin"].Value;
                    this.tendangnhap.InnerText= Request.Cookies["CustomerLogin"].Value;
                    CustomerCaseEntities db = new CustomerCaseEntities();
                    tCustomerUser cus = db.tCustomerUsers.ToList().Where(m => m.CustomerUser == Request.Cookies["CustomerLogin"].Value).FirstOrDefault();
                    if (cus != null)
                    {
                        this.mdCustomerName.Value = cus.CustomerName;
                        this.mdCustomerPhone.Value = cus.CustomerPhone;
                        this.mdCustomerAddress.Value = cus.CustomerAddress;
                        this.CustomerUserId.Value = cus.CustomerUserId.ToString();
                        this.CustomerEmail.Value = cus.CustomerEmail;
                    }
                }
            }
        }
        [WebMethod]
        public static bool Capnhatthongtinkhachhang(tCustomerUser data)
        {
            CustomerCaseEntities db = new CustomerCaseEntities();
            var cus = db.tCustomerUsers.Where(m => m.CustomerUserId == data.CustomerUserId).FirstOrDefault();
            if (cus != null)
            {
                cus.CustomerName = data.CustomerName;
                cus.CustomerAddress = data.CustomerAddress;
                cus.CustomerPhone = data.CustomerPhone;
                db.SaveChanges();
            }
            return true;
        }
      
        protected void btnSaveBanner_Click(object sender, EventArgs e)
        {

        }
    }
}