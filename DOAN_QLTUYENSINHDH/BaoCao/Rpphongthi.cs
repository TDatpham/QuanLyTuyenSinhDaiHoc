using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace DOAN_QLTUYENSINHDH.BaoCao
{
    public partial class Rpphongthi : DevComponents.DotNetBar.Office2007Form
    {
        public Rpphongthi()
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
        public void hienthiphong()
        {

            string sql = "select distinct sophongthi as phong from phongthi where namthi='" + cmbnam.Text + "'";
            cmbphong.DataSource = kn.Laycsdl(sql);
            cmbphong.DisplayMember = "phong";
            
        }
        public void ht_report()
        {
            DOAN_QLTUYENSINHDH.Class_HeThong.KetNoi ac = new DOAN_QLTUYENSINHDH.Class_HeThong.KetNoi();
            CrPhongThi cr = new CrPhongThi();
            cr.SetDataSource(ac.Laycsdl("select distinct * from view_phongthi where namthi='" + cmbnam.Text + "' and phong='" + cmbphong.Text + "' order by sobd"));
            crystalReportViewer1.ReportSource = cr;
        }
        private void Rpphongthi_Load(object sender, EventArgs e)
        {
            hienthinam();
            hienthiphong();
            ht_report();
        }

        private void cmbphong_SelectedIndexChanged(object sender, EventArgs e)
        {
            ht_report();
        }

        private void cmbnam_SelectedIndexChanged(object sender, EventArgs e)
        {
            hienthiphong();
        }
    }
}