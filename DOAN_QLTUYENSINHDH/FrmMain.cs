using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
// thêm thư viện
using DevComponents.DotNetBar;
using DevComponents.DotNetBar.Rendering;
using System.Data.SqlClient;
using DOAN_QLTUYENSINHDH.Class_HeThong;
using DOAN_QLTUYENSINHDH.FormQuanLy;
using DOAN_QLTUYENSINHDH.BaoCao;

namespace DOAN_QLTUYENSINHDH
{
    public partial class FrmMain : Office2007RibbonForm
    {
        public FrmMain()
        {
            InitializeComponent();
        }
        // khai báo form

        FrmCauHinh cauhinh = null;
        FrmDangNhap dangnhap = null;
        FrmTacGia tacgia = null;
        FrmThiSinh thisinh = null;
        FrmNamThi_Cu nam = null;
        FrmTinh tinh = null;
        FrmHuyen huyen = null;
        FrmNguoiDung nsd = null;
        FrmKhuVuc kv = null; 
        FrmDiaDiem dd = null;
        FrmDanhSBD sbd = null; 
        FrmDoiTuong dt = null;
        FrmHenGio hg = null;
        FrmMail mail = null;
        FrmPhach phach = null;
        FrmChiaPhong phongthi = null;
        FrmDiem diem = null;
        FrmDanToc dantoc = null;
        FrmTKThiSinh tkts = null;
        FrmTkDiem diemm = null;
        Rpphongthi rphong = null;
        Rpgiaybaodiem rbaodiem = null;
        Rpgiaybaothi rduthi = null;
        Rpdstrungtuyen rdstt = null;
        Rpgiaytrungtuyen rpgiaytt = null;
        Rpbangdiem rbdiem = null;
        FrmDoiMK doimk = null;
        FrmBoThi bothi = null;
        FrmCauHinh fch = null;
        // gọi lớp
        KetNoi ac = new KetNoi();
        HT_Combobox cbb = new HT_Combobox();
        // lấy tai khoan dang nhap
        public string taikhoan;

        private void Frm_Main_Load(object sender, EventArgs e)
        {
          // dangxuat(false); // ẩn các chức năng khi chưa đăng nhập
            
            // kiểm tra kết nối đến sql server nếu  lỗi thì cấu hình lại
           
            //if (ac.Moketnoi())
            //{
            //}
            //else 
            //{
            //   // Taochuoiketnoi();
            //    MessageBoxEx.Show("Lỗi kết nối đến cơ sở dữ liệu! Xin vui lòng vào Menu -> Cấu Hình để thiết lập.", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);

            //}

            //
            
            //notifyIcon1.Visible = true;
            //this.WindowState = FormWindowState.Maximized; // max form
            //ht.Text = Environment.OSVersion.ToString(); // hiện thông tin máy           
          
            // Load ảnh nền

         //   giaodien(ac.ChonGiaoDien());
           

            // Đăng kí Quick Access Toolbar layout trên regedit

            //Microsoft.Win32.RegistryKey key = Microsoft.Win32.Registry.CurrentUser.OpenSubKey(@"Software\DevComponents\Ribbon");
            //if (key != null)
            //{
            //    try
            //    {
            //        string layout = key.GetValue("RibbonPadCSLayout", "").ToString();
            //        if (layout != "" && layout != null)
            //            ribbonControl1.QatLayout = layout;
            //    }
            //    finally
            //    {
            //        key.Close();
            //    }
            //} // hết lệnh đăng kí Quick Access Toolbar layout
           
          

        }
        
        public void Taochuoiketnoi()
        {
            MessageBoxEx.Show("Lỗi kết nối đến cơ sở dữ liệu! Xin vui lòng thiết lập lại kết nối...", "ERROR",MessageBoxButtons.OK, MessageBoxIcon.Error);

            if (cauhinh == null || cauhinh.IsDisposed)
                cauhinh = new FrmCauHinh();
                cauhinh.ShowDialog();
            
        }
        private void timer1_Tick(object sender, EventArgs e)
        {
            time.Text = DateTime.Now.ToLongTimeString() + " : " + DateTime.Now.ToLongDateString();
       
        }
        public static string s = "Chương Trình Quản Lý Điểm Tuyển Sinh Trường Đại Học Sư Phạm Kỹ Thuật Nam Định          ";
        private void timer2_Tick(object sender, EventArgs e)
        {
            toolStripTextBox1.Text = s;

            string tam = s[0].ToString();
            s = s.Substring(1, s.Length - 1) + tam;
        }

