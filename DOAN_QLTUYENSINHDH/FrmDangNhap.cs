using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using System.Data.SqlClient;
using DevComponents.DotNetBar;
using DOAN_QLTUYENSINHDH.Class_HeThong;

namespace DOAN_QLTUYENSINHDH
{
    public partial class FrmDangNhap :Office2007Form
    {
        public FrmDangNhap()
        {
            InitializeComponent();
        }
        
        KetNoi ac = new KetNoi();

        private void txtmatkhau_KeyDown_1(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter)
            {
                btndangnhap.PerformClick();
            }
        }

        private void btnhuy_Click(object sender, EventArgs e)
        {
            txttaikhoan.Text = "";
            txtmatkhau.Text = "";
            txttaikhoan.Focus();
        }
        int solan;
       
      
        private void btndangnhap_Click(object sender, EventArgs e)
        {
            try
            {
                if (txttaikhoan.Text == "")
                {
                    MessageBoxEx.Show("Bạn chưa nhập tài khoản", "Có lỗi xảy ra!", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    txttaikhoan.Focus();
                    
                   
                }
                  else if(txtmatkhau.Text == "")
                {
                    MessageBoxEx.Show("Bạn chưa nhập mật khẩu", "Có lỗi xảy ra!", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    txtmatkhau.Focus();

                    }
                
                else
                {
                    //bool ok = ac.DangNhap(txttaikhoan.Text, ac.md5(txtmatkhau.Text));
                   bool ok = ac.DangNhap(txttaikhoan.Text, txtmatkhau.Text);
                   
                    if (ok )
                    {
                        check_nho();
                        MessageBoxEx.Show("Chúc mừng bạn đã đăng nhập thành công!", "Thông Báo", MessageBoxButtons.OK, MessageBoxIcon.Information);

                        FrmMain m = (FrmMain)this.MdiParent;
                        //lấy tên tài khoản để sửa mật khẩu

                        m.taikhoan = txttaikhoan.Text;
                        // end lay tai khoan

                        // Phân quyền quản trị
                        if (ac.LayQuyen(txttaikhoan.Text) == "admin")
                        {
                         
                            m.hienquyen_qtri(true);
                           
                            
                        }
                        else
                        {
                            m.Hienquyenmod(true);
                        }
                        
                        // hiển thị quyền ra label của form Main
                        m.Hienthiquyen(txttaikhoan.Text);

                        // Lịch sử đăng nhập

                        KetNoi kn = new KetNoi();
                        kn.GhiFile("Đã đăng nhập lúc : " + DateTime.Now.ToLongTimeString() + " --- " + DateTime.Now.ToShortDateString() + " tài khoản : " + txttaikhoan.Text + " mật khẩu : " + ac.md5(txtmatkhau.Text));
        
                        this.Close();
                    }
                    else
                    {
                        MessageBox.Show("Tên đăng nhập hoặc mật khẩu không hợp lệ", "Có lỗi xảy ra", MessageBoxButtons.OK, MessageBoxIcon.Error);
                        txttaikhoan.Focus();
                        txttaikhoan.Text = "";
                        txtmatkhau.Text = "";

                        solan = solan + 1;
                    }
                    if (solan == 3)
                    {
                        MessageBoxEx.Show("Bạn đã đăng nhập quá số lần quy định", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                        this.Close();
                    }
                }

            }
            catch (Exception ex)
            {

                MessageBoxEx.Show("Lỗi : " + ex.Message);


            }

        }
        SqlConnection conn;
        public void nhodangnhap()
        {
            conn = ac.laykn();
            conn.Open();
            SqlDataAdapter ad = new SqlDataAdapter("Select taikhoan,quenmk From dangnhap Where trangthai='1'", conn);
            DataTable dt = new DataTable();
            try
            {
                ad.Fill(dt);
                txttaikhoan.Text = dt.Rows[0][0].ToString();
                txtmatkhau.Text = dt.Rows[0][1].ToString();
                conn.Close();
            }
            catch { }
        }
        public void check_nho()
        {
            if (chbnho.Checked == true)
            {
                //nếu check nhớ thì phải update tài khoản hiện tại có trạng thái là 1
                string sql = "update dangnhap set trangthai ='0'";
                ac.thucthi(sql);
                string sql1 = "update dangnhap set trangthai ='1' where taikhoan='"+txttaikhoan.Text+"'";
                ac.thucthi(sql1);
                
            }
            else
            {
                //nếu không check nhớ thì phải update tất cả tài khoản với trạng thái là 0
                string sql = "update dangnhap set trangthai ='0'";
                ac.thucthi(sql);

            }
        }
        private void Frm_DangNhap_Load(object sender, EventArgs e)
        {
            nhodangnhap();
            //txttaikhoan.Focus();
        }

        private void chbnho_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter)
            {
                btndangnhap.PerformClick();
            }
        }

        private void txttaikhoan_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter)
            {
                btndangnhap.PerformClick();
            }
        }
    }
}