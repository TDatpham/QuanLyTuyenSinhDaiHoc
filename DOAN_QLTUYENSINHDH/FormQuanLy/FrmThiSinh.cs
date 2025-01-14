using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevComponents.DotNetBar;
using DOAN_QLTUYENSINHDH.Class_HeThong;

namespace DOAN_QLTUYENSINHDH.FormQuanLy
{
    public partial class FrmThiSinh : Office2007Form
    {
        public FrmThiSinh()
        {
            InitializeComponent();
        }
        ThiSinh  ac = new ThiSinh ();
        KetNoi kn = new KetNoi();
        HT_Combobox laycmb = new HT_Combobox();

        private void Frm_ThiSinh_Load(object sender, EventArgs e)
        {
           loadcsdl();
          
            // lấy các combobox
            laycmb.HienthiCBDoituong(cmbdoituong);
            laycmb.HienthiCBKhuVuc(cmbkhuvuc);
            //laycmb.HienthiCBNam(cmbnam);
            laycmb.HienthiCBNganh(cmbnganh);
            laycmb.HienthiCBDantoc(cmbdantoc);
            laycmb.HienthiCBTinh(cmbtinh);
            laycmb.HienthiCBHuyen(cmbhuyen, cmbtinh.SelectedValue.ToString());
            // hiện thi lưới kết quả
            

        }
        private void loadcsdl()
        {
           
            kn.HienThiLuoi("Select id,hovaten,ngaysinh,gioitinh, matinh, mahuyen, cmt,hokhau,dt_ut,khuvuc,nganhdk,dantoc, namthi, dcbaotin,namtn from view_hoso where namthi='"+cmbnam.Text +"' order by id", gridhienthi, bdndieukhien);
           
        
        }
        private void grphienthi_Click(object sender, EventArgs e)
        {

        }

        private void grpthongtin_Click(object sender, EventArgs e)
        {

        }
        private void lammoitxt()
        {
            txtten.Text = "";
            txtten.Focus();
            txtdc.Text = "";
            txtnam.Text = "";
            txtdcbaotin.Text = "";
            txtcmt.Text = "";
        }

        public int tuoithisinh_du()
        {
            int namht = DateTime.Now.Year;
            int namdk = dtngaysinh.Value.Year;

            int kq = namht - namdk;
            return kq;
        }
        public int tuoithisinh_qua()
        {
            int namht = DateTime.Now.Year;
            int namdk = dtngaysinh.Value.Year;

            int kq = namht - namdk;
            return kq;
        }
        

