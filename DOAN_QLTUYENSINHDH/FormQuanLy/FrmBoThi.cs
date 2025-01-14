using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DOAN_QLTUYENSINHDH.Class_HeThong;
using DevComponents.DotNetBar;

namespace DOAN_QLTUYENSINHDH.FormQuanLy
{
    public partial class FrmBoThi : DevComponents.DotNetBar.Office2007Form
    {
        public FrmBoThi()
        {
            InitializeComponent();
        }
        ThiSinh ac = new ThiSinh();
        HT_Combobox cbb = new HT_Combobox();
        KetNoi kn = new KetNoi();


        private void loadcsdl()
        {
            gridhienthi.DataSource = kn.Laycsdl("select id,sbd,hovaten,bothi from view_bothi where mon='" + cmbmon.SelectedValue.ToString() + "' and namthi='" + cmbnam.Text + "' and sophongthi='" + cmbphong.Text + "' order by sbd");
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
        private void FrmBoThi_Load(object sender, EventArgs e)
        {
            cbb.HienthiCBMon(cmbmon);
            hienthinam();
            hienthiphong();
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

        private void cmbphong_SelectedIndexChanged(object sender, EventArgs e)
        {
            loadcsdl();
        }

        private void gridhienthi_DataError(object sender, DataGridViewDataErrorEventArgs e)
        {
            MessageBoxEx.Show("Nhập số 1 nếu thí sinh bỏ thi!", "THÔNG BÁO", MessageBoxButtons.OK, MessageBoxIcon.Warning);
       

        }

        private void buttonX1_Click(object sender, EventArgs e)
        {
            try
            {
                ac.Capnhat_Bothi(gridhienthi);
                MessageBoxEx.Show("Cập nhật thành công!", "THÔNG BÁO", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
            catch (Exception x)
            {
                MessageBoxEx.Show("Lỗi " + x.ToString(), "THÔNG BÁO", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
        }

        private void txtten_TextChanged(object sender, EventArgs e)
        {
            if (txtten.Text == "")
            {
                loadcsdl();
            }
            else
            gridhienthi.DataSource = kn.Laycsdl("select id,sbd,hovaten,bothi from view_bothi where mon='" + cmbmon.SelectedValue.ToString() + "' and namthi='" + cmbnam.Text + "' and sophongthi='" + cmbphong.Text + "' and hovaten like N'%" + txtten.Text + "%'  order by sbd");
        }
    }
}