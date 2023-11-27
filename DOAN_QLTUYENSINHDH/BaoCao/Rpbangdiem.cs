using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace DOAN_QLTUYENSINHDH.BaoCao
{
    public partial class Rpbangdiem : DevComponents.DotNetBar.Office2007Form
    {
        public Rpbangdiem()
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
            Crbangdiem cr = new Crbangdiem();
            try
            {
                cr.SetDataSource(kn.Laycsdl("select * from view_tongdiem_cong where namthi='" + cmbnam.Text + "' order by sobd"));
            }
            catch
            {
                MessageBox.Show("Điểm nhập vào không hợp lệ ", "Đã có lỗi ....", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
            crystalReportViewer1.ReportSource = cr;
        }
    }
}