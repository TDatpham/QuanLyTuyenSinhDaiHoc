using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevComponents.DotNetBar;

namespace DOAN_QLTUYENSINHDH.FormQuanLy
{
    public partial class FrmDoiMK : DevComponents.DotNetBar.Office2007Form
    {
        public FrmDoiMK()
        {
            InitializeComponent();
        }
        public string taikhoan;
        private void FrmDoiMK_Load(object sender, EventArgs e)
        {
           

        }

        private void buttonX1_Click(object sender, EventArgs e)
        {// kiểm tra giống mật khảu
            if (txtmk.Text == "")
            {
                MessageBoxEx.Show("Chưa nhập mật khẩu .","Thông báo " , MessageBoxButtons.OK, MessageBoxIcon.Warning);
                txtmk.Focus();
            }
            else if (txtmk_lai.Text == "")
            {
                MessageBoxEx.Show("Chưa lại nhập mật khẩu .", "Thông báo ", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                txtmk_lai.Focus();
            }
            
            else if (txtmk.TextLength < 6)
            {
                MessageBoxEx.Show("Mật khẩu phải dài hơn 6 ký tự .", "Thông báo ", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                txtmk.Focus();
            }
           
            else if (txtmk.Text != txtmk_lai.Text)
            {
                MessageBoxEx.Show("Mật khẩu không khớp .", "Thông báo ", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                txtmk_lai.Text = "";
                txtmk.Text= "";
                txtmk.Focus();

            }
            else // cạp nhat lai mat khau
            {
                try
                {
                    Class_HeThong.KetNoi ac = new DOAN_QLTUYENSINHDH.Class_HeThong.KetNoi();
                    ac.thucthi("update dangnhap set matkhau = '" + ac.md5(txtmk.Text) + "', quenmk ='" + txtmk.Text + "' where taikhoan ='" + taikhoan + "'");
                    MessageBoxEx.Show("Đổi mật khẩu thành công.", "Thông báo ", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    Close();
                }
                catch (Exception ex)
                {
                    MessageBoxEx.Show("Lỗi "+ ex.ToString(), "Thông báo ", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                }
            }
        }

        private void buttonX2_Click(object sender, EventArgs e)
        {
            Close();
        }
    }
}