        private void Frm_Main_FormClosing(object sender, FormClosingEventArgs e)
        {
            
            // Lưu  Quick Access Toolbar layout nếu có thay đổi ...
            if (ribbonControl1.QatLayoutChanged)
            {
                Microsoft.Win32.RegistryKey key = Microsoft.Win32.Registry.CurrentUser.CreateSubKey(@"Software\DevComponents\Ribbon");
                try
                {
                    key.SetValue("RibbonPadCSLayout", ribbonControl1.QatLayout);
                }
                finally
                {
                    key.Close();
                }
            }                         

        }

        private void buttonItem4_Click(object sender, EventArgs e)
        {
            if (MessageBoxEx.Show("Bạn có muốn truy cập trang chủ ngay bây giờ???", "Truy cập trang chủ", MessageBoxButtons.OKCancel, MessageBoxIcon.Information) == DialogResult.OK)
            {
                System.Diagnostics.Process.Start("http://vannamit.info");
            }
        }

     
        private void buttonItem17_Click(object sender, EventArgs e)
        {

            if (tacgia  == null || tacgia.IsDisposed)
            {
                tacgia  = new FrmTacGia();
                tacgia.MdiParent = this;
                tacgia.Show();
            }
            else
                tacgia.Activate();
        }

        private void buttonItem19_Click(object sender, EventArgs e)
        {
            if (thisinh == null || thisinh.IsDisposed)
            {
                thisinh = new FrmThiSinh();
                thisinh.MdiParent = this;
                thisinh.Show();
            }
            else
                thisinh.Activate();
        }

        private void hiệnChươngTrìnhToolStripMenuItem_Click(object sender, EventArgs e)
        {
            this.Show();
            WindowState = FormWindowState.Maximized;
        }

        private void exitToolStripMenuItem1_Click(object sender, EventArgs e)
        {
            if (MessageBoxEx.Show("Bạn thực sự  muốn thoát???", "Thông Báo", MessageBoxButtons.OKCancel, MessageBoxIcon.Information) == DialogResult.OK)
            {
                this.Hide();
                FrmThoat by = new FrmThoat();
                by.Show();

            }
        }

        private void thôngTinTácGiảToolStripMenuItem_Click(object sender, EventArgs e)
        {
            this.Show();
            WindowState = FormWindowState.Maximized;

            if (tacgia == null || tacgia.IsDisposed)
            {
                tacgia = new FrmTacGia();
                tacgia.MdiParent = this;
                tacgia.Show();
            }
            else
                tacgia.Activate();
        }

        private void buttonItem5_Click(object sender, EventArgs e)
        {
            dangxuat(false);
        }

        private void office2007StartButton1_Click(object sender, EventArgs e)
        {

        }

        private void toolStripLabel2_Click(object sender, EventArgs e)
        {

            if (tacgia == null || tacgia.IsDisposed)
            {
                tacgia = new FrmTacGia();
                tacgia.MdiParent = this;
                tacgia.Show();
            }
            else
                tacgia.Activate();
        }
        public void hienquyen_qtri(bool dieukien)
        {
           // btncauhinh.Enabled = true;
            btndangnhap.Enabled = false;
            btndangxuat.Enabled = true;
           //quyền adminstrator
            btndanhsbd.Enabled = dieukien;
            btnngsd.Enabled = dieukien;
            btnphuchoi.Enabled = dieukien;
            btnsaoluu.Enabled = dieukien;
            btndanhphach.Enabled = dieukien;
            btnxepphong.Enabled = dieukien;
            btnbothi.Enabled = dieukien;
            btndoimk.Enabled = dieukien;
            // nhap danh muc
            btntinh.Enabled = dieukien;
            btnhuyen.Enabled = dieukien;
            btnkhuvuc.Enabled = dieukien;
            btndantoc.Enabled = dieukien;
            btndiadiem.Enabled = dieukien;
            btndoituong.Enabled = dieukien;
            //  nhap ts + diem
            btnqlts.Enabled = dieukien;
            btndiem.Enabled = dieukien;
            btntkts.Enabled = dieukien;
            btntkdiem.Enabled = dieukien;
            // bao cao
            btngiaybaodiem.Enabled = dieukien;
            btndstrung.Enabled = dieukien;
            btndsphongthi.Enabled = dieukien;
            btngiaybaothi.Enabled = dieukien;
            btngiaytrungtuyen.Enabled = dieukien;
            btnbangdiem.Enabled = dieukien;
        }

