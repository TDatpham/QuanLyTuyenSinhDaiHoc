using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
//using System.Configuration ;
/// <summary>
/// Summary description for ketnoi_csdl
/// </summary>
public class ketnoi_csdl
{
	public ketnoi_csdl()
	{
		

	}

    public SqlConnection taoketnoi()
    {

        string chuoiketnoi = ConfigurationManager.ConnectionStrings["qldiemdh"].ConnectionString;
        return new SqlConnection(chuoiketnoi);
       
    }
    public DataTable taobang(string sql)
    {
        SqlConnection con = taoketnoi();
        SqlDataAdapter ad = new SqlDataAdapter(sql, con);
        DataTable dt = new DataTable();
        ad.Fill(dt);
        return dt;
    }
    
   
   
}
