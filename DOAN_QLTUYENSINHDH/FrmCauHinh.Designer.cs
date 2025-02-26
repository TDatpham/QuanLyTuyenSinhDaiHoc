namespace DOAN_QLTUYENSINHDH
{
    partial class FrmCauHinh
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FrmCauHinh));
            this.btnCancel = new DevComponents.DotNetBar.ButtonX();
            this.btnConnect = new DevComponents.DotNetBar.ButtonX();
            this.btnTesconnection = new DevComponents.DotNetBar.ButtonX();
            this.cmbdatabase = new DevComponents.DotNetBar.Controls.ComboBoxEx();
            this.labelX5 = new DevComponents.DotNetBar.LabelX();
            this.txtmatkhau = new DevComponents.DotNetBar.Controls.TextBoxX();
            this.labelX4 = new DevComponents.DotNetBar.LabelX();
            this.txtusername = new DevComponents.DotNetBar.Controls.TextBoxX();
            this.labelX3 = new DevComponents.DotNetBar.LabelX();
            this.labelX2 = new DevComponents.DotNetBar.LabelX();
            this.cmbAuthentication = new DevComponents.DotNetBar.Controls.ComboBoxEx();
            this.winAuth = new DevComponents.Editors.ComboItem();
            this.sqlserver = new DevComponents.Editors.ComboItem();
            this.reflectionImage1 = new DevComponents.DotNetBar.Controls.ReflectionImage();
            this.labelX1 = new DevComponents.DotNetBar.LabelX();
            this.groupPanel1 = new DevComponents.DotNetBar.Controls.GroupPanel();
            this.cmbtensv = new DevComponents.DotNetBar.Controls.ComboBoxEx();
            this.comboItem1 = new DevComponents.Editors.ComboItem();
            this.comboItem2 = new DevComponents.Editors.ComboItem();
            this.groupPanel1.SuspendLayout();
            this.SuspendLayout();
            // 
            // btnCancel
            // 
            this.btnCancel.AccessibleRole = System.Windows.Forms.AccessibleRole.PushButton;
            this.btnCancel.ColorTable = DevComponents.DotNetBar.eButtonColor.BlueOrb;
            this.btnCancel.Location = new System.Drawing.Point(287, 313);
            this.btnCancel.Name = "btnCancel";
            this.btnCancel.Size = new System.Drawing.Size(75, 23);
            this.btnCancel.TabIndex = 7;
            this.btnCancel.Text = "Hủy";
            this.btnCancel.Click += new System.EventHandler(this.btnCancel_Click);
            // 
            // btnConnect
            // 
            this.btnConnect.AccessibleRole = System.Windows.Forms.AccessibleRole.PushButton;
            this.btnConnect.ColorTable = DevComponents.DotNetBar.eButtonColor.BlueOrb;
            this.btnConnect.Enabled = false;
            this.btnConnect.Location = new System.Drawing.Point(189, 313);
            this.btnConnect.Name = "btnConnect";
            this.btnConnect.Size = new System.Drawing.Size(75, 23);
            this.btnConnect.TabIndex = 6;
            this.btnConnect.Text = "Kết nối";
            this.btnConnect.Click += new System.EventHandler(this.btnConnect_Click);
            // 
            // btnTesconnection
            // 
            this.btnTesconnection.AccessibleRole = System.Windows.Forms.AccessibleRole.PushButton;
            this.btnTesconnection.ColorTable = DevComponents.DotNetBar.eButtonColor.OrangeWithBackground;
            this.btnTesconnection.Location = new System.Drawing.Point(191, 226);
            this.btnTesconnection.Name = "btnTesconnection";
            this.btnTesconnection.Size = new System.Drawing.Size(110, 23);
            this.btnTesconnection.TabIndex = 4;
            this.btnTesconnection.Text = "Kiểm tra kết nối";
            this.btnTesconnection.Click += new System.EventHandler(this.btnTesconnection_Click);
            // 
            // cmbdatabase
            // 
            this.cmbdatabase.DisplayMember = "Text";
            this.cmbdatabase.DrawMode = System.Windows.Forms.DrawMode.OwnerDrawFixed;
            this.cmbdatabase.FormattingEnabled = true;
            this.cmbdatabase.ItemHeight = 14;
            this.cmbdatabase.Location = new System.Drawing.Point(189, 267);
            this.cmbdatabase.Name = "cmbdatabase";
            this.cmbdatabase.Size = new System.Drawing.Size(173, 20);
            this.cmbdatabase.TabIndex = 5;
            // 
            // labelX5
            // 
            this.labelX5.Location = new System.Drawing.Point(27, 264);
            this.labelX5.Name = "labelX5";
            this.labelX5.Size = new System.Drawing.Size(75, 23);
            this.labelX5.TabIndex = 25;
            this.labelX5.Text = "Cơ sở dữ liệu:";
            // 
            // txtmatkhau
            // 
            // 
            // 
            // 
            this.txtmatkhau.Border.Class = "TextBoxBorder";
            this.txtmatkhau.Location = new System.Drawing.Point(191, 200);
            this.txtmatkhau.Name = "txtmatkhau";
            this.txtmatkhau.PasswordChar = '*';
            this.txtmatkhau.Size = new System.Drawing.Size(172, 20);
            this.txtmatkhau.TabIndex = 3;
            this.txtmatkhau.WatermarkText = "Mật khẩu đăng nhập";
            this.txtmatkhau.KeyDown += new System.Windows.Forms.KeyEventHandler(this.txtmatkhau_KeyDown);
            this.txtmatkhau.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.txtmatkhau_KeyPress);
            // 
            // labelX4
            // 
            this.labelX4.Location = new System.Drawing.Point(27, 200);
            this.labelX4.Name = "labelX4";
            this.labelX4.Size = new System.Drawing.Size(75, 23);
            this.labelX4.TabIndex = 22;
            this.labelX4.Text = "Mật khẩu:";
            // 
            // txtusername
            // 
            // 
            // 
            // 
            this.txtusername.Border.Class = "TextBoxBorder";
            this.txtusername.Location = new System.Drawing.Point(191, 171);
            this.txtusername.Name = "txtusername";
            this.txtusername.Size = new System.Drawing.Size(172, 20);
            this.txtusername.TabIndex = 2;
            this.txtusername.WatermarkText = "Tên đăng nhập";
            // 
            // labelX3
            // 
            this.labelX3.Location = new System.Drawing.Point(27, 171);
            this.labelX3.Name = "labelX3";
            this.labelX3.Size = new System.Drawing.Size(75, 23);
            this.labelX3.TabIndex = 19;
            this.labelX3.Text = "Tên tài khoản:";
            // 
            // labelX2
            // 
            this.labelX2.Location = new System.Drawing.Point(27, 142);
            this.labelX2.Name = "labelX2";
            this.labelX2.Size = new System.Drawing.Size(97, 23);
            this.labelX2.TabIndex = 15;
            this.labelX2.Text = "Chế độ xác thực:";
            // 
            // cmbAuthentication
            // 
            this.cmbAuthentication.DisplayMember = "Text";
            this.cmbAuthentication.DrawMode = System.Windows.Forms.DrawMode.OwnerDrawFixed;
            this.cmbAuthentication.FormattingEnabled = true;
            this.cmbAuthentication.ItemHeight = 14;
            this.cmbAuthentication.Items.AddRange(new object[] {
            this.winAuth,
            this.sqlserver});
            this.cmbAuthentication.Location = new System.Drawing.Point(191, 142);
            this.cmbAuthentication.Name = "cmbAuthentication";
            this.cmbAuthentication.Size = new System.Drawing.Size(173, 20);
            this.cmbAuthentication.TabIndex = 1;
            this.cmbAuthentication.SelectedIndexChanged += new System.EventHandler(this.cmbAuthentication_SelectedIndexChanged);
            // 
            // winAuth
            // 
            this.winAuth.Text = "Windows Authentication";
            // 
            // sqlserver
            // 
            this.sqlserver.Text = "SQL Server Authentication";
            // 
            // reflectionImage1
            // 
            this.reflectionImage1.Dock = System.Windows.Forms.DockStyle.Top;
            this.reflectionImage1.Image = ((System.Drawing.Image)(resources.GetObject("reflectionImage1.Image")));
            this.reflectionImage1.Location = new System.Drawing.Point(0, 0);
            this.reflectionImage1.Name = "reflectionImage1";
            this.reflectionImage1.Size = new System.Drawing.Size(392, 83);
            this.reflectionImage1.TabIndex = 0;
            // 
            // labelX1
            // 
            this.labelX1.Location = new System.Drawing.Point(27, 113);
            this.labelX1.Name = "labelX1";
            this.labelX1.Size = new System.Drawing.Size(75, 23);
            this.labelX1.TabIndex = 13;
            this.labelX1.Text = "Tên máy chủ:";
            // 
            // groupPanel1
            // 
            this.groupPanel1.CanvasColor = System.Drawing.SystemColors.Control;
            this.groupPanel1.ColorSchemeStyle = DevComponents.DotNetBar.eDotNetBarStyle.Office2007;
            this.groupPanel1.Controls.Add(this.reflectionImage1);
            this.groupPanel1.Dock = System.Windows.Forms.DockStyle.Top;
            this.groupPanel1.Location = new System.Drawing.Point(0, 0);
            this.groupPanel1.Name = "groupPanel1";
            this.groupPanel1.Size = new System.Drawing.Size(398, 93);
            // 
            // 
            // 
            this.groupPanel1.Style.BackColor2SchemePart = DevComponents.DotNetBar.eColorSchemePart.PanelBackground2;
            this.groupPanel1.Style.BackColorGradientAngle = 90;
            this.groupPanel1.Style.BackColorSchemePart = DevComponents.DotNetBar.eColorSchemePart.PanelBackground;
            this.groupPanel1.Style.BorderBottom = DevComponents.DotNetBar.eStyleBorderType.Solid;
            this.groupPanel1.Style.BorderBottomWidth = 1;
            this.groupPanel1.Style.BorderColorSchemePart = DevComponents.DotNetBar.eColorSchemePart.PanelBorder;
            this.groupPanel1.Style.BorderLeft = DevComponents.DotNetBar.eStyleBorderType.Solid;
            this.groupPanel1.Style.BorderLeftWidth = 1;
            this.groupPanel1.Style.BorderRight = DevComponents.DotNetBar.eStyleBorderType.Solid;
            this.groupPanel1.Style.BorderRightWidth = 1;
            this.groupPanel1.Style.BorderTop = DevComponents.DotNetBar.eStyleBorderType.Solid;
            this.groupPanel1.Style.BorderTopWidth = 1;
            this.groupPanel1.Style.CornerDiameter = 4;
            this.groupPanel1.Style.CornerType = DevComponents.DotNetBar.eCornerType.Rounded;
            this.groupPanel1.Style.TextAlignment = DevComponents.DotNetBar.eStyleTextAlignment.Center;
            this.groupPanel1.Style.TextColorSchemePart = DevComponents.DotNetBar.eColorSchemePart.PanelText;
            this.groupPanel1.Style.TextLineAlignment = DevComponents.DotNetBar.eStyleTextAlignment.Near;
            this.groupPanel1.TabIndex = 11;
            // 
            // cmbtensv
            // 
            this.cmbtensv.DisplayMember = "Text";
            this.cmbtensv.DrawMode = System.Windows.Forms.DrawMode.OwnerDrawFixed;
            this.cmbtensv.FormattingEnabled = true;
            this.cmbtensv.ItemHeight = 14;
            this.cmbtensv.Items.AddRange(new object[] {
            this.comboItem1,
            this.comboItem2});
            this.cmbtensv.Location = new System.Drawing.Point(191, 113);
            this.cmbtensv.Name = "cmbtensv";
            this.cmbtensv.Size = new System.Drawing.Size(173, 20);
            this.cmbtensv.TabIndex = 0;
            // 
            // comboItem1
            // 
            this.comboItem1.Text = "Windows Authentication";
            // 
            // comboItem2
            // 
            this.comboItem2.Text = "SQL Server Authentication";
            // 
            // FrmCauHinh
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(398, 372);
            this.ControlBox = false;
            this.Controls.Add(this.cmbtensv);
            this.Controls.Add(this.btnCancel);
            this.Controls.Add(this.btnConnect);
            this.Controls.Add(this.btnTesconnection);
            this.Controls.Add(this.cmbdatabase);
            this.Controls.Add(this.labelX5);
            this.Controls.Add(this.txtmatkhau);
            this.Controls.Add(this.labelX4);
            this.Controls.Add(this.txtusername);
            this.Controls.Add(this.labelX3);
            this.Controls.Add(this.labelX2);
            this.Controls.Add(this.cmbAuthentication);
            this.Controls.Add(this.labelX1);
            this.Controls.Add(this.groupPanel1);
            this.DoubleBuffered = true;
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "FrmCauHinh";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Cấu hình hệ thống";
            this.Load += new System.EventHandler(this.Form1_Load);
            this.groupPanel1.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private DevComponents.DotNetBar.ButtonX btnCancel;
        private DevComponents.DotNetBar.ButtonX btnConnect;
        private DevComponents.DotNetBar.ButtonX btnTesconnection;
        private DevComponents.DotNetBar.Controls.ComboBoxEx cmbdatabase;
        private DevComponents.DotNetBar.LabelX labelX5;
        private DevComponents.DotNetBar.Controls.TextBoxX txtmatkhau;
        private DevComponents.DotNetBar.LabelX labelX4;
        private DevComponents.DotNetBar.Controls.TextBoxX txtusername;
        private DevComponents.DotNetBar.LabelX labelX3;
        private DevComponents.DotNetBar.LabelX labelX2;
        public DevComponents.DotNetBar.Controls.ComboBoxEx cmbAuthentication;
        private DevComponents.Editors.ComboItem winAuth;
        private DevComponents.Editors.ComboItem sqlserver;
        private DevComponents.DotNetBar.Controls.ReflectionImage reflectionImage1;
        private DevComponents.DotNetBar.LabelX labelX1;
        private DevComponents.DotNetBar.Controls.GroupPanel groupPanel1;
        public DevComponents.DotNetBar.Controls.ComboBoxEx cmbtensv;
        private DevComponents.Editors.ComboItem comboItem1;
        private DevComponents.Editors.ComboItem comboItem2;

    }
}