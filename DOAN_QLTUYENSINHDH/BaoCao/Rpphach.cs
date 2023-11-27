using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace DOAN_QLTUYENSINHDH.BaoCao
{
    public partial class Rpphach : DevComponents.DotNetBar.Office2007Form
    {
        public Rpphach()
        {
            InitializeComponent();
        }
        public string mon, phongthi , namthi;
        private void Rpphach_Load(object sender, EventArgs e)
        {
            
            DOAN_QLTUYENSINHDH.Class_HeThong.KetNoi ac = new DOAN_QLTUYENSINHDH.Class_HeThong.KetNoi();
            Crphach cr = new Crphach ();
            cr.SetDataSource(ac.Laycsdl("select * from view_phach where mon='" + mon + "' and phongthi='" + phongthi + "' and namthi ='"+namthi+"'"));
            crystalReportViewer1.ReportSource = cr;
        }
    }
}