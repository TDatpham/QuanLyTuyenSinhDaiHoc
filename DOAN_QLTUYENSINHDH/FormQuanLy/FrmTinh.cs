using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
// thư viện thêm
using DevComponents.DotNetBar;
using System.Data.SqlClient;
using DOAN_QLTUYENSINHDH.Class_HeThong;

namespace DOAN_QLTUYENSINHDH.FormQuanLy
{
    public partial class FrmTinh : Office2007Form
    {
        public FrmTinh()
        {
            InitializeComponent();
        }// khai báo 
        KetNoi kn = new KetNoi();

        SqlConnection con;
        SqlDataAdapter da;
        DataTable dt = new DataTable();
        BindingSource bs = new BindingSource();
        private void loadcsdl() {
            con = kn.laykn();
            con.Open();
            da = new SqlDataAdapter("select * from tinh", con);
          try{
            da.Fill(dt);

            dgvHienThi.DataSource = dt;

            // Ràng buộc dữ liệu vào BindingSource 
            bs.DataSource = dt;

            // Gán nguồn dữ liệu cho DataGridView 
            dgvHienThi.DataSource = bs;
            // gán nguồn dữ liệu cho bindingsource
            bdndieukhien.BindingSource = bs;
        }
        catch { }
        }

        private void FrmTinh_Load(object sender, EventArgs e)
        {
            loadcsdl();
            
        }
       
        private void toolStripButton1_Click(object sender, EventArgs e)
        {
            
            try
            {
                if (MessageBox.Show("Bạn muốn lưu lại những thông tin vừa thay đổi?", "Question ?", MessageBoxButtons.OKCancel, MessageBoxIcon.Warning) == DialogResult.OK)
                {
                    dgvHienThi.DataSource = dt;
                    dt = (DataTable)dgvHienThi.DataSource;
                    SqlCommandBuilder cmd = new SqlCommandBuilder(da);
                    da.Update(dt);

                    MessageBoxEx.Show("Lưu Lại thành công", "Thông báo ", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
                }
                catch (Exception ex)
                {
                    if (ex.Message.Contains("Cannot insert duplicate key"))
                 {
                     MessageBoxEx.Show("Mã tỉnh đã tồn tại!", "Có lỗi xảy ra... ", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                 }
                 else if (ex.Message.Contains("Cannot insert the value NULL"))
                 {
                     MessageBoxEx.Show("Mã tỉnh không được bỏ trống!", "Có lỗi xảy ra... ", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                 }
                    else
                    MessageBoxEx.Show("Lỗi : " + ex.Message, "Có lỗi xảy ra... ", MessageBoxButtons.OK, MessageBoxIcon.Warning);

                }
                
        }

        private void bindingNavigatorMoveFirstItem_Click(object sender, EventArgs e)
        {
            dgvHienThi.DataSource = bs;
        }

        private void bindingNavigatorMovePreviousItem_Click(object sender, EventArgs e)
        {
            dgvHienThi.DataSource = bs;
        }

        private void bindingNavigatorMoveNextItem_Click(object sender, EventArgs e)
        {
            dgvHienThi.DataSource = bs;
        }

        private void bindingNavigatorMoveLastItem_Click(object sender, EventArgs e)
        {
            dgvHienThi.DataSource = bs;
        }

        private void bindingNavigatorAddNewItem_Click(object sender, EventArgs e)
        {
            dgvHienThi.DataSource = bs;
        }

       

        private void toolStripButton2_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void dgvHienThi_DataError(object sender, DataGridViewDataErrorEventArgs e)
        {
            MessageBoxEx.Show("Dữ liệu nhập vào phải là số nguyên", " Cảnh báo!", MessageBoxButtons.OK, MessageBoxIcon.Warning);
     
        }

        private void toolStripButton3_Click(object sender, EventArgs e)
        {
           dgvHienThi.DataSource = bs;
            foreach (DataGridViewRow row in dgvHienThi.SelectedRows)
                {
                    if (!row.IsNewRow)
                    {
                        
                            string ma = dgvHienThi.Rows[row.Index].Cells[0].Value.ToString();
                           bool ok =  kn.kiemtrakhoangoai("select * from huyen where matinh='"+ma+"'");
                           if (ok)
                           {
                               if (MessageBox.Show("Đây là khóa ngoại của bảng khác Nếu xóa sẽ mất hết thông tin về giá trị này! \n Bạn Thực sự muốn xóa ????", "Lưu ý : Không thể khôi phục lại dữ liệu sau khi xóa!", MessageBoxButtons.YesNo, MessageBoxIcon.Warning) == DialogResult.Yes)
                               { 
                                    dgvHienThi.Rows.Remove(row);
                               } 
                                  
                           }
                           else
                               dgvHienThi.Rows.Remove(row);  
                        
                    }
                
            }
        }

       

        private void buttonItem26_Click_1(object sender, EventArgs e)
        {
            dgvHienThi.DataSource = bs;
            bdndieukhien.BindingSource.AddNew();

        }

        private void buttonItem29_Click(object sender, EventArgs e)
        {
            dgvHienThi.DataSource = bs;
            foreach (DataGridViewRow row in dgvHienThi.SelectedRows)
            {
                if (!row.IsNewRow)
                {

                    string ma = dgvHienThi.Rows[row.Index].Cells[0].Value.ToString();
                    bool ok = kn.kiemtrakhoangoai("select * from huyen where matinh='" + ma + "'");
                    if (ok)
                    {
                        if (MessageBox.Show("Đây là khóa ngoại của bảng khác Nếu xóa sẽ mất hết thông tin về giá trị này! \n Bạn Thực sự muốn xóa ????", "Lưu ý : Không thể khôi phục lại dữ liệu sau khi xóa!", MessageBoxButtons.YesNo, MessageBoxIcon.Warning) == DialogResult.Yes)
                        {
                            dgvHienThi.Rows.Remove(row);
                        }

                    }
                    else
                        dgvHienThi.Rows.Remove(row);

                }

            }
        }

        private void buttonItem30_Click(object sender, EventArgs e)
        {
            try
            {
                dgvHienThi.DataSource = dt;
                dt = (DataTable)dgvHienThi.DataSource;
                SqlCommandBuilder cmd = new SqlCommandBuilder(da);
                da.Update(dt);

                MessageBoxEx.Show("Lưu Lại thành công", "Thông báo ", MessageBoxButtons.OK, MessageBoxIcon.Information);

            }
            catch (Exception ex)
            {
                if (ex.Message.Contains("Cannot insert duplicate key"))
                {
                    MessageBoxEx.Show("Mã tỉnh đã tồn tại!", "Có lỗi xảy ra... ", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                }
                else if (ex.Message.Contains("Cannot insert the value NULL"))
                {
                    MessageBoxEx.Show("Mã tỉnh không được bỏ trống!", "Có lỗi xảy ra... ", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                }
                else
                    MessageBoxEx.Show("Lỗi : " + ex.Message, "Có lỗi xảy ra... ", MessageBoxButtons.OK, MessageBoxIcon.Warning);

            }
        }

        private void buttonItem32_Click(object sender, EventArgs e)
        {
            Close();
        }
    }
}