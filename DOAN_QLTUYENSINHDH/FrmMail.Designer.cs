namespace DOAN_QLTUYENSINHDH
{
    partial class FrmMail
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FrmMail));
            this.buttonX1 = new DevComponents.DotNetBar.ButtonX();
            this.txtmailgui = new DevComponents.DotNetBar.Controls.TextBoxX();
            this.labelX1 = new DevComponents.DotNetBar.LabelX();
            this.labelX2 = new DevComponents.DotNetBar.LabelX();
            this.txtmk = new DevComponents.DotNetBar.Controls.TextBoxX();
            this.labelX3 = new DevComponents.DotNetBar.LabelX();
            this.txtmailnhan = new DevComponents.DotNetBar.Controls.TextBoxX();
            this.labelX4 = new DevComponents.DotNetBar.LabelX();
            this.txttieude = new DevComponents.DotNetBar.Controls.TextBoxX();
            this.labelX5 = new DevComponents.DotNetBar.LabelX();
            this.txtnoidung = new DevComponents.DotNetBar.Controls.TextBoxX();
            this.buttonX2 = new DevComponents.DotNetBar.ButtonX();
            this.labelX6 = new DevComponents.DotNetBar.LabelX();
            this.buttonX3 = new DevComponents.DotNetBar.ButtonX();
            this.SuspendLayout();
            // 
            // buttonX1
            // 
            this.buttonX1.AccessibleRole = System.Windows.Forms.AccessibleRole.PushButton;
            this.buttonX1.ColorTable = DevComponents.DotNetBar.eButtonColor.OrangeWithBackground;
            this.buttonX1.Location = new System.Drawing.Point(129, 312);
            this.buttonX1.Name = "buttonX1";
            this.buttonX1.Size = new System.Drawing.Size(75, 23);
            this.buttonX1.TabIndex = 5;
            this.buttonX1.Text = "Gửi thư";
            this.buttonX1.Click += new System.EventHandler(this.buttonX1_Click);
            // 
            // txtmailgui
            // 
            // 
            // 
            // 
            this.txtmailgui.Border.Class = "TextBoxBorder";
            this.txtmailgui.Location = new System.Drawing.Point(129, 38);
            this.txtmailgui.Name = "txtmailgui";
            this.txtmailgui.Size = new System.Drawing.Size(223, 20);
            this.txtmailgui.TabIndex = 0;
            this.txtmailgui.WatermarkText = "Email của bạn";
            // 
            // labelX1
            // 
            this.labelX1.Location = new System.Drawing.Point(25, 35);
            this.labelX1.Name = "labelX1";
            this.labelX1.Size = new System.Drawing.Size(98, 23);
            this.labelX1.TabIndex = 1;
            this.labelX1.Text = "Email của bạn";
            // 
            // labelX2
            // 
            this.labelX2.Location = new System.Drawing.Point(25, 71);
            this.labelX2.Name = "labelX2";
            this.labelX2.Size = new System.Drawing.Size(98, 23);
            this.labelX2.TabIndex = 1;
            this.labelX2.Text = "Mật Khẩu";
            // 
            // txtmk
            // 
            // 
            // 
            // 
            this.txtmk.Border.Class = "TextBoxBorder";
            this.txtmk.Location = new System.Drawing.Point(129, 74);
            this.txtmk.Name = "txtmk";
            this.txtmk.PasswordChar = '*';
            this.txtmk.Size = new System.Drawing.Size(223, 20);
            this.txtmk.TabIndex = 1;
            this.txtmk.WatermarkText = "Mật khẩu email của bạn";
            // 
            // labelX3
            // 
            this.labelX3.Location = new System.Drawing.Point(25, 105);
            this.labelX3.Name = "labelX3";
            this.labelX3.Size = new System.Drawing.Size(98, 23);
            this.labelX3.TabIndex = 1;
            this.labelX3.Text = "Email Nhận";
            // 
            // txtmailnhan
            // 
            // 
            // 
            // 
            this.txtmailnhan.Border.Class = "TextBoxBorder";
            this.txtmailnhan.Location = new System.Drawing.Point(129, 108);
            this.txtmailnhan.Name = "txtmailnhan";
            this.txtmailnhan.Size = new System.Drawing.Size(223, 20);
            this.txtmailnhan.TabIndex = 2;
            this.txtmailnhan.WatermarkText = "Email người nhận";
            // 
            // labelX4
            // 
            this.labelX4.Location = new System.Drawing.Point(25, 144);
            this.labelX4.Name = "labelX4";
            this.labelX4.Size = new System.Drawing.Size(98, 23);
            this.labelX4.TabIndex = 1;
            this.labelX4.Text = "Tiêu Đề";
            // 
            // txttieude
            // 
            // 
            // 
            // 
            this.txttieude.Border.Class = "TextBoxBorder";
            this.txttieude.Location = new System.Drawing.Point(129, 147);
            this.txttieude.Name = "txttieude";
            this.txttieude.Size = new System.Drawing.Size(223, 20);
            this.txttieude.TabIndex = 3;
            this.txttieude.WatermarkText = "Tên thư muốn gửi";
            // 
            // labelX5
            // 
            this.labelX5.Location = new System.Drawing.Point(25, 188);
            this.labelX5.Name = "labelX5";
            this.labelX5.Size = new System.Drawing.Size(98, 23);
            this.labelX5.TabIndex = 1;
            this.labelX5.Text = "Nội Dung";
            // 
            // txtnoidung
            // 
            // 
            // 
            // 
            this.txtnoidung.Border.Class = "TextBoxBorder";
            this.txtnoidung.Location = new System.Drawing.Point(25, 213);
            this.txtnoidung.Multiline = true;
            this.txtnoidung.Name = "txtnoidung";
            this.txtnoidung.Size = new System.Drawing.Size(327, 93);
            this.txtnoidung.TabIndex = 4;
            this.txtnoidung.WatermarkText = "Nội dung của thư";
            this.txtnoidung.TextChanged += new System.EventHandler(this.textBoxX5_TextChanged);
            // 
            // buttonX2
            // 
            this.buttonX2.AccessibleRole = System.Windows.Forms.AccessibleRole.PushButton;
            this.buttonX2.ColorTable = DevComponents.DotNetBar.eButtonColor.OrangeWithBackground;
            this.buttonX2.Location = new System.Drawing.Point(258, 312);
            this.buttonX2.Name = "buttonX2";
            this.buttonX2.Size = new System.Drawing.Size(75, 23);
            this.buttonX2.TabIndex = 6;
            this.buttonX2.Text = "Soạn Thư Mới";
            this.buttonX2.Click += new System.EventHandler(this.buttonX2_Click);
            // 
            // labelX6
            // 
            this.labelX6.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.labelX6.ForeColor = System.Drawing.Color.Red;
            this.labelX6.Location = new System.Drawing.Point(73, 6);
            this.labelX6.Name = "labelX6";
            this.labelX6.Size = new System.Drawing.Size(208, 23);
            this.labelX6.TabIndex = 1;
            this.labelX6.Text = "Hỗ Trợ cho người gửi dùng GMAIL";
            // 
            // buttonX3
            // 
            this.buttonX3.AccessibleRole = System.Windows.Forms.AccessibleRole.PushButton;
            this.buttonX3.ColorTable = DevComponents.DotNetBar.eButtonColor.OrangeWithBackground;
            this.buttonX3.ForeColor = System.Drawing.Color.Green;
            this.buttonX3.Location = new System.Drawing.Point(1, 312);
            this.buttonX3.Name = "buttonX3";
            this.buttonX3.Size = new System.Drawing.Size(101, 23);
            this.buttonX3.TabIndex = 7;
            this.buttonX3.Text = "Đính Kèm Tập Tin";
            this.buttonX3.Click += new System.EventHandler(this.buttonX3_Click);
            // 
            // FrmMail
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(360, 347);
            this.Controls.Add(this.buttonX3);
            this.Controls.Add(this.txtnoidung);
            this.Controls.Add(this.labelX5);
            this.Controls.Add(this.txttieude);
            this.Controls.Add(this.labelX4);
            this.Controls.Add(this.txtmailnhan);
            this.Controls.Add(this.labelX3);
            this.Controls.Add(this.txtmk);
            this.Controls.Add(this.labelX2);
            this.Controls.Add(this.txtmailgui);
            this.Controls.Add(this.labelX6);
            this.Controls.Add(this.labelX1);
            this.Controls.Add(this.buttonX2);
            this.Controls.Add(this.buttonX1);
            this.DoubleBuffered = true;
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle;
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "FrmMail";
            this.Text = "Gửi Thư Điện Tử";
            this.Load += new System.EventHandler(this.FrmMail_Load);
            this.ResumeLayout(false);

        }

        #endregion

        private DevComponents.DotNetBar.ButtonX buttonX1;
        private DevComponents.DotNetBar.Controls.TextBoxX txtmailgui;
        private DevComponents.DotNetBar.LabelX labelX1;
        private DevComponents.DotNetBar.LabelX labelX2;
        private DevComponents.DotNetBar.Controls.TextBoxX txtmk;
        private DevComponents.DotNetBar.LabelX labelX3;
        private DevComponents.DotNetBar.Controls.TextBoxX txtmailnhan;
        private DevComponents.DotNetBar.LabelX labelX4;
        private DevComponents.DotNetBar.Controls.TextBoxX txttieude;
        private DevComponents.DotNetBar.LabelX labelX5;
        private DevComponents.DotNetBar.Controls.TextBoxX txtnoidung;
        private DevComponents.DotNetBar.ButtonX buttonX2;
        private DevComponents.DotNetBar.LabelX labelX6;
        private DevComponents.DotNetBar.ButtonX buttonX3;
    }
}