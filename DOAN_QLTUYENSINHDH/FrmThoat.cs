using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace DOAN_QLTUYENSINHDH
{
    public partial class FrmThoat : DevComponents.DotNetBar.Office2007Form
    {
        public FrmThoat()
        {
            InitializeComponent();
        }

        private void Frm_Thoat_Load(object sender, EventArgs e)
        {

        }

        private void label1_Click(object sender, EventArgs e)
        {

        }
        int i = 2;
        private void timer1_Tick(object sender, EventArgs e)
        {
            progressBar1.Value++;
            if (progressBar1.Value == 20)
            {

                this.Dispose();

                Application.Exit();

            }

        }

        private void timer2_Tick(object sender, EventArgs e)
        {

            i--;
            label2.Text = i.ToString();
        }
    }
}