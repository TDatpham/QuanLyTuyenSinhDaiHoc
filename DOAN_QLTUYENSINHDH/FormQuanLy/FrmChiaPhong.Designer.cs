namespace DOAN_QLTUYENSINHDH.FormQuanLy
{
    partial class FrmChiaPhong
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FrmChiaPhong));
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle1 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle2 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle3 = new System.Windows.Forms.DataGridViewCellStyle();
            this.buttonX1 = new DevComponents.DotNetBar.ButtonX();
            this.labelX2 = new DevComponents.DotNetBar.LabelX();
            this.dgvhienthi = new DevComponents.DotNetBar.Controls.DataGridViewX();
            this.sbd = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.phongthi = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.namthi = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.cmbnam = new DevComponents.DotNetBar.Controls.ComboBoxEx();
            this.lblhienthi = new DevComponents.DotNetBar.LabelX();
            this.labelX1 = new DevComponents.DotNetBar.LabelX();
            this.lbltong = new DevComponents.DotNetBar.LabelX();
            this.buttonX2 = new DevComponents.DotNetBar.ButtonX();
            this.dgvhienthi1 = new DevComponents.DotNetBar.Controls.DataGridViewX();
            this.sbd1 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.phongthi1 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.namthi1 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dgvhienthi2 = new DevComponents.DotNetBar.Controls.DataGridViewX();
            this.sbd2 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.phongthi2 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.namthi2 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            ((System.ComponentModel.ISupportInitialize)(this.dgvhienthi)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dgvhienthi1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dgvhienthi2)).BeginInit();
            this.SuspendLayout();
            // 
            // buttonX1
            // 
            this.buttonX1.AccessibleRole = System.Windows.Forms.AccessibleRole.PushButton;
            this.buttonX1.ColorTable = DevComponents.DotNetBar.eButtonColor.OrangeWithBackground;
            this.buttonX1.Image = ((System.Drawing.Image)(resources.GetObject("buttonX1.Image")));
            this.buttonX1.Location = new System.Drawing.Point(125, 87);
            this.buttonX1.Name = "buttonX1";
            this.buttonX1.Size = new System.Drawing.Size(96, 20);
            this.buttonX1.TabIndex = 1;
            this.buttonX1.Text = "Thực hiện";
            this.buttonX1.Click += new System.EventHandler(this.buttonX1_Click);
            // 
            // labelX2
            // 
            this.labelX2.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.labelX2.Location = new System.Drawing.Point(117, 11);
            this.labelX2.Name = "labelX2";
            this.labelX2.Size = new System.Drawing.Size(138, 23);
            this.labelX2.TabIndex = 2;
            this.labelX2.Text = "CHIA PHÒNG THI";
            // 
            // dgvhienthi
            // 
            this.dgvhienthi.AllowUserToAddRows = false;
            this.dgvhienthi.AllowUserToDeleteRows = false;
            this.dgvhienthi.BackgroundColor = System.Drawing.Color.SteelBlue;
            this.dgvhienthi.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvhienthi.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.sbd,
            this.phongthi,
            this.namthi});
            dataGridViewCellStyle1.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle1.BackColor = System.Drawing.SystemColors.Window;
            dataGridViewCellStyle1.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle1.ForeColor = System.Drawing.SystemColors.ControlText;
            dataGridViewCellStyle1.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle1.SelectionForeColor = System.Drawing.SystemColors.ControlText;
            dataGridViewCellStyle1.WrapMode = System.Windows.Forms.DataGridViewTriState.False;
            this.dgvhienthi.DefaultCellStyle = dataGridViewCellStyle1;
            this.dgvhienthi.GridColor = System.Drawing.Color.FromArgb(((int)(((byte)(208)))), ((int)(((byte)(215)))), ((int)(((byte)(229)))));
            this.dgvhienthi.Location = new System.Drawing.Point(-1, 164);
            this.dgvhienthi.Name = "dgvhienthi";
            this.dgvhienthi.Size = new System.Drawing.Size(396, 78);
            this.dgvhienthi.TabIndex = 3;
            this.dgvhienthi.Visible = false;
            // 
            // sbd
            // 
            this.sbd.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.Fill;
            this.sbd.DataPropertyName = "sbd";
            this.sbd.HeaderText = "Số báo danh";
            this.sbd.Name = "sbd";
            // 
            // phongthi
            // 
            this.phongthi.DataPropertyName = "sophongthi";
            this.phongthi.HeaderText = "Phòng Thi";
            this.phongthi.Name = "phongthi";
            // 
            // namthi
            // 
            this.namthi.DataPropertyName = "namthi";
            this.namthi.HeaderText = "Năm Thi";
            this.namthi.Name = "namthi";
            // 
            // cmbnam
            // 
            this.cmbnam.DisplayMember = "Text";
            this.cmbnam.DrawMode = System.Windows.Forms.DrawMode.OwnerDrawFixed;
            this.cmbnam.FormattingEnabled = true;
            this.cmbnam.ItemHeight = 14;
            this.cmbnam.Location = new System.Drawing.Point(125, 42);
            this.cmbnam.Name = "cmbnam";
            this.cmbnam.Size = new System.Drawing.Size(211, 20);
            this.cmbnam.TabIndex = 0;
            this.cmbnam.SelectedIndexChanged += new System.EventHandler(this.cmbnam_SelectedIndexChanged);
            // 
            // lblhienthi
            // 
            this.lblhienthi.Location = new System.Drawing.Point(35, 42);
            this.lblhienthi.Name = "lblhienthi";
            this.lblhienthi.Size = new System.Drawing.Size(75, 23);
            this.lblhienthi.TabIndex = 5;
            this.lblhienthi.Text = "Chọn Năm";
            this.lblhienthi.Click += new System.EventHandler(this.lblhienthi_Click);
            // 
            // labelX1
            // 
            this.labelX1.Location = new System.Drawing.Point(114, 137);
            this.labelX1.Name = "labelX1";
            this.labelX1.Size = new System.Drawing.Size(76, 23);
            this.labelX1.TabIndex = 8;
            this.labelX1.Text = "Tổng Thí Sinh :";
            // 
            // lbltong
            // 
            this.lbltong.Location = new System.Drawing.Point(196, 136);
            this.lbltong.Name = "lbltong";
            this.lbltong.Size = new System.Drawing.Size(38, 23);
            this.lbltong.TabIndex = 9;
            this.lbltong.Text = "t";
            // 
            // buttonX2
            // 
            this.buttonX2.AccessibleRole = System.Windows.Forms.AccessibleRole.PushButton;
            this.buttonX2.ColorTable = DevComponents.DotNetBar.eButtonColor.OrangeWithBackground;
            this.buttonX2.Image = ((System.Drawing.Image)(resources.GetObject("buttonX2.Image")));
            this.buttonX2.Location = new System.Drawing.Point(237, 87);
            this.buttonX2.Name = "buttonX2";
            this.buttonX2.Size = new System.Drawing.Size(99, 23);
            this.buttonX2.TabIndex = 2;
            this.buttonX2.Text = "Thực Hiện Lại";
            this.buttonX2.Click += new System.EventHandler(this.buttonX2_Click);
            // 
            // dgvhienthi1
            // 
            this.dgvhienthi1.AllowUserToAddRows = false;
            this.dgvhienthi1.AllowUserToDeleteRows = false;
            this.dgvhienthi1.BackgroundColor = System.Drawing.Color.SteelBlue;
            this.dgvhienthi1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvhienthi1.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.sbd1,
            this.phongthi1,
            this.namthi1});
            dataGridViewCellStyle2.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle2.BackColor = System.Drawing.SystemColors.Window;
            dataGridViewCellStyle2.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle2.ForeColor = System.Drawing.SystemColors.ControlText;
            dataGridViewCellStyle2.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle2.SelectionForeColor = System.Drawing.SystemColors.ControlText;
            dataGridViewCellStyle2.WrapMode = System.Windows.Forms.DataGridViewTriState.False;
            this.dgvhienthi1.DefaultCellStyle = dataGridViewCellStyle2;
            this.dgvhienthi1.GridColor = System.Drawing.Color.FromArgb(((int)(((byte)(208)))), ((int)(((byte)(215)))), ((int)(((byte)(229)))));
            this.dgvhienthi1.Location = new System.Drawing.Point(213, 212);
            this.dgvhienthi1.Name = "dgvhienthi1";
            this.dgvhienthi1.Size = new System.Drawing.Size(381, 68);
            this.dgvhienthi1.TabIndex = 13;
            this.dgvhienthi1.Visible = false;
            // 
            // sbd1
            // 
            this.sbd1.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.Fill;
            this.sbd1.DataPropertyName = "sbd";
            this.sbd1.HeaderText = "Số báo danh";
            this.sbd1.Name = "sbd1";
            // 
            // phongthi1
            // 
            this.phongthi1.DataPropertyName = "sophongthi";
            this.phongthi1.HeaderText = "Phòng Thi";
            this.phongthi1.Name = "phongthi1";
            // 
            // namthi1
            // 
            this.namthi1.DataPropertyName = "namthi";
            this.namthi1.HeaderText = "Năm Thi";
            this.namthi1.Name = "namthi1";
            // 
            // dgvhienthi2
            // 
            this.dgvhienthi2.AllowUserToAddRows = false;
            this.dgvhienthi2.AllowUserToDeleteRows = false;
            this.dgvhienthi2.BackgroundColor = System.Drawing.Color.SteelBlue;
            this.dgvhienthi2.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvhienthi2.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.sbd2,
            this.phongthi2,
            this.namthi2});
            dataGridViewCellStyle3.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle3.BackColor = System.Drawing.SystemColors.Window;
            dataGridViewCellStyle3.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle3.ForeColor = System.Drawing.SystemColors.ControlText;
            dataGridViewCellStyle3.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle3.SelectionForeColor = System.Drawing.SystemColors.ControlText;
            dataGridViewCellStyle3.WrapMode = System.Windows.Forms.DataGridViewTriState.False;
            this.dgvhienthi2.DefaultCellStyle = dataGridViewCellStyle3;
            this.dgvhienthi2.GridColor = System.Drawing.Color.FromArgb(((int)(((byte)(208)))), ((int)(((byte)(215)))), ((int)(((byte)(229)))));
            this.dgvhienthi2.Location = new System.Drawing.Point(35, 268);
            this.dgvhienthi2.Name = "dgvhienthi2";
            this.dgvhienthi2.Size = new System.Drawing.Size(412, 81);
            this.dgvhienthi2.TabIndex = 14;
            this.dgvhienthi2.Visible = false;
            // 
            // sbd2
            // 
            this.sbd2.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.Fill;
            this.sbd2.DataPropertyName = "sbd";
            this.sbd2.HeaderText = "Số báo danh";
            this.sbd2.Name = "sbd2";
            // 
            // phongthi2
            // 
            this.phongthi2.DataPropertyName = "sophongthi";
            this.phongthi2.HeaderText = "Phòng Thi";
            this.phongthi2.Name = "phongthi2";
            // 
            // namthi2
            // 
            this.namthi2.DataPropertyName = "namthi";
            this.namthi2.HeaderText = "Năm Thi";
            this.namthi2.Name = "namthi2";
            // 
            // FrmChiaPhong
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(388, 160);
            this.Controls.Add(this.dgvhienthi2);
            this.Controls.Add(this.dgvhienthi1);
            this.Controls.Add(this.buttonX2);
            this.Controls.Add(this.lbltong);
            this.Controls.Add(this.labelX1);
            this.Controls.Add(this.cmbnam);
            this.Controls.Add(this.lblhienthi);
            this.Controls.Add(this.dgvhienthi);
            this.Controls.Add(this.labelX2);
            this.Controls.Add(this.buttonX1);
            this.DoubleBuffered = true;
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle;
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.MaximizeBox = false;
            this.Name = "FrmChiaPhong";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Chia phòng thi";
            this.Load += new System.EventHandler(this.FrmChiaPhong_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dgvhienthi)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dgvhienthi1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dgvhienthi2)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevComponents.DotNetBar.ButtonX buttonX1;
        private DevComponents.DotNetBar.LabelX labelX2;
        private DevComponents.DotNetBar.Controls.DataGridViewX dgvhienthi;
        private DevComponents.DotNetBar.Controls.ComboBoxEx cmbnam;
        private DevComponents.DotNetBar.LabelX lblhienthi;
        private System.Windows.Forms.DataGridViewTextBoxColumn sbd;
        private System.Windows.Forms.DataGridViewTextBoxColumn phongthi;
        private System.Windows.Forms.DataGridViewTextBoxColumn namthi;
        private DevComponents.DotNetBar.LabelX labelX1;
        private DevComponents.DotNetBar.LabelX lbltong;
        private DevComponents.DotNetBar.ButtonX buttonX2;
        private DevComponents.DotNetBar.Controls.DataGridViewX dgvhienthi1;
        private DevComponents.DotNetBar.Controls.DataGridViewX dgvhienthi2;
        private System.Windows.Forms.DataGridViewTextBoxColumn sbd1;
        private System.Windows.Forms.DataGridViewTextBoxColumn phongthi1;
        private System.Windows.Forms.DataGridViewTextBoxColumn namthi1;
        private System.Windows.Forms.DataGridViewTextBoxColumn sbd2;
        private System.Windows.Forms.DataGridViewTextBoxColumn phongthi2;
        private System.Windows.Forms.DataGridViewTextBoxColumn namthi2;
    }
}