using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace DOAN_QLTUYENSINHDH.BaoCao
{
    public partial class Rptdanhsach : Form
    {
        public Rptdanhsach()
        {
            InitializeComponent();
        }

        private void Rptdanhsach_Load(object sender, EventArgs e)
        {
            DOAN_QLTUYENSINHDH.Class_HeThong.KetNoi ac = new DOAN_QLTUYENSINHDH.Class_HeThong.KetNoi();
            CrDSDuthi cr = new CrDSDuthi();
            cr.SetDataSource(ac.Laycsdl("select * from view_hoso order by sobd"));
            crystalReportViewer1.ReportSource = cr;
        }
    }
}