        private void buttonX5_Click(object sender, EventArgs e)
        {
            

            if (txtten.TextLength < 10)
            {
                MessageBoxEx.Show("Tên nhập vào không hợp lệ");
                txtten.Focus();

            }
            else if(txtten.Text ==""){
                MessageBoxEx.Show("Bạn chưa nhập tên");
                txtten.Focus();
            }

            else if (tuoithisinh_du() < 18 || tuoithisinh_qua() > 60)
            {

                MessageBoxEx.Show("Ngày sinh nhập vào không hợp lệ");
            }
           
            else
            {
                if (txtnam.Text == "")
                {
                    txtnam.Text = "0";
                }
                if (txtcmt.Text == "")
                {
                    txtcmt.Text = "0";
                }
                // tách họ tên thí sinh
                string hoten = txtten.Text;
                string ten = "", hodem = "";
                // Length : chieu dai chuoi 
                for (int i = hoten.Length - 1; i >= 0; i--)
                {
                    // neu ky tu hien tai la khoang trang 
                    if (hoten[i].ToString() == " ")
                        break;
                    // Nguoc lai 

                    hodem = hoten.Substring(0, i - 1);
                    ten = hoten.Substring(i);

                }
                // tạo mã hồ sơ dạng mã tỉnh + số id - độ dài 6 kí tự
                string matinh = cmbtinh.SelectedValue.ToString();
                //string sql = "SELECT id ,sobd ,'SDK'+'A' + replace(str(row_number() over(order by tents),4),' ','0') as sbd ,hots ,tents ,ngaysinh,diachi , namthi from thisinh";
                // 
                try
                {
                    ac.ThemTS(gridhienthi, hodem, ten, dtngaysinh.Text, cmbgioitinh.SelectedItem.ToString(), int.Parse(matinh), int.Parse(cmbhuyen.SelectedValue.ToString()), int.Parse(txtcmt.Text), txtdc.Text, cmbdantoc.SelectedValue.ToString(), cmbdoituong.SelectedValue.ToString(), cmbkhuvuc.SelectedValue.ToString(), cmbnganh.SelectedValue.ToString(), int.Parse(cmbnam.Text), txtdcbaotin.Text, int.Parse(txtnam.Text));
                   
                    MessageBoxEx.Show("Thêm thành công !", "Successfully ....", MessageBoxButtons.OK, MessageBoxIcon.Information);

                }
                catch (Exception ex)
                {
                    if (ex.Message.Contains("Input string was not in a correct format"))
                    {
                        MessageBoxEx.Show("Nhập vào phải là số!", "Có lỗi xảy ra... ", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    }
                    else

                    MessageBoxEx.Show("Lỗi xảy ra trong quá trình thêm " + ex.ToString(), "Đã có lỗi ....", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                }
                 
                }
        }
        private static bool kiemtraso(string val)
        {
            if (val != "")
                return System.Text.RegularExpressions.Regex.IsMatch(val, @"^[0-9]\d*\.?[0]*$");
            else return true;
        }
        private void cmbtinh_SelectedIndexChanged(object sender, EventArgs e)
        {
            
            laycmb.HienthiCBHuyen(cmbhuyen , cmbtinh.SelectedValue.ToString());
        }
       
        private void buttonX2_Click(object sender, EventArgs e)
        {
            
            if (txtten.TextLength < 10)
            {
                MessageBoxEx.Show("Tên nhập vào không hợp lệ");
                txtten.Focus();
            }
            else if (txtten.Text == "")
            {
                MessageBoxEx.Show("Bạn chưa nhập tên");
                txtten.Focus();
            }
            else if (tuoithisinh_du() < 18 || tuoithisinh_qua() > 60)
            {
               
                MessageBoxEx.Show("Ngày sinh nhập vào không hợp lệ");
            }

            else
            {
                if (txtnam.Text == "")
                {
                    txtnam.Text = "0";
                }
                if (txtcmt.Text == "")
                {
                    txtcmt.Text = "0";
                }
                // tách họ tên thí sinh
                string hoten = txtten.Text;
                string ten = "", hodem = "";
                // Length : chieu dai chuoi 
                for (int i = hoten.Length - 1; i >= 0; i--)
                {
                    // neu ky tu hien tai la khoang trang 
                    if (hoten[i].ToString() == " ")
                        break;
                    // Nguoc lai 

                    hodem = hoten.Substring(0, i - 1);
                    ten = hoten.Substring(i);

                }
                // tạo mã hồ sơ dạng mã tỉnh + số id - độ dài 6 kí tự
                string matinh = cmbtinh.SelectedValue.ToString();
                
                try
                {
                    ac.Capnhatts(gridhienthi, int.Parse(txtid.Text), hodem, ten, dtngaysinh.Text, cmbgioitinh.SelectedItem.ToString(), int.Parse(matinh), int.Parse(cmbhuyen.SelectedValue.ToString()), int.Parse(txtcmt.Text), txtdc.Text, cmbdantoc.SelectedValue.ToString(), cmbdoituong.SelectedValue.ToString(), cmbkhuvuc.SelectedValue.ToString(), cmbnganh.SelectedValue.ToString(), int.Parse(cmbnam.Text ), txtdcbaotin.Text, int.Parse(txtnam.Text));
                    // load lại csdl vào gridview
                    //loadcsdl();
                    MessageBoxEx.Show("Cập nhật thành công !", "Successfully ....", MessageBoxButtons.OK, MessageBoxIcon.Information);


                }
                catch (Exception ex)
                {
                    if (ex.Message.Contains("Input string was not in a correct format"))
                    {
                        MessageBoxEx.Show("Nhập vào phải là số!", "Có lỗi xảy ra... ", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    }
                    else
                    MessageBoxEx.Show("Lỗi xảy ra trong quá trình cập nhật " + ex.ToString(), "Đã có lỗi ....", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                }

            }
        }

        private void gridhienthi_RowEnter(object sender, DataGridViewCellEventArgs e)
        {
            try
            {
                int dong = e.RowIndex;
                txtten.Text = gridhienthi.Rows[dong].Cells["hovaten"].Value.ToString();
                dtngaysinh.Text = gridhienthi.Rows[dong].Cells["ngaysinh"].Value.ToString();
                cmbgioitinh.Text = gridhienthi.Rows[dong].Cells[3].Value.ToString();
                cmbtinh.SelectedValue = gridhienthi.Rows[dong].Cells["matinh"].Value.ToString();
                cmbhuyen.SelectedValue = gridhienthi.Rows[dong].Cells["mahuyen"].Value.ToString();
                txtcmt.Text = gridhienthi.Rows[dong].Cells[6].Value.ToString();
                txtid.Text = gridhienthi.Rows[dong].Cells["id"].Value.ToString();
                txtdc.Text = gridhienthi.Rows[dong].Cells["hokhau"].Value.ToString();
                cmbdantoc.SelectedValue = gridhienthi.Rows[dong].Cells["dantoc"].Value.ToString();
                cmbdoituong.SelectedValue = gridhienthi.Rows[dong].Cells["dt_ut"].Value.ToString();
                cmbkhuvuc.SelectedValue = gridhienthi.Rows[dong].Cells["khuvuc"].Value.ToString();
                cmbnganh.SelectedValue = gridhienthi.Rows[dong].Cells["nganhdk"].Value.ToString();
                cmbnam.SelectedValue = gridhienthi.Rows[dong].Cells[12].Value.ToString();
                txtdcbaotin.Text = gridhienthi.Rows[dong].Cells[13].Value.ToString();
                txtnam.Text = gridhienthi.Rows[dong].Cells[14].Value.ToString();
            }
            catch
            {   }

        }

        private void txtnam_Validating(object sender, CancelEventArgs e)
        {
          
        }
        private void kiemtranam()
        { 
        
        }
        private void txtnam_KeyPress(object sender, KeyPressEventArgs e)
        {
            
                if (!Char.IsNumber(e.KeyChar))
               
                {
                    thongbaoloi1.SetError(this.txtnam, "Bạn phải nhập số");
                }
                else
                    thongbaoloi1.Clear();
           
            

        }

        private void txtcmt_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (!Char.IsNumber(e.KeyChar))
            {
                // e.Handled = true;
                //cóthểthaybằnglệnh e.KeyChar=null;
                //tham khao thêm(Char.IsDigit(e.KeyChar)vàChar.IsControl(e.KeyChar)
                thongbaoloi1.SetError(this.txtcmt, "Bạn phải nhập số");
            }
            else
                thongbaoloi1.SetError(this.txtcmt, "");
        }

        private void buttonX6_Click(object sender, EventArgs e)
        {
            lammoitxt();
        }

        

        private void buttonX4_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void buttonX3_Click(object sender, EventArgs e)
        {
            try
            {
                if (MessageBox.Show("Bạn thực sự muốn xóa ?", "Question ?", MessageBoxButtons.OKCancel, MessageBoxIcon.Warning) == DialogResult.OK)
                {
                    ac.Xoats(gridhienthi, int.Parse(txtid.Text));
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
        private bool kt = false;
        private void cmbtinh_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (e.KeyChar == (int)Keys.Escape)//Nếu người dùng bấm phím Backspace
            {
                cmbtinh.SelectedIndex = -1;
                cmbtinh.Text = "";
                kt = true;
            }
            else if (char.IsControl(e.KeyChar))
            {
                kt = true;
            }
            else kt = false;
        }

        private void cmbtinh_TextChanged(object sender, EventArgs e)
        {
            if (cmbtinh.Text != "" && !kt)
            {
                string s = cmbtinh.Text;
                int Index = cmbtinh.FindString(s);
                if (Index != -1)
                {
                    cmbtinh.SelectedIndex = Index;
                }
                // Chọn (bôi đen) phần text vừa thêm vào để
                // nó có thể được thay thế nếu người dùng kiếp tục gõ
                cmbtinh.SelectionStart = s.Length; //Vị trí bắt đầu bôi đen
                cmbtinh.SelectionLength = cmbtinh.Text.Length - cmbtinh.SelectionStart;// Độ dài phần bôi đen
            }
        }

        

        private void toolStripButton1_Click(object sender, EventArgs e)
        {
            // load lại csdl vào gridview
            loadcsdl();
        }

        private void textBoxX1_TextChanged(object sender, EventArgs e)
        {
            if (textBoxX1.Text == "")
            {
                loadcsdl();
            }
            else
                kn.HienThiLuoi("Select id,hovaten,ngaysinh,gioitinh, matinh, mahuyen, cmt,hokhau,dt_ut,khuvuc,nganhdk,dantoc," +
                "namthi, dcbaotin,namtn from view_hoso where hovaten like N'%" + textBoxX1.Text + "%' and namthi='"+cmbnam.Text+"' order by id", gridhienthi, bdndieukhien);
           
        }

        private void toolStripButton2_Click(object sender, EventArgs e)
        {
            SaveFileDialog save = new SaveFileDialog();
            save.Filter = "Excel files (*.xls)|*.xls|All files (*.*)|*.*";
            MessageBoxEx.Show("Nhập Tên Tập Tin Và Chọn Vị Trí Để Lưu Lại !", "Yêu Cầu ....", MessageBoxButtons.OK, MessageBoxIcon.Information);

            if (save.ShowDialog() == DialogResult.OK)
            {
                // MessageBoxEx.Show("thnhi !", "Yêu Cầu ....", MessageBoxButtons.OK, MessageBoxIcon.Information);

                kn.Excel_Xuat(save.FileName.ToString(), gridhienthi);
            }
        }

        private void toolStripButton3_Click(object sender, EventArgs e)
        {
            OpenFileDialog dlg = new OpenFileDialog();
            dlg.Filter = "Excel files (*.xls)|*.xls|All files (*.*)|*.*";
            MessageBoxEx.Show("Chọn Tập Tin Để Thêm !", "Yêu Cầu ....", MessageBoxButtons.OK, MessageBoxIcon.Information);
            if (dlg.ShowDialog() == DialogResult.OK)
            {
               
                kn.Excel_Nhap(dlg.FileName);

            }
        }

        private void toolStripButton4_Click(object sender, EventArgs e)
        {
            try
            {
                ac.Capnhat_nhieu_Ts(gridhienthi);
                MessageBoxEx.Show("Cập nhật thành công!", "THÔNG BÁO", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
            catch (Exception x)
            {
                MessageBoxEx.Show("Lỗi " + x.ToString(), "THÔNG BÁO", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
        }

        private void gridhienthi_DataError(object sender, DataGridViewDataErrorEventArgs e)
        {
            MessageBoxEx.Show("Lỗi " + e.ToString(), "THÔNG BÁO", MessageBoxButtons.OK, MessageBoxIcon.Warning);
        }

        private void toolStripButton5_Click(object sender, EventArgs e)
        {
            int dong = gridhienthi.SelectedRows.Count;
             if (dong == 0)
            {
                MessageBoxEx.Show("Bạn phải chọn dòng cần xóa", "thông báo ", MessageBoxButtons.OK, MessageBoxIcon.Warning);

            }

            else
            {
                if (MessageBoxEx.Show("Bạn chắc chắn xóa không?", "Delete", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)

                    ac.Xoa_Nhieu_TS(gridhienthi);

                
            }
        }

        private void cmbnam_SelectedIndexChanged(object sender, EventArgs e)
        {
            loadcsdl();
        }

        private void buttonItem2_Click(object sender, EventArgs e)
        {
            loadcsdl();
        }

        private void buttonItem3_Click(object sender, EventArgs e)
        {
            try
            {
                ac.Capnhat_nhieu_Ts(gridhienthi);
                MessageBoxEx.Show("Cập nhật thành công!", "THÔNG BÁO", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
            catch (Exception x)
            {
                MessageBoxEx.Show("Lỗi " + x.ToString(), "THÔNG BÁO", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
        }

        private void buttonItem4_Click(object sender, EventArgs e)
        {
            int dong = gridhienthi.SelectedRows.Count;
            if (dong == 0)
            {
                MessageBoxEx.Show("Bạn phải chọn dòng cần xóa", "thông báo ", MessageBoxButtons.OK, MessageBoxIcon.Warning);

            }

            else
            {
                if (MessageBoxEx.Show("Bạn chắc chắn xóa không?", "Delete", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
                    ac.Xoa_Nhieu_TS(gridhienthi);
            }
        }     
       
    }
}
/*
private void ts_xuatex_Click(object sender, EventArgs e)
        {
            SaveFileDialog save = new SaveFileDialog();
            save.Filter = "Excel files (*.xls)|*.xls|All files (*.*)|*.*";
            MessageBoxEx.Show("Nhập Tên Tập Tin Và Chọn Vị Trí Để Lưu Lại !", "Yêu Cầu ....", MessageBoxButtons.OK, MessageBoxIcon.Information);
               
            if (save.ShowDialog() == DialogResult.OK)
            {
               // MessageBoxEx.Show("thnhi !", "Yêu Cầu ....", MessageBoxButtons.OK, MessageBoxIcon.Information);
               
                kn.Excel_Xuat(save.FileName.ToString(), gridhienthi);
            }
        }

        private void ts_nhapex_Click(object sender, EventArgs e)
        {
            OpenFileDialog dlg = new OpenFileDialog();
            dlg.Filter = "Excel files (*.xls)|*.xls|All files (*.*)|*.*";
            
            if (dlg.ShowDialog() == DialogResult.OK)
            {
                MessageBoxEx.Show("Chọn Tập Tin Để Thêm !", "Yêu Cầu ....", MessageBoxButtons.OK, MessageBoxIcon.Information);
                kn.Excel_Nhap(dlg.FileName);
                
            }
        }
*/