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
    public partial class FrmTKThiSinh : Office2007Form
    {
        public FrmTKThiSinh()
        {
            InitializeComponent();
        }
        KetNoi ac = new KetNoi();
       

        private void laycmb()
        {
            string sql = "select distinct namthi from thisinh";
            cmbnam.DataSource = ac.Laycsdl(sql);
            cmbnam.DisplayMember = "namthi";
        }
        public void htcsdl()
        {
            string sql = "select  id,sobd, hots + ' ' + tents AS hovaten, ngaysinh, gioitinh, cmt, hokhau, dt_ut, khuvuc, " +
        "nganhdk, dantoc from thisinh where namthi ='"+cmbnam.Text+"' ORDER BY tents";
            ac.HienThiLuoi(sql, gridhienthi, bdndieukhien);
        }
        private void FrmTKThiSinh_Load(object sender, EventArgs e)
        {
            laycmb();
            htcsdl();
        }

        private void textBoxX1_TextChanged(object sender, EventArgs e)
        {
            if (textBoxX1.Text == "")
            {
                htcsdl();
            }
            else
            {
                string sql = "select id, sobd, hots + ' ' + tents AS hovaten, ngaysinh, gioitinh, cmt, hokhau, dt_ut, khuvuc, " +
              "nganhdk, dantoc from thisinh where sobd='" + textBoxX1.Text + "' and namthi ='" + cmbnam.Text + "'";
                ac.HienThiLuoi(sql, gridhienthi, bdndieukhien);
            }
        }

        private void textBoxX2_TextChanged(object sender, EventArgs e)
        {
            if (textBoxX2.Text == "")
            {
                htcsdl();
            }
            else
            {
                string sql = "select id, sobd, hots + ' ' + tents AS hovaten, ngaysinh, gioitinh, cmt, hokhau, dt_ut, khuvuc, " +
                         "nganhdk, dantoc from thisinh where tents like N'%" + textBoxX2.Text + "%' and namthi ='" + cmbnam.Text + "'";
                ac.HienThiLuoi(sql, gridhienthi, bdndieukhien);
            }
        }

        private void buttonItem1_Click(object sender, EventArgs e)
        {

        }
     
        private void buttonItem2_Click(object sender, EventArgs e)
        {
            FrmChiTietTS ct = new FrmChiTietTS();
            ct.id = txtid.Text;
            ct.ShowDialog();

        }

        private void gridhienthi_RowEnter(object sender, DataGridViewCellEventArgs e)
        {
            try
            {
                txtid.Text = gridhienthi.Rows[e.RowIndex].Cells[0].Value.ToString();

            }
            catch
            {


            }


        }

        private void cmbnam_SelectedIndexChanged(object sender, EventArgs e)
        {
            htcsdl();
        }
        
    }
}