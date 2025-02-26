/*CODE BY TRAN VAN NAM
 *LOP : DLC CNTT6A
 * TRUONG DH SPKT NAM DINH
 * PHAN MEM QUAN LY TUYEN SINH DAI HOC
 * -----------
 * Lớp HT_Combobox gồm các phương thúc để hiển thị thông tin ra combobox
 */
using System;
using System.Collections.Generic;
using System.Text;
using System.Windows.Forms;
using System.Data.SqlClient;
// thêm thư viện
using System.Data;
namespace DOAN_QLTUYENSINHDH.Class_HeThong
{
    class HT_Combobox
    {
        // khai báo
        KetNoi kn = new KetNoi();
        SqlConnection conn;

        public void HienthiCBNam(ComboBox combobox)
        {
            conn = kn.laykn(); // tao kêt nối - lấy đường dẫn đến csdl tử lớp ketnoi
            conn.Open(); // mở kêt nối
            // truy vấn đến csdl và đổ dữ liệu vào table
            SqlDataAdapter ad = new SqlDataAdapter("select  * from namthi", conn); 
            DataTable dt = new DataTable();
            try
            {
                ad.Fill(dt);
           
            // hien thi ra combobox
            combobox.DataSource = dt; // gán datasource cho combobox
            combobox.DisplayMember = "namthi"; // hiện thị dạng text ra combobox
            combobox.ValueMember = "ma"; // giá trị của combobox
            conn.Close(); // đóng kết nối
        }
        catch { }
        }
        public void HienthiCBMon(ComboBox combobox)
        {
            conn = kn.laykn(); // tao kêt nối - lấy đường dẫn đến csdl tử lớp ketnoi
            conn.Open(); // mở kêt nối
            // truy vấn đến csdl và đổ dữ liệu vào table
            SqlDataAdapter ad = new SqlDataAdapter("select  * from mamon", conn);
            DataTable dt = new DataTable();
            try
            {
                ad.Fill(dt);
           
            // hien thi ra combobox
            combobox.DataSource = dt; // gán datasource cho combobox
            combobox.DisplayMember = "tenmon"; // hiện thị dạng text ra combobox
            combobox.ValueMember = "mamon"; // giá trị của combobox
            conn.Close(); // đóng kết nối
            }
            catch { }
        }
        public void HTquyen(ComboBox combobox )
        {
            conn = kn.laykn();
            conn.Open();
            SqlDataAdapter ad = new SqlDataAdapter("select  * from maquyen", conn);
            DataTable dt = new DataTable();
            try
            {
                ad.Fill(dt);
          

            combobox.DataSource = dt;
            combobox.DisplayMember = "ten";
            combobox.ValueMember = "ma";
            conn.Close();
        }
        catch { }
        }
        public void HTcmbquyen(ComboBox combobox , string ts)
        {
            conn = kn.laykn();
            conn.Open();
            SqlDataAdapter ad = new SqlDataAdapter("select  * from maquyen where quyen ='"+ts +"'", conn);
            DataTable dt = new DataTable();
            try
            {
                ad.Fill(dt);
           

            combobox.DataSource = dt;
            combobox.DisplayMember = "ten";
            combobox.ValueMember = "ma";
            conn.Close();
        }
        catch { }
        }
        public void HienthiCBNganh(ComboBox combobox)
        {
            conn = kn.laykn();
            conn.Open();
            SqlDataAdapter ad = new SqlDataAdapter("select  * from nganh", conn);
            DataTable dt = new DataTable();
            try
            {
                ad.Fill(dt);
           

            combobox.DataSource = dt;
            combobox.DisplayMember = "tennganh";
            combobox.ValueMember = "manganh";
            conn.Close();
        }
        catch { }
        }
        public void HienthiCBTinh(ComboBox combobox)
        {
            conn = kn.laykn();
            conn.Open();
            SqlDataAdapter ad = new SqlDataAdapter("select  * from tinh", conn);
            DataTable dt = new DataTable();
            try
            {
                ad.Fill(dt);
           

            combobox.DataSource = dt;
            combobox.DisplayMember = "tentinh";
            combobox.ValueMember = "matinh";
            conn.Close();
        }
        catch { }
        }
        public void HienthiCBHuyen(ComboBox combobox, string matinh)
        {
            conn = kn.laykn();
            conn.Open();
            SqlDataAdapter ad = new SqlDataAdapter("select  * from huyen where matinh like '%"+matinh+"%' ", conn);
            DataTable dt = new DataTable();
            try
            {
                ad.Fill(dt);
            

            combobox.DataSource = dt;
            combobox.DisplayMember = "tenhuyen";
            combobox.ValueMember = "mahuyen";
            conn.Close();
        }
        catch { }
        }
        public void HienthiCBKhuVuc(ComboBox combobox)
        {
            conn = kn.laykn();
            conn.Open();
            SqlDataAdapter ad = new SqlDataAdapter("select  * from khuvuc", conn);
            DataTable dt = new DataTable();
            try
            {
                ad.Fill(dt);
          

            combobox.DataSource = dt;
            combobox.DisplayMember = "tenkv";
            combobox.ValueMember = "makv";
            conn.Close();
        }
        catch { }
        }
        public void HienthiCBDantoc(ComboBox combobox)
        {
            conn = kn.laykn();
            conn.Open();
            SqlDataAdapter ad = new SqlDataAdapter("select  * from dantoc", conn);
            DataTable dt = new DataTable();
            try
            {
                ad.Fill(dt);
            

            combobox.DataSource = dt;
            combobox.DisplayMember = "tendt";
            combobox.ValueMember = "madt";
            conn.Close();
        }
        catch { }
        }
        public void HienthiCBDoituong(ComboBox combobox)
        {
            conn = kn.laykn();
            conn.Open();
            SqlDataAdapter ad = new SqlDataAdapter("select  * from doituong", conn);
            DataTable dt = new DataTable();
            try
            {
                ad.Fill(dt);
           

            combobox.DataSource = dt;
            combobox.DisplayMember = "madt";
             combobox.ValueMember = "madt";
            conn.Close();
        }
        catch { }
        }
        public void HienthiCBDiadiem(ComboBox combobox)
        {
            conn = kn.laykn();
            conn.Open();
            SqlDataAdapter ad = new SqlDataAdapter("select  * from diadiem", conn);
            DataTable dt = new DataTable();
            try
            {
                ad.Fill(dt);
           

            combobox.DataSource = dt;
            combobox.DisplayMember = "tendd";
            combobox.ValueMember = "madd";
            conn.Close();
        }
        catch { }
        }

        // end
    }
}
