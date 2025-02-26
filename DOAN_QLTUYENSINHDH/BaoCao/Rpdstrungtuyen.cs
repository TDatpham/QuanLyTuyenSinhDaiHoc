using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace DOAN_QLTUYENSINHDH.BaoCao
{
    public partial class Rpdstrungtuyen : DevComponents.DotNetBar.Office2007Form
    {
        public Rpdstrungtuyen()
        {
            InitializeComponent();
        }
        Class_HeThong.KetNoi kn = new DOAN_QLTUYENSINHDH.Class_HeThong.KetNoi();
        public void hienthinam()
        {

            string sql = "select  distinct namthi as nam from phongthi";
            cmbnam.DataSource = kn.Laycsdl(sql);
            cmbnam.DisplayMember = "nam";

        }
        private void Rpdstrungtuyen_Load(object sender, EventArgs e)
        {
            hienthinam();
            

        }

        private void crystalReportViewer1_Load(object sender, EventArgs e)
        {

        }

        private void buttonX1_Click(object sender, EventArgs e)
        {
            CrDstrungtuyen cr = new CrDstrungtuyen();
            try
            {
                cr.SetDataSource(kn.Laycsdl("select * from view_tongdiem_cong where namthi='" + cmbnam.Text + "' and tongdiem >= '" + float.Parse(textBoxX1.Text) + "' and toan > 0 and ly > 0 and hoa > 0 order by sobd"));
                crystalReportViewer1.ReportSource = cr;
            }
            catch
            {
                MessageBox.Show("Điểm nhập vào không hợp lệ ", "Đã có lỗi ....", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                textBoxX1.Focus();
            }
            
        }

        private void textBoxX1_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter)
            {
                buttonX1.PerformClick();
            }
        }
    }
}