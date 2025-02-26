using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevComponents.DotNetBar;
using DOAN_QLTUYENSINHDH.Class_HeThong;
using System.Data.SqlClient;

namespace DOAN_QLTUYENSINHDH.FormQuanLy
{
    public partial class FrmChiaPhong : Office2007Form
    {
        public FrmChiaPhong()
        {
            InitializeComponent();
        } 
        KetNoi kn = new KetNoi();
        HT_Combobox htcb = new HT_Combobox();
        ThiSinh ts = new ThiSinh();
      SqlConnection conn;
                       
                      
        private void laycmb()
        {
            string sql = "select distinct namthi from thisinh";
            cmbnam.DataSource = kn.Laycsdl(sql);
            cmbnam.DisplayMember = "namthi";
        }
        public void tongsots()
        {
            conn = kn.laykn();
            SqlDataAdapter adphong = new SqlDataAdapter("select distinct sbd,sophongthi,namthi from phongthi where namthi='" + cmbnam.Text  + "'", conn);
            DataTable dtphong = new DataTable();
            try
            {
                adphong.Fill(dtphong);
            }
            catch { }
            dgvhienthi.DataSource = dtphong;
            int tongso_ts = dgvhienthi.Rows.Count; // tổng số thí sinh
            lbltong.Text = tongso_ts.ToString();
        }
        private void FrmChiaPhong_Load(object sender, EventArgs e)
        {
          
            laycmb();
           
            hienthigr();
            
            tongsots();
        }

       
        private void buttonX1_Click(object sender, EventArgs e)
        {
            // cau hoi trước khi thưc hiện
            if (MessageBoxEx.Show("Lưu ý sau khi thực hiện chức năng này thông tin cũ sẽ bị thay đổi \n" +
                   "Bạn thực sự muốn thực hiện??", "Kiểm tra lại thông tin", MessageBoxButtons.OKCancel, MessageBoxIcon.Question) == DialogResult.OK)
            {

                // kiểm tra phong thi đã được phân chưa
                conn = kn.laykn();
                SqlDataAdapter ad1 = new SqlDataAdapter("select sbd , sophongthi,namthi from phongthi where sophongthi ='1' and namthi='" + cmbnam.Text + "'", conn);
                DataTable dt1 = new DataTable();
                ad1.Fill(dt1);
                if (dt1.Rows.Count > 0)
                {
                    MessageBox.Show(" Địa điểm đã được phân rồi ");
                    // nếu muốn phân lại phòng thi thì click vào nút thiết lập lại
                }
                else  // nếu phòng thi chưa được thực hiện thì
                {
                    //try
                    //{
                    // môn 1
                    // lấy so luong thi sinh
                    SqlDataAdapter adphong = new SqlDataAdapter("select  sbd , sophongthi,namthi from phongthi where namthi='" + cmbnam.Text + "' and mon ='1'", conn);
                    DataTable dtphong = new DataTable();
                    adphong.Fill(dtphong);
                    
                    int tongso_ts = dtphong.Rows.Count; // tổng số thí sinh
                    int denphong = tongso_ts / 20;  // đến phòng
                    int dem = 1; // từ phòng
                    int i = 0; int count = 1;

                    while (dem <= denphong)
                    {
                        while (i < tongso_ts)
                        {
                            for (int j = i; j < 2 * count * 10; j++)
                            {

                                try
                                {
                                    dtphong.Rows[j][1] = dem.ToString();
                                }
                                catch
                                {
                                    // MessageBoxEx.Show("Số thí sinh không hợp lệ để chia phòng", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                                }
                            }
                            i = i + 20; count = count + 1;
                            dem = dem + 1;
                        }

                    }
                    dgvhienthi.DataSource = dtphong;
                    
                    // update phong vào csdl
                    
                        for (int k = 0; k < dgvhienthi.Rows.Count; k++)
                        {
                            string sophong = dgvhienthi.Rows[k].Cells["phongthi"].Value.ToString();
                            string sbd = dgvhienthi.Rows[k].Cells["sbd"].Value.ToString();

                            SqlCommand cmd_update = new SqlCommand("update phongthi set sophongthi=@sophong where sbd =@sbd and mon='1' ", conn);
                            cmd_update.Parameters.Add("sbd", SqlDbType.VarChar).Value = sbd;
                            cmd_update.Parameters.Add("sophong", SqlDbType.Int).Value = sophong;

                            if (conn.State == ConnectionState.Closed)
                            {
                                conn.Open();
                            }

                            cmd_update.ExecuteNonQuery();
                            

                        }
                        
                        // end môn 1;

                        // môn 2
                        SqlDataAdapter adphong1 = new SqlDataAdapter("select  sbd , sophongthi,namthi from phongthi where namthi='" + cmbnam.Text + "' and mon ='2'", conn);
                        DataTable dtphong1 = new DataTable();
                        adphong1.Fill(dtphong1);

                        int tongso_ts1 = dtphong1.Rows.Count; // tổng số thí sinh
                        int denphong1 = tongso_ts1 / 20;  // đến phòng
                        int dem1 = 1; // từ phòng
                        int i1 = 0; int count1 = 1;

                        while (dem1 <= denphong1)
                        {
                            while (i1 < tongso_ts1)
                            {
                                for (int j1 = i1; j1 < 2 * count1 * 10; j1++)
                                {

                                    try
                                    {
                                        dtphong1.Rows[j1][1] = dem1.ToString();
                                    }
                                    catch
                                    {
                                        // MessageBoxEx.Show("Số thí sinh không hợp lệ để chia phòng", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                                    }
                                }
                                i1 = i1 + 20; count1 = count1 + 1;
                                dem1 = dem1 + 1;
                            }

                        }
                        dgvhienthi1.DataSource = dtphong1;

                        // update phong vào csdl

                        for (int k1 = 0; k1 < dgvhienthi1.Rows.Count; k1++)
                        {
                            string sophong1 = dgvhienthi1.Rows[k1].Cells["phongthi1"].Value.ToString();
                            string sbd1 = dgvhienthi1.Rows[k1].Cells["sbd1"].Value.ToString();

                            SqlCommand cmd_update1 = new SqlCommand("update phongthi set sophongthi=@sophong where sbd =@sbd and mon='2' ", conn);
                            cmd_update1.Parameters.Add("sbd", SqlDbType.VarChar).Value = sbd1;
                            cmd_update1.Parameters.Add("sophong", SqlDbType.Int).Value = sophong1;

                            if (conn.State == ConnectionState.Closed)
                            {
                                conn.Open();
                            }

                            cmd_update1.ExecuteNonQuery();


                        }

                        // môn 3
                        SqlDataAdapter adphong2 = new SqlDataAdapter("select  sbd , sophongthi,namthi from phongthi where namthi='" + cmbnam.Text + "' and mon ='3'", conn);
                        DataTable dtphong2 = new DataTable();
                        adphong2.Fill(dtphong2);

                        int tongso_ts2 = dtphong2.Rows.Count; // tổng số thí sinh
                        int denphong2 = tongso_ts2 / 20;  // đến phòng
                        int dem2 = 1; // từ phòng
                        int i2 = 0; int count2 = 1;

                        while (dem2 <= denphong2)
                        {
                            while (i2 < tongso_ts2)
                            {
                                for (int j2 = i2; j2 < 2 * count2 * 10; j2++)
                                {

                                    try
                                    {
                                        dtphong2.Rows[j2][1] = dem2.ToString();
                                    }
                                    catch
                                    {
                                        // MessageBoxEx.Show("Số thí sinh không hợp lệ để chia phòng", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                                    }
                                }
                                i2 = i2 + 20; count2 = count2 + 1;
                                dem2 = dem2 + 1;
                            }

                        }
                        dgvhienthi2.DataSource = dtphong2;

                        // update phong vào csdl

                        for (int k2 = 0; k2 < dgvhienthi2.Rows.Count; k2++)
                        {
                            string sophong2 = dgvhienthi2.Rows[k2].Cells["phongthi2"].Value.ToString();
                            string sbd2 = dgvhienthi2.Rows[k2].Cells["sbd2"].Value.ToString();

                            SqlCommand cmd_update2 = new SqlCommand("update phongthi set sophongthi=@sophong where sbd =@sbd and mon='3' ", conn);
                            cmd_update2.Parameters.Add("sbd", SqlDbType.VarChar).Value = sbd2;
                            cmd_update2.Parameters.Add("sophong", SqlDbType.Int).Value = sophong2;

                            if (conn.State == ConnectionState.Closed)
                            {
                                conn.Open();
                            }

                            cmd_update2.ExecuteNonQuery();


                        }
                        MessageBoxEx.Show("Phân phòng thành công", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                        hienthigr();

                    //}
                    //catch
                    //{
                    //    MessageBoxEx.Show("Lỗi xảy ra trong quá trình chia phòng", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    //}
                }
                // end cau hoi
            }
        }
        private void hienthigr()
        {
            // hiển thị kết quả ra luoi
            string htcsdl = "SELECT  sbd , sophongthi,namthi from phongthi where namthi='"+cmbnam.Text+"' and mon ='1'";
            dgvhienthi.DataSource = kn.Laycsdl(htcsdl); 
            // mon 2
            string htcsdl1 = "SELECT  sbd , sophongthi,namthi from phongthi where namthi='" + cmbnam.Text + "' and mon ='2'";
            dgvhienthi1.DataSource = kn.Laycsdl(htcsdl1); 
            // mon 3
            string htcsdl2 = "SELECT  sbd , sophongthi,namthi from phongthi where namthi='" + cmbnam.Text + "' and mon ='3'";
            dgvhienthi2.DataSource = kn.Laycsdl(htcsdl2); 

        }

        private void buttonX2_Click(object sender, EventArgs e)
        {
            phanlaiphong();

        }
        private void phanlaiphong()
        {
            SqlConnection conn = kn.laykn();
            SqlCommand cmd = new SqlCommand("update  phongthi set sophongthi =NULL where namthi='" + cmbnam.Text + "' ", conn);
            if (conn.State == ConnectionState.Closed)
            {
                conn.Open();
            }
            cmd.ExecuteNonQuery();
            MessageBoxEx.Show("Đã đặt lại phòng thi thành công");

            // hiển thị kết quả
            hienthigr();
        }

        private void lblhienthi_Click(object sender, EventArgs e)
        {

        }

        private void cmbnam_SelectedIndexChanged(object sender, EventArgs e)
        {
            tongsots();
        }
        //private void buttonX3_Click(object sender, EventArgs e)
        //{
        //    if (MessageBoxEx.Show("Lưu ý sau khi thực hiện chức năng này thông tin cũ sẽ bị thay đổi \n" +
        //           "Bạn thực sự muốn thực hiện??", "Kiểm tra lại thông tin", MessageBoxButtons.OKCancel, MessageBoxIcon.Question) == DialogResult.OK)
        //    {

        //        phanlaiphong();
        //    }
                      
        //}

       

    }
}