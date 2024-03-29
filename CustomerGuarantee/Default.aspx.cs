﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CustomerGuarantee.Models;
using System.Web.Services;
using Newtonsoft.Json;
using PQT.Common;
using System.Net.Mail;
using System.Text;
using System.Security.Cryptography;
using System.IO;

namespace CustomerGuarantee
{
   

    public partial class _Default : Page
    {
        private static Random random = new Random();

        public static string RandomString(int length)
        {
            const string chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
            return new string(Enumerable.Repeat(chars, length)
                .Select(s => s[random.Next(s.Length)]).ToArray());
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var repass = Decrypt("o0QH4YvWVTnzHDm1mU4KvA==");
                var random = RandomString(8);
                this.randomCode.Value = "BHNK-" + random;
                if (Request.Cookies["CustomerLogin"] != null)
                {
                    CustomerCaseEntities db = new CustomerCaseEntities();
                    tCustomerUser cus = db.tCustomerUsers.ToList().Where(m => m.CustomerUser == Request.Cookies["CustomerLogin"].Value).FirstOrDefault();
                    if (cus != null)
                    {
                        this.emailcus.Value = cus.CustomerEmail;
                        // this.CustomerUserId.Value = cus.CustomerUserId.ToString();
                        //
                        this.CustomerName.Value = cus.CustomerName;
                        this.NguoiLienHe.Value = cus.CustomerNLH;
                        this.Address.Value = cus.CustomerAddress;
                        this.PhoneCustomer.Value = cus.CustomerPhone;
                        this.Email.Value = cus.CustomerEmail;
                    }
                }
                else
                {
                    //this.customerlogin.Value = "0";
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
        public static string Encrypt(string stringToEncrypt)
        {
            string sEncryptionKey = "!#$a54?3";
            byte[] key = { };
            byte[] IV = { 10, 20, 30, 40, 50, 60, 70, 80 };
            byte[] inputByteArray; //Convert.ToByte(stringToEncrypt.Length)
            try
            {
                key = Encoding.UTF8.GetBytes(sEncryptionKey.Substring(0, 8));
                DESCryptoServiceProvider des = new DESCryptoServiceProvider();
                inputByteArray = Encoding.UTF8.GetBytes(stringToEncrypt);
                MemoryStream ms = new MemoryStream();
                CryptoStream cs = new CryptoStream(ms, des.CreateEncryptor(key, IV), CryptoStreamMode.Write);
                cs.Write(inputByteArray, 0, inputByteArray.Length);
                cs.FlushFinalBlock();

                return Convert.ToBase64String(ms.ToArray());
            }
            catch (System.Exception ex)
            {
                throw ex;
            }
        }
        public static string Decrypt(string stringToDecrypt)
        {
            string sEncryptionKey = "!#$a54?3";
            byte[] key = { };
            byte[] IV = { 10, 20, 30, 40, 50, 60, 70, 80 };
            //Private IV() As Byte = {&H12, &H34, &H56, &H78, &H90, &HAB, &HCD, &HEF}

            byte[] inputByteArray = new byte[stringToDecrypt.Length];
            try
            {
                key = Encoding.UTF8.GetBytes(sEncryptionKey.Substring(0, 8));
                DESCryptoServiceProvider des = new DESCryptoServiceProvider();
                inputByteArray = Convert.FromBase64String(stringToDecrypt);

                MemoryStream ms = new MemoryStream();
                CryptoStream cs = new CryptoStream(ms, des.CreateDecryptor(key, IV), CryptoStreamMode.Write);
                cs.Write(inputByteArray, 0, inputByteArray.Length);
                cs.FlushFinalBlock();

                Encoding encoding = Encoding.UTF8;
                return encoding.GetString(ms.ToArray());
            }
            catch (System.Exception ex)
            {
                throw ex;
            }
        }
        [WebMethod]
        public static int UpdateData(CustomerCaseInfor data,string capchaText)
        {
            if (capchaText.ToLower() != SoftGenImage.genStr.ToLower())
            {
                return 2;
            }

                CustomerCaseEntities db = new CustomerCaseEntities();
            try
            {
                data.DateCreate = DateTime.Now;
                data.Status = 0;
                data.Step1 = DateTime.Now;
                db.CustomerCaseInfors.Add(data);

                //Tạo tài khoản khách hàng
                bool isTaoTK = false;
                var chkCustomerUser = db.tCustomerUsers.Where(m => m.CustomerEmail == data.Email).FirstOrDefault();
                tCustomerUser tcus = new tCustomerUser();
                Random rd = new Random();
                const string chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
                var test = new string(Enumerable.Repeat(chars, 8)
                    .Select(s => s[rd.Next(s.Length)]).ToArray());
                if (chkCustomerUser == null)
                { 
                    tcus.CustomerEmail = data.Email;
                    tcus.CustomerName = data.CustomerName;
                    tcus.CustomerNLH = data.NguoiLienHe;
                    tcus.CustomerPhone = data.PhoneCustomer;
                    tcus.CustomerUser = data.Email;
                    tcus.CustomerAddress = data.Address;
                    tcus.CustomerNLH = data.NguoiLienHe;
                    tcus.CustomerPassword = Encrypt(test);
                    db.tCustomerUsers.Add(tcus);
                    db.SaveChanges();
                    isTaoTK = true;
                }
                else
                {
                    chkCustomerUser.CustomerName= data.CustomerName;
                    chkCustomerUser.CustomerNLH= data.NguoiLienHe;
                    chkCustomerUser.CustomerAddress = data.Address;
                    chkCustomerUser.CustomerPhone = data.PhoneCustomer;
                    db.SaveChanges();
                }
                string htmlContents = "";
                htmlContents += "<div style=\"color:red;font-weight:bold\">Khi gửi Sản phẩm bảo hành quý khách vui lòng ghi thông tin người nhận :</div>";
                htmlContents += "<div style=\"color:red;font-weight:bold\">Công Ty TNHH Vi Tính Nguyên Kim. ĐC: 245B Trần Quang Khải,P Tân Định ,Q.1,TPHCM .:</div>";
                htmlContents += "<div style=\"color:red;font-weight:bold;margin-bottom:10px\">SĐT: 028 22 246 246 – Lầu 1 : Phòng Bảo Hành - 873</div>";
                htmlContents += "<div>Xin chào Anh/Chị" + " " + data.CustomerName + "</div>"; 
                htmlContents += "<div>Cảm ơn Anh/Chị đã gửi thông tin bảo hành cho chúng tôi." + "</div>";

                string htmlThan = "";
                htmlThan += "<table style=\"width:100%;margin:10px 0px\">";

                htmlThan += "<tr>";
                htmlThan += "<td style=\"border: 1px solid;padding:5px;background-color:#65FFFF;width:150px\">Tên công ty</td>";
                htmlThan += "<td style=\"border: 1px solid;padding:5px\">" + data.CustomerName+"</td>";
                htmlThan += "</tr>";

                htmlThan += "<tr>";
                htmlThan += "<td style=\"border: 1px solid;padding:5px;background-color:#65FFFF;width:150px\">Người liên hệ</td>";
                htmlThan += "<td style=\"border: 1px solid;padding:5px\">" + data.NguoiLienHe + "</td>";
                htmlThan += "</tr>";

                htmlThan += "<tr>";
                htmlThan += "<td style=\"border: 1px solid;padding:5px;background-color:#65FFFF;width:150px\">Địa chỉ</td>";
                htmlThan += "<td style=\"border: 1px solid;padding:5px\">" + data.Address + "</td>";
                htmlThan += "</tr>";

                htmlThan += "<tr>";
                htmlThan += "<td style=\"border: 1px solid;padding:5px;background-color:#65FFFF;width:150px\">SĐT & người liên hệ</td>";
                htmlThan += "<td style=\"border: 1px solid;padding:5px\">" + data.PhoneCustomer + "</td>";
                htmlThan += "</tr>";

                htmlThan += "<tr>";
                htmlThan += "<td style=\"border: 1px solid;padding:5px;background-color:#65FFFF;width:150px\">Sản phẩm gửi BH</td>";
                htmlThan += "<td style=\"border: 1px solid;padding:5px\">" + data.ProductName + "</td>";
                htmlThan += "</tr>";

                htmlThan += "<tr>";
                htmlThan += "<td style=\"border: 1px solid;padding:5px;background-color:#65FFFF;width:150px\">Tình trạng lỗi</td>";
                htmlThan += "<td style=\"border: 1px solid;padding:5px\">" + data.ProductTinhTrangLoi + "</td>";
                htmlThan += "</tr>";

                if (!string.IsNullOrEmpty(data.ProductPhukien))
                {
                    htmlThan += "<tr>";
                    htmlThan += "<td style=\"border: 1px solid;padding:5px;background-color:#65FFFF;width:150px\">Phụ kiện đi kèm</td>";
                    htmlThan += "<td style=\"border: 1px solid;padding:5px\">" + data.ProductPhukien + "</td>";
                    htmlThan += "</tr>";
                }

                htmlThan += "<tr>";

                if (data.HinhThucGui == 3)
                {
                    htmlThan += "<td style=\"border: 1px solid;padding:5px;background-color:#65FFFF;width:150px\">Hình thức gửi</td>";
                    htmlThan += "<td style=\"border: 1px solid;padding:5px\">" + "Chành xe/ chuyển phát" + "</td>";
                    htmlThan += "</tr>";

                    htmlThan += "<td style=\"border: 1px solid;padding:5px;background-color:#65FFFF;width:150px\">Tên nhà xe</td>";
                    htmlThan += "<td style=\"border: 1px solid;padding:5px\">" + data.CarName + "</td>";
                    htmlThan += "</tr>";

                    htmlThan += "<tr>";
                    htmlThan += "<td style=\"border: 1px solid;padding:5px;background-color:#65FFFF;width:150px\">Địa chỉ nhà xe</td>";
                    htmlThan += "<td style=\"border: 1px solid;padding:5px\">" + data.CarAddress + "</td>";
                    htmlThan += "</tr>";

                    htmlThan += "<tr>";
                    htmlThan += "<td style=\"border: 1px solid;padding:5px;background-color:#65FFFF;width:150px\">Số điện thoại nhà xe</td>";
                    htmlThan += "<td style=\"border: 1px solid;padding:5px\">" + data.CarPhoneNumber + "</td>";
                    htmlThan += "</tr>";
                }
                if (data.HinhThucGui == 2)
                {
                    htmlThan += "<tr>";
                    htmlThan += "<td style=\"border: 1px solid;padding:5px;background-color:#65FFFF;width:150px\">Hình thức gửi</td>";
                    htmlThan += "<td style=\"border: 1px solid;padding:5px\">" + "Giao nhận mang về" + "</td>";
                    htmlThan += "</tr>";

                    htmlThan += "<tr>";
                    htmlThan += "<td style=\"border: 1px solid;padding:5px;background-color:#65FFFF;width:150px\">Tên nhân viên</td>";
                    htmlThan += "<td style=\"border: 1px solid;padding:5px\">" + data.TenGiaoNhan + "</td>";
                    htmlThan += "</tr>";


                    htmlThan += "<tr>";
                    htmlThan += "<td style=\"border: 1px solid;padding:5px;background-color:#65FFFF;width:150px\">Số điện thoại</td>";
                    htmlThan += "<td style=\"border: 1px solid;padding:5px\">" + data.SoDienThoaiGiaoNhan + "</td>";
                    htmlThan += "</tr>";
                }

                htmlThan += "<tr>";
                htmlThan += "<td style=\"border: 1px solid;padding:5px;background-color:#65FFFF;width:150px\">Thời gian dự kiến gửi	</td>";
                htmlThan += "<td style=\"border: 1px solid;padding:5px\">" + data.NgayGui + "</td>";
                htmlThan += "</tr>";

                htmlThan += "</table>";
                htmlContents += htmlThan;
                htmlContents += "<div>Mã đơn bảo hành của Anh/Chị là <strong>" + data.CodeGenerate + "</strong></div>";
                htmlContents += "<div>Để kiểm tra thông tin bảo hành vui lòng Anh/Chị hãy vào đường link http://baohanh.vitinhnguyenkim.vn/kiem-tra-bao-hanh với Mã để kiểm tra tình trạng đơn bảo hành  </div>";

                if (isTaoTK)
                {
                    htmlContents += "<div>Chúng tôi đã tạo tài khoản cho bạn với User name: <strong>" + tcus.CustomerUser+ "</strong> Password mặc định là <strong>"+ test + "</strong><div>";
                }
                htmlContents += "<div>Trong trường hợp chưa nhận được mail phản hồi, vui lòng Anh/Chị kiểm tra hộp thư rác.</div>";
                sendEmail(data.Email, "Xác nhận đăng ký gửi bảo hành",htmlContents);
                //Send Mail cho Bộ phận xử lý
                htmlContents = "";
                htmlContents += "<div>Có đơn đặt bảo hành của khách hàng với thông tin</div>";
                htmlContents += htmlThan;
                sendEmail(Config.GetConfigValue("EmailBaoHanh"), "Khách gửi bảo hành", htmlContents);
                db.SaveChanges();
            }
            catch(Exception ex)
            {
                return -1;
            }
            finally
            {
                db.Dispose();
            }
            return 1;
        }
        public static bool sendEmail(string to, string title, string sContent)
        {
            try
            {
                string AdminEmail = Config.GetConfigValue("AdminEmailTo");
                string AdminPass = Config.GetConfigValue("AdminPass");
                string MailHost = Config.GetConfigValue("MailHost");
                string PortMailHost = Config.GetConfigValue("PortMailHost");
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
                mail.From = new MailAddress(Config.GetConfigValue("AdminEmailTo"), "TT.BAOHANH@NGUYENKIMVN.VN");
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

        [WebMethod]
        public static bool Login(tCustomerUser data)
        {
            CustomerCaseEntities db = new CustomerCaseEntities();
            tCustomerUser user = db.tCustomerUsers.ToList().Where(m => m.CustomerUser.Trim().ToLower() == data.CustomerUser.Trim().ToLower() && Decrypt(m.CustomerPassword)==data.CustomerPassword).FirstOrDefault();
            if (user != null)
            {
                HttpCookie cookie = new HttpCookie("CustomerLogin");
                cookie.Value = user.CustomerUser;
                cookie.Expires = DateTime.Now.AddDays(1);
                HttpContext.Current.Response.Cookies.Add(cookie);
                return true;
            }
            return false;
        }
        [WebMethod]
        public static bool LoginByEmail(tCustomerUser data)
        {
             
            CustomerCaseEntities db = new CustomerCaseEntities();
            //Kiểm tra Email có tồn tại chưa, nếu có thì tạo
            var chkUser = db.tCustomerUsers.Any(m => m.CustomerEmail.Trim() == data.CustomerEmail.Trim());
            if (chkUser == false)
            {
                HttpCookie cookie = new HttpCookie("CustomerLogin");
                cookie.Value = data.CustomerEmail.Trim();
                cookie.Expires = DateTime.Now.AddDays(1);
                HttpContext.Current.Response.Cookies.Add(cookie);
                return true;
            }
               
            tCustomerUser cus = new tCustomerUser();
            cus.CustomerEmail = data.CustomerEmail;
            cus.CustomerName = data.CustomerName;
            cus.CustomerUser = data.CustomerEmail;
          
            db.tCustomerUsers.Add(cus);
            db.SaveChanges();
            return true; 
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

        [WebMethod]
        public static int Register(tCustomerUser data)
        {
            CustomerCaseEntities db = new CustomerCaseEntities();
            var cus = db.tCustomerUsers.Where(m => m.CustomerUser == data.CustomerUser).FirstOrDefault();
            if (cus != null)
            {
                return 2;
            }
            tCustomerUser tcus = new tCustomerUser();
            tcus.CustomerEmail = data.CustomerUser;
            tcus.CustomerUser = data.CustomerUser;
            tcus.CustomerPassword = Encrypt(data.CustomerPassword);
            db.tCustomerUsers.Add(tcus);
            db.SaveChanges();
            return 1; 
        }

        [WebMethod]

        public static string GetinforChanhXe(string email,string key)
        {
            CustomerCaseEntities db = new CustomerCaseEntities();
            var lstInfo = db.CustomerCaseInfors.Where(m => m.Email == email && m.CarName.Contains(key) && key!="").GroupBy(m=>m.CarName).SelectMany(m=>m.Take(1)).ToList();
            string result = "";
            foreach (var item in lstInfo)
            {
                result += item.CarName + " - " + item.CarAddress + " - " + item.CarPhoneNumber + ",";
            }
            return result;
        }
        [WebMethod]
        public static bool ResetMatkhau(tCustomerUser data)
        {
            Random rd = new Random();
            const string chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
            var test = new string(Enumerable.Repeat(chars, 8)
                .Select(s => s[rd.Next(s.Length)]).ToArray());
            CustomerCaseEntities db = new CustomerCaseEntities();
            var tCustomerUser = db.tCustomerUsers.Where(m => m.CustomerEmail == data.CustomerEmail).FirstOrDefault();
            if (tCustomerUser != null)
            {
                tCustomerUser.CustomerPassword= Encrypt(test);
                db.SaveChanges();
            }
            string htmlContents = "";
            htmlContents += "<table>";

            htmlContents += "<tr>";
            htmlContents += "<td>Chào Anh/Chị, Mật khẩu mới của Anh/Chị là "+test+"</td>";
            htmlContents += "</tr>";
            htmlContents += "</table>";

            sendEmail(data.CustomerEmail, "Khôi phục mật khẩu", htmlContents);
            return true;
        }

        [WebMethod]
        public static bool Doimatkhau(string oldpassword,string newpassword,string CustomerEmail)
        {
            CustomerCaseEntities db = new CustomerCaseEntities();
            var tCustomerUser = db.tCustomerUsers.Where(m => m.CustomerEmail == CustomerEmail).FirstOrDefault();
            if(tCustomerUser.CustomerPassword != Encrypt(oldpassword))
            {
                return false;
            }
            if (tCustomerUser != null)
            {
                tCustomerUser.CustomerPassword = Encrypt(newpassword);
                db.SaveChanges();
            }
            return true;
        }
    }
}