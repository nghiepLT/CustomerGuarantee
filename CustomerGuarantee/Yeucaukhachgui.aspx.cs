using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CustomerGuarantee.Models;
using System.Web.Services;
using System.Web.Script.Serialization;
using PQT.Common;
using System.Net.Mail;

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
            //Thông tin trả
            cus.UserNgayGui = CustomerCaseInfor.UserNgayGui;
            cus.UserTenNhaXe = CustomerCaseInfor.UserTenNhaXe;
            cus.UserAddress = CustomerCaseInfor.UserAddress;
            cus.USerSoDTNhaXe = CustomerCaseInfor.USerSoDTNhaXe;
            cus.UserGuiType = CustomerCaseInfor.UserGuiType;
            cus.USerGuiTra = CustomerCaseInfor.USerGuiTra;
            db.SaveChanges();
            string htmlContents = "";
            if (cus.Status == 2)
            {
                htmlContents += "<div>Xin chào Anh/Chị" + " " + cus.CustomerName + "</div>";
                htmlContents += "<div>Đơn bảo hành với mã " + cus.CodeGenerate + " đã được tiếp nhận</div>";
                sendEmail(cus.Email, "Thông báo tiếp nhận đơn hàng", htmlContents);
            }
            if (cus.Status == 3)
            {
                htmlContents += "<div>Xin chào Anh/Chị" + " " + cus.CustomerName + "</div>";
                htmlContents += "<div>Đơn bảo hành với mã " + cus.CodeGenerate + " đã hoàn thành</div>";
                htmlContents += "<div>Sau đây là thông tin trả hàng</div>";
                htmlContents += "<table style=\"width:100%;margin:10px 0px\">";

                htmlContents += "<tr>";
                htmlContents += "<td style=\"border: 1px solid;padding:5px;background-color:#65FFFF;width:150px\">Thời gian trả</td>";
                htmlContents += "<td style=\"border: 1px solid;padding:5px\">" + cus.UserNgayGui.Value.ToShortDateString() + "</td>";
                htmlContents += "</tr>";

                htmlContents += "<tr>";
                htmlContents += "<td style=\"border: 1px solid;padding:5px;background-color:#65FFFF;width:150px\">Tên nhà xe </td>";
                htmlContents += "<td style=\"border: 1px solid;padding:5px\">" + cus.UserTenNhaXe + "</td>";
                htmlContents += "</tr>";

                htmlContents += "<tr>";
                htmlContents += "<td style=\"border: 1px solid;padding:5px;background-color:#65FFFF;width:150px\">Địa chỉ nhà xe </td>";
                htmlContents += "<td style=\"border: 1px solid;padding:5px\">" + cus.UserAddress + "</td>";
                htmlContents += "</tr>";

                htmlContents += "<tr>";
                htmlContents += "<td style=\"border: 1px solid;padding:5px;background-color:#65FFFF;width:150px\">Số điện thoại nhà xe </td>";
                htmlContents += "<td style=\"border: 1px solid;padding:5px\">" + cus.USerSoDTNhaXe + "</td>";
                htmlContents += "</tr>";

                htmlContents += "<tr>";
                htmlContents += "<td style=\"border: 1px solid;padding:5px;background-color:#65FFFF;width:150px\">Nội dung xử lý </td>";
                htmlContents += "<td style=\"border: 1px solid;padding:5px\">" + cus.GhiChuXuLy + "</td>";
                htmlContents += "</tr>";

                htmlContents += "</table>";
                sendEmail(cus.Email, "Thông báo tình trạng đơn xử lý bảo hành", htmlContents);
            }

            return 1;
        }
        public static bool sendEmail(string to, string title, string sContent)
        {
            try
            {
                string AdminEmail = "nghiphep@nguyenkimvn.vn";
                string AdminPass = "12345678";
                string MailHost = "192.168.117.200";
                string PortMailHost = "25";
                int intPort = Helper.TryParseInt(PortMailHost, 25);
                SmtpClient SmtpServer = new SmtpClient();
                SmtpServer.Credentials = new System.Net.NetworkCredential(AdminEmail, AdminPass);
                SmtpServer.Port = intPort;
                SmtpServer.Host = MailHost;
                if (intPort == 25)
                    SmtpServer.EnableSsl = false;
                else
                    SmtpServer.EnableSsl = true;
                SmtpServer.DeliveryMethod = SmtpDeliveryMethod.Network;

                System.Net.Mail.MailMessage mail = new System.Net.Mail.MailMessage();
                // mail.From = new MailAddress(AdminEmail, Request.Url.Host.ToString(), System.Text.Encoding.UTF8);
                mail.From = new MailAddress("nghiphep@nguyenkimvn.vn");
                mail.To.Add(to);
                mail.Subject = title;
                mail.Body = sContent;
                mail.DeliveryNotificationOptions = DeliveryNotificationOptions.OnFailure;
                mail.IsBodyHtml = true;
                SmtpServer.Send(mail);
                //Cap nhật ngày phỏng vấn

                string close = @"<script type='text/javascript'>
                                window.returnValue = true;
                                window.close();
                                </script>";
                return true;

            }
            catch (System.Exception ex)
            {
                return false;
            }

        }
    }
}