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
using DOAN_QLTUYENSINHDH.FormQuanLy;

namespace DOAN_QLTUYENSINHDH.FormQuanLy
{
    public partial class FrmNguoiDung : Office2007Form
    {
        public FrmNguoiDung()
        {
            InitializeComponent();
        }
        QuyenNSD q = new QuyenNSD();
        HT_Combobox cbb = new HT_Combobox();

        KetNoi kn = new KetNoi();
        private void loadcsdl()
        {
            kn.HienThiLuoi("select taikhoan,matkhau,quyen,quenmk from dangnhap", dgvHienThi, bdndieukhien);
        }
        private void FrmNguoiDung_Load(object sender, EventArgs e)
        {
            loadcsdl();
           
            cbb.HTquyen(cmbquyen);
            txtmk.UseSystemPasswordChar = true;
            
        }

        private void toolStripButton1_Click(object sender, EventArgs e)
        {
           
        }

        private void dgvHienThi_RowEnter(object sender, DataGridViewCellEventArgs e)
        {
            int dong = e.RowIndex;
            try
            {
                txttendn.Text = dgvHienThi.Rows[dong].Cells["taikhoan"].Value.ToString();
               
                txtmk.Text = dgvHienThi.Rows[dong].Cells["quenmk"].Value.ToString();

                cmbquyen.SelectedValue = dgvHienThi.Rows[dong].Cells["quyen"].Value.ToString();
            }
                catch
            {}
        }

        private void buttonX1_Click(object sender, EventArgs e)
        {
            if (txttendn.Text == "")
            {
                MessageBoxEx.Show("Bạn chưa nhập tên");
                txttendn.Focus();

            }
            else if (txtmk.Text == "")
            {
                MessageBoxEx.Show("Bạn chưa nhập mật khẩu");
                txtmk.Focus();
            }
            else if (txtmk.TextLength < 6)
            {
                MessageBoxEx.Show("Mật khẩu tối thiểu 6 kí tự");
                txtmk.Focus();
            }
            
            else
            {
                try
                {
                    // thêm
                    q.Themnsd(dgvHienThi, txttendn.Text, kn.md5(txtmk.Text), cmbquyen.SelectedValue.ToString(), txtmk.Text);
                    loadcsdl();
                    MessageBoxEx.Show("Thêm thành công !", "Successfully ....", MessageBoxButtons.OK, MessageBoxIcon.Information);

                }
                catch (Exception ex)
                {
                    if (ex.Message.Contains("Cannot insert duplicate key"))
                    {
                        MessageBoxEx.Show("Tên người dùng đã tồn tại!", "Có lỗi xảy ra... ", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    }

                    else
                        MessageBoxEx.Show("Lỗi : " + ex.Message, "Có lỗi xảy ra... ", MessageBoxButtons.OK, MessageBoxIcon.Warning);

                }
            }

        }

        private void buttonX2_Click(object sender, EventArgs e)
        {
            
            txtmk.Text = "";
            txttendn.Text = "";
            txttendn.Focus();
        }

        private void btnxoa_Click(object sender, EventArgs e)
        {
            
            try
            {
                if (MessageBox.Show("Bạn thực sự muốn xóa ?", "Question ?", MessageBoxButtons.OKCancel, MessageBoxIcon.Warning) == DialogResult.OK)
                {
                    q.Xoansd(dgvHienThi, txttendn.Text);    
                    loadcsdl();
                    MessageBoxEx.Show("Xóa thành công !", "Successfully ....", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }

            }
            catch (Exception ex)
            {

                MessageBoxEx.Show("Lỗi : " + ex.ToString(), "Đã có lỗi ....", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
        }

        private void btncapnhat_Click(object sender, EventArgs e)
        {if (txttendn.Text == "")
            {
                MessageBoxEx.Show("Bạn chưa nhập tên");
                txttendn.Focus();

            }
            else if (txtmk.Text == "")
            {
                MessageBoxEx.Show("Bạn chưa nhập mật khẩu");
                txtmk.Focus();
            }
            else if (txtmk.TextLength < 6)
            {
                MessageBoxEx.Show("Mật khẩu tối thiểu 6 kí tự");
                txtmk.Focus();
            }
      
            else
            {
                try
                {
                    q.Capnhatnsd(dgvHienThi, txttendn.Text, kn.md5(txtmk.Text), cmbquyen.SelectedValue.ToString(), txtmk.Text);
                    loadcsdl();
                    MessageBoxEx.Show("Cập nhật thành công !", "Successfully ....", MessageBoxButtons.OK, MessageBoxIcon.Information);


                }
                catch (Exception ex)
                {

                    MessageBoxEx.Show("Lỗi :" + ex.ToString(), "Đã có lỗi ....", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                }
            }
        }

        private void dgvHienThi_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
           // int dong = dgvHienThi.CurrentCell.RowIndex;
            //cmbquyen.Text = dgvHienThi.Rows[dong].Cells[dong].Value.ToString();

        }

        private void cmbquyen_SelectionChangeCommitted(object sender, EventArgs e)
        {
           // cbb.HTcmbquyen(cmbquyen, cmbquyen.SelectedValue.ToString());
        }

        private void cmbquyen_ValueMemberChanged(object sender, EventArgs e)
        {
            //cmbquyen.Text = "abc";

        }

        private void grpdieukhien_Click(object sender, EventArgs e)
        {

        }

        private void ckbhien_CheckedChanged(object sender, EventArgs e)
        {
            if (ckbhien.Checked == true)
            {
                txtmk.UseSystemPasswordChar = false;
            }
            else
                txtmk.UseSystemPasswordChar = true ;
        }

        private void buttonX4_Click(object sender, EventArgs e)
        {
            Close();
        }
    }
}