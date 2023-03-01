using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;

namespace CustomerGuarantee
{
    public class Global : HttpApplication
    {
        void Application_Start(object sender, EventArgs e)
        {
            // Code that runs on application startup
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);
        }
        protected void Application_BeginRequest(object sender, EventArgs e)
        {
            HttpContext context = HttpContext.Current;
            string currentLocation = context.Request.Path.ToLower();
            try
            {
                if (currentLocation.Equals("/yeu-cau-khach-gui"))
                {
                    context.RewritePath("~/Yeucaukhachgui.aspx");
                }
                if (currentLocation.Equals("/dang-nhap"))
                {
                    context.RewritePath("~/Dangnhap.aspx");
                }
                if (currentLocation.Equals("/gui-bao-hanh"))
                {
                    context.RewritePath("~/Default.aspx");
                }
                if (currentLocation.Equals("/lich-su-bao-hanh"))
                {
                    context.RewritePath("~/Lichsubaohanh.aspx");
                }
                else
                {
                    if (currentLocation.Equals("/kiem-tra-bao-hanh"))
                    {
                        context.RewritePath("~/CheckBH.aspx");
                    }
                }
            }
            catch(Exception ex)
            {

            }
        }
    }
}