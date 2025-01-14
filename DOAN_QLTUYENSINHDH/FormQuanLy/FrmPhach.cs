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
    public partial class FrmPhach : Office2007Form
    {
        public FrmPhach()
        {
            InitializeComponent();
        }
        KetNoi kn = new KetNoi();
        ThiSinh ts = new ThiSinh();
        public void hienthiphong()
        {

            string sql = "select distinct sophongthi as phong from phongthi where namthi='" + cmbnam.Text + "'";
            cmbphong.DataSource = kn.Laycsdl (sql);
            cmbphong.DisplayMember = "phong";
        }
        public void hienthinam()
        {
            
            string sql = "select  distinct namthi as nam from phongthi";
            cmbnam.DataSource = kn.Laycsdl(sql);
            cmbnam.DisplayMember = "nam";
           
        }
        public void loadcsdl()
        {
            string sql = "Select * from phongthi where namthi='" + cmbnam.Text + "' and sophongthi='" + cmbphong.Text + "' and mon='" + cmbmon.SelectedValue.ToString() + "' and bothi='0'";
           gridhienthi.DataSource= kn.Laycsdl(sql);
        }
        HT_Combobox cbb = new HT_Combobox();
        private void FrmPhach_Load(object sender, EventArgs e)
        {
            cbb.HienthiCBMon(cmbmon);
            hienthinam();
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

        private void buttonX1_Click(object sender, EventArgs e)
        {
            if (MessageBoxEx.Show("Lưu ý sau khi thực hiện chức năng này thông tin cũ sẽ bị thay đổi \n"+
                "Bạn thực sự muốn thực hiện??", "Kiểm tra lại thông tin trước khi đánh phách",MessageBoxButtons.OKCancel, MessageBoxIcon.Question) == DialogResult.OK)
            {
            // đánh phách phong thi
                ts.DanhPhach(gridhienthi, cmbmon.SelectedValue.ToString(), cmbphong.Text, cmbnam.Text);
                // hien thi du lieu bang phách ra lưới
                dataGridViewX1.DataSource = kn.Laycsdl("select * from phach where mon='" + cmbmon.SelectedValue.ToString() + "' and phongthi='" + cmbphong.Text + "' and namthi ='" + cmbnam.Text + "'");
               
                    // danh phach diem
                ts.DanhPhach_Diem(dataGridViewX1, cmbmon.SelectedValue.ToString(), cmbnam.Text, cmbphong.Text);

            }
        }

        private void buttonX2_Click(object sender, EventArgs e)
        {
            BaoCao.Rpphach phach = new DOAN_QLTUYENSINHDH.BaoCao.Rpphach();
            phach.mon = cmbmon.SelectedValue.ToString();
            phach.phongthi = cmbphong.Text;
            phach.namthi = cmbnam.Text;
            phach.Show();
        }
    }
}