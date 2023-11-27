using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace DOAN_QLTUYENSINHDH.BaoCao
{
    public partial class Rpgiaybaodiem : DevComponents.DotNetBar.Office2007Form
    {
        public Rpgiaybaodiem()
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


        private void Rpgiaybaodiem_Load(object sender, EventArgs e)
        {
            hienthinam();
            Crgiaybaodiem cr = new Crgiaybaodiem();
            cr.SetDataSource(kn.Laycsdl("select * from view_tongdiem_cong where namthi='" + cmbnam.Text + "' order by sobd"));
            crystalReportViewer1.ReportSource = cr;

        }

        private void cmbnam_SelectedIndexChanged(object sender, EventArgs e)
        {
            Crgiaybaodiem cr = new Crgiaybaodiem();
            cr.SetDataSource(kn.Laycsdl("select * from view_tongdiem_cong where namthi='" + cmbnam.Text + "' order by sobd"));
            crystalReportViewer1.ReportSource = cr;

        }
    }
}