using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
//using System.Media;

namespace DOAN_QLTUYENSINHDH
{
    public partial class FrmTacGia : DevComponents.DotNetBar.Office2007Form
    {
        public FrmTacGia()
        {
            InitializeComponent();
        }
       // WMPLib.WindowsMediaPlayer wplayer = new WMPLib.WindowsMediaPlayer();
        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void Frm_TacGia_Load(object sender, EventArgs e)
        {
           // wplayer.URL = "nen.mp3";
            //wplayer.controls.play();
            

        }

        private void FrmTacGia_FormClosing(object sender, FormClosingEventArgs e)
        {
           // wplayer.controls.stop();
        }

        
    }
}