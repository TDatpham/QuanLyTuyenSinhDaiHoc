namespace DOAN_QLTUYENSINHDH.FormQuanLy
{
    partial class FrmDiem
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
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle1 = new System.Windows.Forms.DataGridViewCellStyle();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FrmDiem));
            this.labelX1 = new DevComponents.DotNetBar.LabelX();
            this.cmbmon = new DevComponents.DotNetBar.Controls.ComboBoxEx();
            this.comboItem4 = new DevComponents.Editors.ComboItem();
            this.comboItem5 = new DevComponents.Editors.ComboItem();
            this.comboItem6 = new DevComponents.Editors.ComboItem();
            this.labelX2 = new DevComponents.DotNetBar.LabelX();
            this.grphienthi = new DevComponents.DotNetBar.Controls.GroupPanel();
            this.gridhienthi = new DevComponents.DotNetBar.Controls.DataGridViewX();
            this.sophach = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.diem = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.cmbphong = new DevComponents.DotNetBar.Controls.ComboBoxEx();
            this.cmbnam = new DevComponents.DotNetBar.Controls.ComboBoxEx();
            this.comboItem1 = new DevComponents.Editors.ComboItem();
            this.comboItem2 = new DevComponents.Editors.ComboItem();
            this.comboItem3 = new DevComponents.Editors.ComboItem();
            this.labelX3 = new DevComponents.DotNetBar.LabelX();
            this.buttonX1 = new DevComponents.DotNetBar.ButtonX();
            this.grphienthi.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.gridhienthi)).BeginInit();
            this.SuspendLayout();
            // 
            // labelX1
            // 
            this.labelX1.Location = new System.Drawing.Point(142, 12);
            this.labelX1.Name = "labelX1";
            this.labelX1.Size = new System.Drawing.Size(61, 15);
            this.labelX1.TabIndex = 5;
            this.labelX1.Text = "Chọn Môn";
            // 
            // cmbmon
            // 
            this.cmbmon.DisplayMember = "Text";
            this.cmbmon.DrawMode = System.Windows.Forms.DrawMode.OwnerDrawFixed;
            this.cmbmon.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cmbmon.FormattingEnabled = true;
            this.cmbmon.ImeMode = System.Windows.Forms.ImeMode.NoControl;
            this.cmbmon.ItemHeight = 14;
            this.cmbmon.Items.AddRange(new object[] {
            this.comboItem4,
            this.comboItem5,
            this.comboItem6});
            this.cmbmon.Location = new System.Drawing.Point(142, 33);
            this.cmbmon.Name = "cmbmon";
            this.cmbmon.Size = new System.Drawing.Size(95, 20);
            this.cmbmon.TabIndex = 1;
            this.cmbmon.SelectedIndexChanged += new System.EventHandler(this.cmbmon_SelectedIndexChanged);
            // 
            // comboItem4
            // 
            this.comboItem4.Text = "1";
            // 
            // comboItem5
            // 
            this.comboItem5.Text = "2";
            // 
            // comboItem6
            // 
            this.comboItem6.Text = "3";
            // 
            // labelX2
            // 
            this.labelX2.Location = new System.Drawing.Point(264, 12);
            this.labelX2.Name = "labelX2";
            this.labelX2.Size = new System.Drawing.Size(61, 15);
            this.labelX2.TabIndex = 5;
            this.labelX2.Text = "Chọn Túi";
            // 
            // grphienthi
            // 
            this.grphienthi.CanvasColor = System.Drawing.SystemColors.Control;
            this.grphienthi.ColorSchemeStyle = DevComponents.DotNetBar.eDotNetBarStyle.Office2007;
            this.grphienthi.Controls.Add(this.gridhienthi);
            this.grphienthi.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.grphienthi.Location = new System.Drawing.Point(0, 78);
            this.grphienthi.Name = "grphienthi";
            this.grphienthi.Size = new System.Drawing.Size(427, 439);
            // 
            // 
            // 
            this.grphienthi.Style.BackColor2SchemePart = DevComponents.DotNetBar.eColorSchemePart.PanelBackground2;
            this.grphienthi.Style.BackColorGradientAngle = 90;
            this.grphienthi.Style.BackColorSchemePart = DevComponents.DotNetBar.eColorSchemePart.PanelBackground;
            this.grphienthi.Style.BorderBottom = DevComponents.DotNetBar.eStyleBorderType.Solid;
            this.grphienthi.Style.BorderBottomWidth = 1;
            this.grphienthi.Style.BorderColorSchemePart = DevComponents.DotNetBar.eColorSchemePart.PanelBorder;
            this.grphienthi.Style.BorderLeft = DevComponents.DotNetBar.eStyleBorderType.Solid;
            this.grphienthi.Style.BorderLeftWidth = 1;
            this.grphienthi.Style.BorderRight = DevComponents.DotNetBar.eStyleBorderType.Solid;
            this.grphienthi.Style.BorderRightWidth = 1;
            this.grphienthi.Style.BorderTop = DevComponents.DotNetBar.eStyleBorderType.Solid;
            this.grphienthi.Style.BorderTopWidth = 1;
            this.grphienthi.Style.CornerDiameter = 4;
            this.grphienthi.Style.CornerType = DevComponents.DotNetBar.eCornerType.Rounded;
            this.grphienthi.Style.TextAlignment = DevComponents.DotNetBar.eStyleTextAlignment.Center;
            this.grphienthi.Style.TextColorSchemePart = DevComponents.DotNetBar.eColorSchemePart.PanelText;
            this.grphienthi.Style.TextLineAlignment = DevComponents.DotNetBar.eStyleTextAlignment.Near;
            this.grphienthi.TabIndex = 25;
            // 
            // gridhienthi
            // 
            this.gridhienthi.AllowUserToAddRows = false;
            this.gridhienthi.AllowUserToDeleteRows = false;
            this.gridhienthi.BackgroundColor = System.Drawing.Color.White;
            this.gridhienthi.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.gridhienthi.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.sophach,
            this.diem});
            dataGridViewCellStyle1.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle1.BackColor = System.Drawing.SystemColors.Window;
            dataGridViewCellStyle1.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle1.ForeColor = System.Drawing.SystemColors.ControlText;
            dataGridViewCellStyle1.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle1.SelectionForeColor = System.Drawing.SystemColors.ControlText;
            dataGridViewCellStyle1.WrapMode = System.Windows.Forms.DataGridViewTriState.False;
            this.gridhienthi.DefaultCellStyle = dataGridViewCellStyle1;
            this.gridhienthi.Dock = System.Windows.Forms.DockStyle.Fill;
            this.gridhienthi.GridColor = System.Drawing.Color.FromArgb(((int)(((byte)(208)))), ((int)(((byte)(215)))), ((int)(((byte)(229)))));
            this.gridhienthi.Location = new System.Drawing.Point(0, 0);
            this.gridhienthi.Name = "gridhienthi";
            this.gridhienthi.Size = new System.Drawing.Size(421, 433);
            this.gridhienthi.TabIndex = 1;
            this.gridhienthi.DataError += new System.Windows.Forms.DataGridViewDataErrorEventHandler(this.gridhienthi_DataError);
            // 
            // sophach
            // 
            this.sophach.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.Fill;
            this.sophach.DataPropertyName = "sophach";
            this.sophach.HeaderText = "Số Phách";
            this.sophach.Name = "sophach";
            this.sophach.ReadOnly = true;
            // 
            // diem
            // 
            this.diem.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.Fill;
            this.diem.DataPropertyName = "diem";
            this.diem.HeaderText = "Điểm";
            this.diem.Name = "diem";
            // 
            // cmbphong
            // 
            this.cmbphong.DisplayMember = "Text";
            this.cmbphong.DrawMode = System.Windows.Forms.DrawMode.OwnerDrawFixed;
            this.cmbphong.FormattingEnabled = true;
            this.cmbphong.ItemHeight = 14;
            this.cmbphong.Location = new System.Drawing.Point(264, 33);
            this.cmbphong.Name = "cmbphong";
            this.cmbphong.Size = new System.Drawing.Size(61, 20);
            this.cmbphong.TabIndex = 2;
            this.cmbphong.SelectedIndexChanged += new System.EventHandler(this.cmbphong_SelectedIndexChanged);
            // 
            // cmbnam
            // 
            this.cmbnam.DisplayMember = "Text";
            this.cmbnam.DrawMode = System.Windows.Forms.DrawMode.OwnerDrawFixed;
            this.cmbnam.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cmbnam.FormattingEnabled = true;
            this.cmbnam.ImeMode = System.Windows.Forms.ImeMode.NoControl;
            this.cmbnam.ItemHeight = 14;
            this.cmbnam.Items.AddRange(new object[] {
            this.comboItem1,
            this.comboItem2,
            this.comboItem3});
            this.cmbnam.Location = new System.Drawing.Point(25, 33);
            this.cmbnam.Name = "cmbnam";
            this.cmbnam.Size = new System.Drawing.Size(95, 20);
            this.cmbnam.TabIndex = 0;
            this.cmbnam.SelectedIndexChanged += new System.EventHandler(this.cmbnam_SelectedIndexChanged);
            // 
            // comboItem1
            // 
            this.comboItem1.Text = "1";
            // 
            // comboItem2
            // 
            this.comboItem2.Text = "2";
            // 
            // comboItem3
            // 
            this.comboItem3.Text = "3";
            // 
            // labelX3
            // 
            this.labelX3.Location = new System.Drawing.Point(25, 12);
            this.labelX3.Name = "labelX3";
            this.labelX3.Size = new System.Drawing.Size(61, 15);
            this.labelX3.TabIndex = 28;
            this.labelX3.Text = "Chọn Năm";
            // 
            // buttonX1
            // 
            this.buttonX1.AccessibleRole = System.Windows.Forms.AccessibleRole.PushButton;
            this.buttonX1.ColorTable = DevComponents.DotNetBar.eButtonColor.OrangeWithBackground;
            this.buttonX1.Image = ((System.Drawing.Image)(resources.GetObject("buttonX1.Image")));
            this.buttonX1.Location = new System.Drawing.Point(335, 32);
            this.buttonX1.Name = "buttonX1";
            this.buttonX1.Size = new System.Drawing.Size(76, 23);
            this.buttonX1.TabIndex = 3;
            this.buttonX1.Text = "Lưu Lại";
            this.buttonX1.Click += new System.EventHandler(this.buttonX1_Click_1);
            // 
            // FrmDiem
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(427, 517);
            this.Controls.Add(this.buttonX1);
            this.Controls.Add(this.labelX3);
            this.Controls.Add(this.cmbnam);
            this.Controls.Add(this.cmbphong);
            this.Controls.Add(this.grphienthi);
            this.Controls.Add(this.labelX2);
            this.Controls.Add(this.labelX1);
            this.Controls.Add(this.cmbmon);
            this.DoubleBuffered = true;
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle;
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.MaximizeBox = false;
            this.Name = "FrmDiem";
            this.StartPosition = System.Windows.Forms.FormStartPosition.Manual;
            this.Text = "Nhập Điểm ";
            this.Load += new System.EventHandler(this.FrmDiem_Load);
            this.grphienthi.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.gridhienthi)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevComponents.DotNetBar.LabelX labelX1;
        private DevComponents.DotNetBar.Controls.ComboBoxEx cmbmon;
        private DevComponents.Editors.ComboItem comboItem4;
        private DevComponents.Editors.ComboItem comboItem5;
        private DevComponents.Editors.ComboItem comboItem6;
        private DevComponents.DotNetBar.LabelX labelX2;
        private DevComponents.DotNetBar.Controls.GroupPanel grphienthi;
        private DevComponents.DotNetBar.Controls.ComboBoxEx cmbphong;
        private DevComponents.DotNetBar.Controls.ComboBoxEx cmbnam;
        private DevComponents.Editors.ComboItem comboItem1;
        private DevComponents.Editors.ComboItem comboItem2;
        private DevComponents.Editors.ComboItem comboItem3;
        private DevComponents.DotNetBar.Controls.DataGridViewX gridhienthi;
        private DevComponents.DotNetBar.LabelX labelX3;
        private DevComponents.DotNetBar.ButtonX buttonX1;
        private System.Windows.Forms.DataGridViewTextBoxColumn sophach;
        private System.Windows.Forms.DataGridViewTextBoxColumn diem;
    }
}