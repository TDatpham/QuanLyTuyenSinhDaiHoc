using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevComponents.DotNetBar;
using System.Net;
using System.Net.Mail;
using System.IO;

namespace DOAN_QLTUYENSINHDH
{
    public partial class FrmMail : Office2007Form
    {
        public FrmMail()
        {
            InitializeComponent();
        }
        public void hienthi(bool val)
        {
            txtmailgui.Enabled = val;
            txtmailnhan.Enabled = val;
            txtmk.Enabled = val;
            txtnoidung.Enabled = val;
            txttieude.Enabled = val;
            buttonX1.Enabled = val;
            buttonX2.Enabled = val;
            buttonX3.Enabled = val;
        }
        public  bool kiemtraketnoi()
        {
            try
            {
                IPHostEntry i = Dns.GetHostEntry("www.google.com");
                return true;
            }
            catch
            {
                return false;
            }
        }
        private void FrmMail_Load(object sender, EventArgs e)
        {
            if (kiemtraketnoi())
            {

                hienthi(true);
            }
            else
            {
                MessageBoxEx.Show("Vui lòng kết nối với internet để sử dụng chức năng này", "Thông báo !", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                hienthi(false);
            }
        }
        public static bool mailhople(string email)
        {
            return System.Text.RegularExpressions.Regex.IsMatch(email, @"^.+\@(\[?)[a-zA-Z0-9\-\.]+\.([a-zA-Z]{2,3}|[0-9]{1,3})(\]?)$");
        }
        private void buttonX1_Click(object sender, EventArgs e)
        {
            if (txtmailgui.Text == "")
            {
                MessageBox.Show("Chưa nhập email người gửi" , "Thông báo !", MessageBoxButtons.OK , MessageBoxIcon.Warning);
                txtmailgui.Focus();
            }
            else if (mailhople(txtmailgui.Text) == false)
            {
                MessageBox.Show("Mail chưa đúng định dạng", "Thông báo !", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                txtmailgui.Text = "";
                txtmailgui.Focus();
            }
            else if (txtmailnhan.Text == "")
            {
                MessageBox.Show("Chưa nhập mail người nhận", "Thông báo !", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                txtmailnhan.Focus();
            }
            else if (mailhople(txtmailnhan.Text) == false)
            {
                MessageBox.Show("Mail chưa đúng định dạng", "Thông báo !", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                txtmailnhan.Text = "";
                txtmailnhan.Focus();
            }
            else if (txtmk.Text == "")
            {
                MessageBox.Show("Chưa nhập mật khẩu ", "Thông báo !", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                txtmk.Focus();
            }
            else if (txttieude.Text == "")
            {
                MessageBox.Show("Chưa nhập tiêu đề ", "Thông báo !", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                txttieude.Focus();
            }
            else if (txtnoidung.Text == "")
            {
                MessageBox.Show("Chưa nhập nội dung ", "Thông báo !", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                txtnoidung.Focus();
            }
            else
            {
                try
                {
                    MailMessage mail = new MailMessage(txtmailgui.Text, txtmailnhan.Text, txttieude.Text, txtnoidung.Text);
                    SmtpClient client = new SmtpClient("smtp.gmail.com");
                    client.Port = 587;
                    client.Credentials = new NetworkCredential(txtmailgui.Text , txtmk.Text);
                    client.EnableSsl = true;
                    if (data != null)
                    {
                        Attachment at = new Attachment(data);
                        mail.Attachments.Add(at);
                    }
                    client.Send(mail);
                    MessageBox.Show("Gửi thành công", "Success !", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
                catch 
                {
                    MessageBox.Show("Vui lòng xem lại email và mật khẩu người gửi", "Failed..", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }

            }
        }

        private void textBoxX5_TextChanged(object sender, EventArgs e)
        {

        }

        private void buttonX2_Click(object sender, EventArgs e)
        {
            txtmailnhan.Text = "";
            txttieude.Text = "";
            txtnoidung.Text = "";
        }
        string data;
        private void buttonX3_Click(object sender, EventArgs e)
        {
            MessageBox.Show("Để gửi nhanh . Vui lòng chọn file có dung lượng nhỏ", "Thông báo..", MessageBoxButtons.OK, MessageBoxIcon.Information);
            OpenFileDialog file = new OpenFileDialog();
            file.Filter = "All file | *.*";
            if (file.ShowDialog() == DialogResult.OK)
            {
                data = file.FileName;
            }

        }
    }
}