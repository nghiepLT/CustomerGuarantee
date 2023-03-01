using CustomerGuarantee.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CustomerGuarantee
{
    public partial class WebUserControl1 : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.Cookies["CustomerLogin"] == null)
                {
                    if (Request.Cookies["Baohanhlogin"] != null)
                    {
                        this.logintitle.InnerText = Request.Cookies["Baohanhlogin"].Value;
                    }
                    else
                    {
                        this.liadmin.Visible = false;
                    }
                }
                else
                {

                    this.liadmin.Visible = false;
                }
                   
            }
        }
    }
}