        public void Hienquyenmod(bool dieukien)
        {
           // btncauhinh.Enabled = true;
            btndangnhap.Enabled = false;
            btndangxuat.Enabled = true;
            // nhap danh muc
            btntinh.Enabled = dieukien;
            btnhuyen.Enabled = dieukien;
            btnkhuvuc.Enabled = dieukien;
            btndantoc.Enabled = dieukien;
           
            btndoimk.Enabled = dieukien;
            btndoituong.Enabled = dieukien;
            //  nhap ts + diem
            btnqlts.Enabled = dieukien;
            btndiem.Enabled = dieukien;
            btntkts.Enabled = dieukien;
            btntkdiem.Enabled = dieukien;
            // bao cao
            btngiaybaodiem.Enabled = dieukien;
            btndstrung.Enabled = dieukien;
            btndsphongthi.Enabled = dieukien;
            btngiaybaothi.Enabled = dieukien;
            btngiaytrungtuyen.Enabled = dieukien;
            btnbangdiem.Enabled = dieukien;
        
        }
        public void dangxuat(bool dieukien)
        {
            lblquyen.Text = "Welcome!";
            btndangnhap.Enabled = true;
            btndangxuat.Enabled = false;
           // btncauhinh.Enabled = false;
            //quyền adminstrator
            btndanhsbd.Enabled = dieukien;
            btnngsd.Enabled = dieukien;
            btnphuchoi.Enabled = dieukien;
            btnsaoluu.Enabled = dieukien;
            btndanhphach.Enabled = dieukien;
            btnxepphong.Enabled = dieukien;
            btnbangdiem.Enabled = dieukien;
            btndoimk.Enabled = dieukien;
            btnbothi.Enabled = dieukien;
            // nhap danh muc
            btntinh.Enabled = dieukien;
            btnhuyen.Enabled = dieukien;
            btnkhuvuc.Enabled = dieukien;
            btndantoc.Enabled = dieukien;
            btndiadiem.Enabled = dieukien;
            btndoituong.Enabled = dieukien;
            //  nhap ts + diem
            btnqlts.Enabled = dieukien;
            btndiem.Enabled = dieukien;
            btntkts.Enabled = dieukien;
            btntkdiem.Enabled = dieukien;
            // bao cao
            btngiaybaodiem.Enabled = dieukien;
            btndstrung.Enabled = dieukien;
            btndsphongthi.Enabled = dieukien;
            btngiaybaothi.Enabled = dieukien;
            btngiaytrungtuyen.Enabled = dieukien;
            btnbangdiem.Enabled = dieukien;
        
        
        }
        public string Hienthiquyen(string quyendn)
        {

            lbltk.Text = taikhoan;
            quyendn = ac.Laytenquyen(quyendn);
            lblquyen.Text = "Bạn đang đăng nhập với quyền : " + quyendn;
            return quyendn;          

        }       
       
        private void Frm_Main_Resize(object sender, EventArgs e)
        {
            if (FormWindowState.Minimized == this.WindowState)


                this.Hide();
        }

        private void notifyIcon1_DoubleClick(object sender, EventArgs e)
        {
            this.Show();
            WindowState = FormWindowState.Maximized;
        }
      
        private void buttonItem13_Click(object sender, EventArgs e)
        {
            if (dangnhap == null || dangnhap.IsDisposed)
            {
                dangnhap = new FrmDangNhap();
                dangnhap.MdiParent = this;
                dangnhap.Show();
            }
            else
                dangnhap.Activate ();

        }

        private void buttonItem44_Click(object sender, EventArgs e)
        {
            foreach (Form mdiForm in this.MdiChildren)
                mdiForm.Close();
        }

