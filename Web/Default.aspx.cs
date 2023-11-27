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

public partial class timkiem : System.Web.UI.Page
{
    public void laynamthi()
    {
        string sql = "select distinct namthi from view_tongdiem";
        drpnam.DataSource = kn.taobang(sql);
        drpnam.DataTextField = "namthi";
       

        drpnam.DataBind();

    }
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            laynamthi();
        }
    }
    ketnoi_csdl kn = new ketnoi_csdl();
    protected void Button1_Click(object sender, EventArgs e)
    {

        //Session["nam"] = drpnam.Text;
        string sql = "select sobd, hovaten,ngaysinh ,gioitinh ,tongdiem,namthi from view_tongdiem where (sobd = '" + TextBox1.Text + "' and namthi='" + drpnam.Text + "') or (hovaten like N'%" + TextBox1.Text + "%' and namthi='" + drpnam.Text + "')";
        GridView1.DataSource = kn.taobang(sql);
        GridView1.DataBind();
        
    }

    protected void drpnam_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }
}
