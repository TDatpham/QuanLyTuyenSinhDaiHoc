using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevComponents.DotNetBar;
using System.Data.SqlClient;
using DOAN_QLTUYENSINHDH.Class_HeThong;

namespace DOAN_QLTUYENSINHDH.FormQuanLy
{
    public partial class FrmChiTietTS : Office2007Form
    {
        public FrmChiTietTS()
        {
            InitializeComponent();
        }
        KetNoi ac = new KetNoi();
        public string id ;
        private void FrmChiTietTS_Load(object sender, EventArgs e)
        {
            
            string sql = "select mahoso , sobd ,hovaten, ngaysinh, gioitinh, matinh, mahuyen, cmt, hokhau, dt_ut, khuvuc, "+
                         "nganhdk, dantoc, namthi, dcbaotin, namtn from view_hoso where id='" + id  + "'";
           gridhienthi.DataSource= ac.Laycsdl(sql);
        }
    }
}