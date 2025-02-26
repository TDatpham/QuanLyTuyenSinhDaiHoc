using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DOAN_QLTUYENSINHDH.Class_HeThong;
using DevComponents.DotNetBar;
using System.Data.SqlClient;

namespace DOAN_QLTUYENSINHDH.FormQuanLy
{
    public partial class FrmDiem : Office2007Form
    {
        public FrmDiem()
        {
            InitializeComponent();
        } 
        ThiSinh ac = new ThiSinh();
        HT_Combobox cbb = new HT_Combobox();
        KetNoi kn = new KetNoi();
        
       
        private void loadcsdl()
        {
            gridhienthi.DataSource = kn.Laycsdl("select sophach,diem from diem where mamon='" + cmbmon.SelectedValue.ToString() + "' and namthi='" + cmbnam.Text + "' and phongthi='" + cmbphong.Text + "'");
        }
        public void hienthinam()
        {

            string sql = "select  distinct namthi as nam from phongthi";
            cmbnam.DataSource = kn.Laycsdl(sql);
            cmbnam.DisplayMember = "nam";

        }
        public void hienthiphong()
        {

            string sql = "select distinct sophongthi as phong from phongthi where namthi='" + cmbnam.Text + "'";
            cmbphong.DataSource = kn.Laycsdl(sql);
            cmbphong.DisplayMember = "phong";

        }
        private void FrmDiem_Load(object sender, EventArgs e)
        {
            cbb.HienthiCBMon(cmbmon);
            hienthinam();
            hienthiphong();          
            loadcsdl();
        }     
        
        private void cmbphong_SelectedIndexChanged(object sender, EventArgs e)
        {
            loadcsdl();
        }

        private void cmbnam_SelectedIndexChanged(object sender, EventArgs e)
        {
            hienthiphong();
            loadcsdl();
        }

        private void cmbmon_SelectedIndexChanged(object sender, EventArgs e)
        {
           loadcsdl();
        }

        private void gridhienthi_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void buttonX1_Click(object sender, EventArgs e)
        {
            //loadcsdl();
           
        }

        private void buttonX1_Click_1(object sender, EventArgs e)
        {
            try
            {
                ac.Luu_Diem(gridhienthi);
                MessageBoxEx.Show("Cập nhật thành công!", "THÔNG BÁO", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
            catch(Exception x)
            {
                MessageBoxEx.Show("Lỗi "+ x.ToString(), "THÔNG BÁO", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }

        }

        private void gridhienthi_DataError(object sender, DataGridViewDataErrorEventArgs e)
        {
            MessageBoxEx.Show("Nhập điểm là số!", "THÔNG BÁO", MessageBoxButtons.OK, MessageBoxIcon.Warning);
        }
    }
}