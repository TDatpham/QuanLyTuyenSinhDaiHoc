using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
       Label1.Text = "Số người đang xem : " + Application["online"].ToString();

       Label2.Text = " || Số lượt truy cập : " + Application["sokhach"].ToString();
        

    }
   
   
}
