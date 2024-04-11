using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace DOAN_QLTUYENSINHDH
{
    public partial class FrmHuongDan : DevComponents.DotNetBar.Office2007Form
    {
        public FrmHuongDan()
        {
            InitializeComponent();
        }

        private void FrmHuongDan_Load(object sender, EventArgs e)
        {
            try
            {
                webBrowser1.Navigate(Application.StartupPath + "\\trogiup/gioithieu.html");
            }
            catch
            {
                MessageBox.Show("Không tìm thấy tập tin");
            }

        }

        private void linkLabel4_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            try
            {
                webBrowser1.Navigate(Application.StartupPath + "\\trogiup/gioithieu.html");
            }
            catch
            {
                MessageBox.Show("Không tìm thấy tập tin");
            }
        }

        private void linkLabel1_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            try
            {
                webBrowser1.Navigate(Application.StartupPath + "\\trogiup/thisinh.html");
            }
            catch
            {
                MessageBox.Show("Không tìm thấy tập tin");
            }
        }

        private void linkLabel2_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            try
            {
                webBrowser1.Navigate(Application.StartupPath + "\\trogiup/diem.html");
            }
            catch
            {
                MessageBox.Show("Không tìm thấy tập tin");
            }
        }

        private void linkLabel3_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            try
            {
                webBrowser1.Navigate(Application.StartupPath + "\\trogiup/danhmuc.html");
            }
            catch
            {
                MessageBox.Show("Không tìm thấy tập tin");
            }
        }

        private void linkLabel5_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            try
            {
                webBrowser1.Navigate(Application.StartupPath + "\\trogiup/nangcao.html");
            }
            catch
            {
                MessageBox.Show("Không tìm thấy tập tin");
            }
        }

        private void linkLabel6_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            try
            {
                webBrowser1.Navigate(Application.StartupPath + "\\trogiup/baocao.html");
            }
            catch
            {
                MessageBox.Show("Không tìm thấy tập tin");
            }
        }

        private void linkLabel7_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            try
            {
                webBrowser1.Navigate(Application.StartupPath + "\\trogiup/tienich.html");
            }
            catch
            {
                MessageBox.Show("Không tìm thấy tập tin");
            }
        }
       

    }
}