        private void buttonItem37_Click(object sender, EventArgs e)
        {

        }

        private void buttonItem21_Click(object sender, EventArgs e)
        {
            if (backupDialog.ShowDialog() == DialogResult.OK)
            {
              
                ac.Saoluucsdl(backupDialog.FileName.ToString());
              }
            else
                return;
        }

        private void buttonItem2_Click(object sender, EventArgs e)
        {
            if (restoreDialog.ShowDialog() == DialogResult.OK)
            {
                ac.PhucHoicsdl(restoreDialog.FileName.ToString());
            }
            else
                return;
        }
        private void giaodien(int chon)
        {
           
            switch (chon)
            {
                case  0 : // win 8
                    try
                    {
                        this.BackgroundImage = ((Image.FromFile(Application.StartupPath + "\\anhnen/win8.jpg")));
                        this.BackgroundImageLayout = ImageLayout.Stretch;
                        ribbonControl1.Office2007ColorTable = eOffice2007ColorScheme.Blue;
                        toolStrip1.BackColor = Color.DeepSkyBlue;
                    }
                    catch
                    {
                        MessageBoxEx.Show("Không tìm thấy hình ảnh", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    }
            break;
                case 1 : // vista
                    try
                    {
                        this.BackgroundImage = ((Image.FromFile(Application.StartupPath + "\\anhnen/vista.jpeg")));
                        this.BackgroundImageLayout = ImageLayout.Stretch;
                        ribbonControl1.Office2007ColorTable = eOffice2007ColorScheme.VistaGlass;
                        toolStrip1.BackColor = Color.LimeGreen;
                    }
                    catch
                    {
                        MessageBoxEx.Show("Không tìm thấy hình ảnh", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    }
                    break;
                case 2 : // valentine
                    try
                    {
                        this.BackgroundImage = ((Image.FromFile(Application.StartupPath + "\\anhnen/valentine.jpg")));
                        this.BackgroundImageLayout = ImageLayout.Stretch;
                        ribbonControl1.Office2007ColorTable = eOffice2007ColorScheme.Silver;
                        toolStrip1.BackColor = Color.Pink;
                    }
                    catch
                    {
                        MessageBoxEx.Show("Không tìm thấy hình ảnh", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    } 
                    break;
                case 3 :// book
                    try
                    {
                        this.BackgroundImage = ((Image.FromFile(Application.StartupPath + "\\anhnen/book.jpg")));
                        this.BackgroundImageLayout = ImageLayout.Stretch;
                        ribbonControl1.Office2007ColorTable = eOffice2007ColorScheme.Silver;

                        toolStrip1.BackColor = Color.Gold;
                    }
                    catch
                    {
                        MessageBoxEx.Show("Không tìm thấy hình ảnh", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    } 
                    break;
                case 4 : // phong cảnh
                    try
                    {
                        this.BackgroundImage = ((Image.FromFile(Application.StartupPath + "\\anhnen/pc.png")));
                        this.BackgroundImageLayout = ImageLayout.Stretch;
                        ribbonControl1.Office2007ColorTable = eOffice2007ColorScheme.Blue;
                        toolStrip1.BackColor = Color.DeepSkyBlue;
                    }
                    catch
                    {
                        MessageBoxEx.Show("Không tìm thấy hình ảnh", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    } 
                    break;
                case 5:
                    {
                        this.BackgroundImage = null;
                        this.BackColor = Color.SkyBlue;
                        this.BackgroundImageLayout = ImageLayout.Stretch;
                        ribbonControl1.Office2007ColorTable = eOffice2007ColorScheme.Blue;
                        toolStrip1.BackColor = Color.DeepSkyBlue;
                        break;
                    }
                default : 
                    chon = 5;
                    break;                

            }// end

        }
       
        private void buttonItem34_Click(object sender, EventArgs e)
        {
            try
            {
                this.BackgroundImage = ((Image.FromFile(Application.StartupPath + "\\anhnen/win8.jpg")));
                this.BackgroundImageLayout = ImageLayout.Stretch;
                ribbonControl1.Office2007ColorTable = eOffice2007ColorScheme.Blue;
                toolStrip1.BackColor = Color.DeepSkyBlue;
            }
            catch
            {
                MessageBoxEx.Show("Không tìm thấy hình ảnh", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
            // update giao diện vào csdl
            ac.thucthi("update giaodien set chon='0'");
        }

        private void buttonItem40_Click(object sender, EventArgs e)
        {
            try
            {
                this.BackgroundImage = ((Image.FromFile(Application.StartupPath + "\\anhnen/vista.jpeg")));
                this.BackgroundImageLayout = ImageLayout.Stretch;
                ribbonControl1.Office2007ColorTable = eOffice2007ColorScheme.VistaGlass;
                toolStrip1.BackColor = Color.LimeGreen;
            }
            catch
            {
                MessageBoxEx.Show("Không tìm thấy hình ảnh", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
            // update giao diện vào csdl
            ac.thucthi("update giaodien set chon='1'");
        }

        private void buttonItem36_Click(object sender, EventArgs e)
        {
            try
            {
                this.BackgroundImage = ((Image.FromFile(Application.StartupPath + "\\anhnen/valentine.jpg")));
                this.BackgroundImageLayout = ImageLayout.Stretch;
                ribbonControl1.Office2007ColorTable = eOffice2007ColorScheme.Silver;
                toolStrip1.BackColor = Color.Pink;
            }
            catch
            {
                MessageBoxEx.Show("Không tìm thấy hình ảnh", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
            // update giao diện vào csdl
            ac.thucthi("update giaodien set chon='2'");
        }

        private void buttonItem43_Click(object sender, EventArgs e)
        {
            try
            {
                this.BackgroundImage = ((Image.FromFile(Application.StartupPath + "\\anhnen/book.jpg")));
                this.BackgroundImageLayout = ImageLayout.Stretch;
                ribbonControl1.Office2007ColorTable = eOffice2007ColorScheme.Silver;

                toolStrip1.BackColor = Color.Gold;
            }
            catch
            {
                MessageBoxEx.Show("Không tìm thấy hình ảnh", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
            // update giao diện vào csdl
            ac.thucthi("update giaodien set chon='3'");
        }

        private void buttonItem52_Click(object sender, EventArgs e)
        {
            try
            {
                this.BackgroundImage = ((Image.FromFile(Application.StartupPath + "\\anhnen/pc.png")));
                this.BackgroundImageLayout = ImageLayout.Stretch;
                ribbonControl1.Office2007ColorTable = eOffice2007ColorScheme.Blue;
                toolStrip1.BackColor = Color.DeepSkyBlue;
            }
            catch {
                MessageBoxEx.Show("Không tìm thấy hình ảnh","Thông báo", MessageBoxButtons.OK,MessageBoxIcon.Warning);
            }
            // update giao diện vào csdl
            ac.thucthi("update giaodien set chon='4'");
        }

        private void ht_Click(object sender, EventArgs e)
        {
            System.Diagnostics.Process.Start("dxdiag");
        }

        private void buttonItem31_Click(object sender, EventArgs e)
        {
            if (nam  == null || nam.IsDisposed)
            {
                nam  = new FrmNamThi_Cu();
                nam.MdiParent = this;
                nam.Show();
            }
            else
                nam.Activate();
        }

        private void ribbonBar14_ItemClick(object sender, EventArgs e)
        {

        }

        private void ribbonControl1_Click(object sender, EventArgs e)
        {
            
        }

        private void buttonItem28_Click(object sender, EventArgs e)
        {
            if (tinh == null || tinh.IsDisposed)
            {
                tinh = new FrmTinh();
                tinh.MdiParent = this;
                tinh.Show();
            }
            else
            tinh.Activate();
        }
        
        private void buttonItem30_Click(object sender, EventArgs e)
        {
            if (huyen == null || huyen.IsDisposed)
            {
                huyen = new FrmHuyen();
                huyen.MdiParent = this;
                huyen.Show();
            }
            else
                huyen.Activate();
        }

        private void restoreDialog_FileOk(object sender, CancelEventArgs e)
        {

        }

      

        private void btnngsd_Click(object sender, EventArgs e)
        {
            if (nsd == null || nsd.IsDisposed )
            {
                nsd = new FrmNguoiDung();
                nsd.MdiParent = this;
                nsd.Show();
            }
            else
                nsd.Activate();

        }
        private void buttonItem14_Click(object sender, EventArgs e)
        {
            if (hg == null || hg.IsDisposed)
            {
                 hg = new FrmHenGio();
                 hg.MdiParent = this;
                hg.Show();
            }
            hg.Activate();
        }

        private void buttonItem16_Click(object sender, EventArgs e)
        {

            if (mail == null || mail.IsDisposed)
            {
                mail = new FrmMail();
                mail.MdiParent = this;
                mail.Show();
            }
            mail.Activate();
        }
       
        private void btndanhsbd_Click(object sender, EventArgs e)
        {
            if (sbd == null || sbd.IsDisposed)
            {
                sbd = new FrmDanhSBD();
                sbd.MdiParent = this;
                sbd.Show();
            }
            sbd.Activate();
        }

        private void buttonItem21_Click_1(object sender, EventArgs e)
        {

        }

        private void tabqlsv_Click(object sender, EventArgs e)
        {

        }
        
        private void buttonItem31_Click_1(object sender, EventArgs e)
        {
            if (kv == null || kv.IsDisposed)
            {
                kv  = new FrmKhuVuc ();
                kv.MdiParent = this;
                kv.Show();
            }
            kv.Activate();

        }
        
        private void buttonItem27_Click(object sender, EventArgs e)
        {
            if (dt == null || dt.IsDisposed)
            {
                dt = new FrmDoiTuong();
                dt.MdiParent = this;
                dt.Show();
            }
            dt.Activate();

        }
       
        private void buttonItem29_Click(object sender, EventArgs e)
        {

        }

        private void buttonItem18_Click(object sender, EventArgs e)
        {
            if (MessageBoxEx.Show("Bạn thực sự  muốn thoát???", "Thông Báo", MessageBoxButtons.OKCancel, MessageBoxIcon.Information) == DialogResult.OK)
            {
                this.Hide();
                FrmThoat by = new FrmThoat();
                by.Show();

            }

        }
        
        private void buttonItem10_Click(object sender, EventArgs e)
        {
            if (rpgiaytt == null || rpgiaytt.IsDisposed)
            {
                rpgiaytt = new Rpgiaytrungtuyen();
                rpgiaytt.MdiParent = this;
                rpgiaytt.Show();
            }
            rpgiaytt.Activate();
        }

        private void buttonItem2_Click_1(object sender, EventArgs e)
        {
            if (dantoc == null || dantoc.IsDisposed)
            {
                dantoc = new FrmDanToc();
                dantoc.MdiParent = this;
                dantoc.Show();
            }
            dantoc.Activate();
        }

       
        
        private void btnxepphong_Click(object sender, EventArgs e)
        {
            if (phongthi == null || phongthi.IsDisposed)
            {
                phongthi = new FrmChiaPhong();
                phongthi.MdiParent = this;
                phongthi.Show();
            }
            phongthi.Activate();
        }

        private void btndanhphach_Click(object sender, EventArgs e)
        {
            if (phach  == null || phach.IsDisposed)
            {
                 phach = new FrmPhach ();
                phach.MdiParent = this;
                phach.Show();
            }
            phach.Activate();
        }

        private void btndiem_Click(object sender, EventArgs e)
        {
            if (diem == null || diem.IsDisposed)
            {
                diem = new FrmDiem();
                diem.MdiParent = this;
                diem.Show();
            }
            diem.Activate();

        }
       
        private void btntkts_Click(object sender, EventArgs e)
        {
            if (tkts == null || tkts.IsDisposed)
            {
                tkts = new FrmTKThiSinh();
                tkts.MdiParent = this;
                tkts.Show();
            }
            tkts.Activate();
        }

        private void ribbonTabItem4_Click(object sender, EventArgs e)
        {

        }
        
        private void labelItem2_Click(object sender, EventArgs e)
        {
           

        }

        private void tabqldiem_Click(object sender, EventArgs e)
        {

        }

        private void btntkdiem_Click(object sender, EventArgs e)
        {
            if (diemm == null || diemm.IsDisposed)
            {
                diemm = new FrmTkDiem();
                diemm.MdiParent = this;
                diemm.Show();
            }
            diemm.Activate();
        }

        private void ribbonBar7_ItemClick(object sender, EventArgs e)
        {

        }

        private void toolStripMenuItem3_Click(object sender, EventArgs e)
        {
            if (MessageBoxEx.Show("Bạn thực sự  muốn thoát???", "Thông Báo", MessageBoxButtons.OKCancel, MessageBoxIcon.Information) == DialogResult.OK)
            {
                this.Hide();
                FrmThoat by = new FrmThoat();
                by.Show();

            }

        }

        private void toolStripMenuItem2_Click(object sender, EventArgs e)
        {
            if (tacgia == null || tacgia.IsDisposed)
            {
                tacgia = new FrmTacGia();
                tacgia.MdiParent = this;
                tacgia.Show();
            }
            else
                tacgia.Activate();
        }

        private void toolStripMenuItem1_Click(object sender, EventArgs e)
        {
           
                this.Hide();
        }

        private void btndsphongthi_Click(object sender, EventArgs e)
        {
            if (rphong == null || rphong.IsDisposed)
            {
                rphong = new Rpphongthi();
                rphong.MdiParent = this;
                rphong.Show();
            }
            rphong.Activate();
        }
        
        private void btngiaybaothi_Click(object sender, EventArgs e)
        {
            if (rduthi == null || rduthi.IsDisposed)
            {
                rduthi = new Rpgiaybaothi();
                rduthi.MdiParent = this;
                rduthi.Show();
            }
            rduthi.Activate();
        }
        
        private void btngiaybaodiem_Click(object sender, EventArgs e)
        {
            if (rbaodiem == null || rbaodiem.IsDisposed)
            {
                rbaodiem = new Rpgiaybaodiem();
                rbaodiem.MdiParent = this;
                rbaodiem.Show();
            }
            rbaodiem.Activate();

        }

        private void btndstrung_Click(object sender, EventArgs e)
        {
            if (rdstt == null || rdstt.IsDisposed)
            {
                rdstt = new Rpdstrungtuyen();
                rdstt.MdiParent = this;
                rdstt.Show();
            }
            rdstt.Activate();
        }

        private void buttonItem6_Click(object sender, EventArgs e)
        {
            FrmHuongDan hd = new FrmHuongDan();
            hd.Show();
        }
        
        private void btnbangdiem_Click(object sender, EventArgs e)
        {
            if (rbdiem == null || rbdiem.IsDisposed)
            {
                rbdiem = new Rpbangdiem();
                rbdiem.MdiParent = this;
                rbdiem.Show();
            }
            rbdiem.Activate();
        }

        private void ribbonTabItem1_Click(object sender, EventArgs e)
        {

        }

        private void tabqlquantri_Click(object sender, EventArgs e)
        {

        }

        private void btndiadiem_Click(object sender, EventArgs e)
        {
            if (dd == null || dd.IsDisposed)
            {
                dd = new FrmDiaDiem();
                dd.MdiParent = this;
                dd.Show();
            }
            dd.Activate();

        }

        private void btndoimk_Click(object sender, EventArgs e)
        {
            if (doimk == null || doimk.IsDisposed)
            {
                doimk = new FrmDoiMK();
                doimk.MdiParent = this;
                doimk.taikhoan = lbltk.Text;
                doimk.Show();
            }
            doimk.Activate();
        }

        private void btnbothi_Click(object sender, EventArgs e)
        {
            if (bothi == null || bothi.IsDisposed)
            {
                bothi = new FrmBoThi();
                bothi.MdiParent = this;
               
                bothi.Show();
            }
            bothi.Activate();
        }

        private void buttonItem2_Click_2(object sender, EventArgs e)
        {
            
            this.BackgroundImage = null;
            this.BackColor = Color.SkyBlue;
            this.BackgroundImageLayout = ImageLayout.Stretch;
            ribbonControl1.Office2007ColorTable = eOffice2007ColorScheme.Blue;
            toolStrip1.BackColor = Color.DeepSkyBlue;
        
            // update giao diện vào csdl
            ac.thucthi("update giaodien set chon='5'");
        }
       
        private void btncauhinh_Click(object sender, EventArgs e)
        {
            if (fch == null || fch.IsDisposed)
            {
                fch = new FrmCauHinh();
                fch.MdiParent = this;

                fch.Show();
            }
            fch.Activate();

        }

            
               
    }
}