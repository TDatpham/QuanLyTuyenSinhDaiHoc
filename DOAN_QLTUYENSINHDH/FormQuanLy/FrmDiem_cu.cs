using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DOAN_QLTUYENSINHDH.Class_HeThong;
using DevComponents.DotNetBar;
using System.Data.SqlClient;

namespace DOAN_QLTUYENSINHDH.FormQuanLy
{
    public partial class FrmDiem_cu : Office2007Form
    {
        public FrmDiem_cu()
        {
            InitializeComponent();
        } 
        ThiSinh ac = new ThiSinh();
        KetNoi kn = new KetNoi();
        HT_Combobox cbb = new HT_Combobox();
        private void loadcsdl()
        {
            kn.HienThiLuoi("Select id,mamon,sophach,diem from diem ", gridhienthi, bdndieukhien);


        }
        private void FrmDiem_Load(object sender, EventArgs e)
        {
            cbb.HienthiCBMon(cmbmon);
            loadcsdl();

        }
        void lammoi()
        {
            txtdiem.Text = "";
            txtphach.Text = "";
           
        }
       
        public bool kiemtratontai()
        {
            SqlConnection conn = kn.laykn();
            bool kt = true;
            string sql = "select * from diem where mamon='" + cmbmon.SelectedValue.ToString () +"' and sophach='" + txtphach.Text + "'";
            SqlDataAdapter ad = new SqlDataAdapter(sql, conn);
            DataTable dt = new DataTable();
            ad.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                kt = true;
            }
            else
            {
                kt = false;
            }
            return kt;
        }
        public bool kiemtraphach()
        {
            SqlConnection conn = kn.laykn();
            bool kt = true;
            string sql = "select * from view_phach where mon='" + cmbmon.SelectedValue.ToString() + "' and  maphach='" + txtphach.Text + "'";
            SqlDataAdapter ad = new SqlDataAdapter(sql, conn);
            DataTable dt = new DataTable();
            ad.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                kt = true;
            }
            else
            {
                kt = false;
            }
            return kt;
        }
        private void buttonX5_Click(object sender, EventArgs e)
        {
            if (txtphach.Text =="")
            {
                MessageBoxEx.Show("Bạn chưa nhập phách");
                txtphach.Focus();
            }
            else if (txtdiem.Text == "")
            {
                MessageBoxEx.Show("Bạn chưa nhập điểm");
                txtdiem.Focus();
            }
            else if (kiemtratontai())
            {
                MessageBoxEx.Show("Đã nhập điểm cho thí sinh này");
                
            }
            else if (!kiemtraphach())
            {
                MessageBoxEx.Show("Số phách không tồn tại");

            }
            else
            {

                try
                {
                    ac.Themdiem(gridhienthi, cmbmon.SelectedValue.ToString(), txtphach.Text, float.Parse(txtdiem.Text));
                    
                    MessageBoxEx.Show("Thêm thành công !", "Successfully ....", MessageBoxButtons.OK, MessageBoxIcon.Information);

                }
                catch (Exception ex)
                {
                    if (ex.Message.Contains("Input string was not in a correct format."))
                    {
                        MessageBoxEx.Show("Điểm nhập vào không hợp lệ " , "Đã có lỗi ....", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    }
                    else
                    MessageBoxEx.Show("Lỗi xảy ra trong quá trình thêm " + ex.ToString(), "Đã có lỗi ....", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                }

            }
        }

        private void gridhienthi_RowEnter(object sender, DataGridViewCellEventArgs e)
        {
            try
            {
                int dong = e.RowIndex;
                txtdiem.Text = gridhienthi.Rows[dong].Cells["diem"].Value.ToString();
                 cmbmon.SelectedValue = gridhienthi.Rows[dong].Cells["mamon"].Value.ToString();
                 txtphach.Text = gridhienthi.Rows[dong].Cells["sophach"].Value.ToString();
                txtid.Text = gridhienthi.Rows[dong].Cells["id"].Value.ToString();
            }
            catch
            { }
        }

        private void buttonX6_Click(object sender, EventArgs e)
        {
            lammoi();
        }

        private void btnthoat_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void btnxoa_Click(object sender, EventArgs e)
        {
            try
            {
                if (MessageBox.Show("Bạn thực sự muốn xóa ?", "Question ?", MessageBoxButtons.OKCancel, MessageBoxIcon.Warning) == DialogResult.OK)
                {
                    ac.Xoadiems(gridhienthi, int.Parse(txtid.Text));
                    // load lại csdl vào gridview
                    loadcsdl();
                    MessageBoxEx.Show("Xóa thành công !", "Successfully ....", MessageBoxButtons.OK, MessageBoxIcon.Information);

                }
            }
            catch (Exception ex)
            {

                MessageBoxEx.Show("Lỗi xảy ra trong quá trình xóa " + ex.ToString(), "Đã có lỗi ....", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
        }

        private void btncapnhat_Click(object sender, EventArgs e)
        {
            if (txtphach.Text == "")
            {
                MessageBoxEx.Show("Bạn chưa nhập phách");
                txtphach.Focus();
            }
            else if (txtdiem.Text == "")
            {
                MessageBoxEx.Show("Bạn chưa nhập điểm");
                txtdiem.Focus();
            }
            
            else
            {
                // chỉ cập nhật lại điểm . nếu phách sai thì xóa đi thêm lại
                try
                {
                    ac.Capnhatdiem(gridhienthi, float.Parse(txtdiem.Text),int.Parse (txtid.Text ));
                    // load lại csdl vào gridview
                    loadcsdl();
                    MessageBoxEx.Show("Cập nhật thành công !", "Successfully ....", MessageBoxButtons.OK, MessageBoxIcon.Information);

                }
                catch (Exception ex)
                {
                    if (ex.Message.Contains("Input string was not in a correct format."))
                    {
                        MessageBoxEx.Show("Điểm nhập vào không hợp lệ ", "Đã có lỗi ....", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    }
                    else
                        MessageBoxEx.Show("Lỗi xảy ra trong quá trình cập nhật " + ex.ToString(), "Đã có lỗi ....", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                }

            }

        }

        private void toolStripButton1_Click(object sender, EventArgs e)
        {
            // load lại csdl vào gridview
            loadcsdl();
        }
    }
}