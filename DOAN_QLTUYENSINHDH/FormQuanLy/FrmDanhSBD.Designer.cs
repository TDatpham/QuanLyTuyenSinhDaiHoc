namespace DOAN_QLTUYENSINHDH.FormQuanLy
{
    partial class FrmDanhSBD
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FrmDanhSBD));
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle1 = new System.Windows.Forms.DataGridViewCellStyle();
            this.btndanhsbd = new DevComponents.DotNetBar.ButtonX();
            this.cmbnam = new DevComponents.DotNetBar.Controls.ComboBoxEx();
            this.lblhienthi = new DevComponents.DotNetBar.LabelX();
            this.gridhienthi = new DevComponents.DotNetBar.Controls.DataGridViewX();
            this.id = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.sbd = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.hots = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.tents = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.ngaysinh = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.namthi = new System.Windows.Forms.DataGridViewTextBoxColumn();
            ((System.ComponentModel.ISupportInitialize)(this.gridhienthi)).BeginInit();
            this.SuspendLayout();
            // 
            // btndanhsbd
            // 
            this.btndanhsbd.AccessibleRole = System.Windows.Forms.AccessibleRole.PushButton;
            this.btndanhsbd.ColorTable = DevComponents.DotNetBar.eButtonColor.OrangeWithBackground;
            this.btndanhsbd.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btndanhsbd.Image = ((System.Drawing.Image)(resources.GetObject("btndanhsbd.Image")));
            this.btndanhsbd.Location = new System.Drawing.Point(291, 26);
            this.btndanhsbd.Name = "btndanhsbd";
            this.btndanhsbd.Size = new System.Drawing.Size(93, 23);
            this.btndanhsbd.TabIndex = 1;
            this.btndanhsbd.Text = "Thực Hiện";
            this.btndanhsbd.Click += new System.EventHandler(this.btndanhsbd_Click);
            // 
            // cmbnam
            // 
            this.cmbnam.DisplayMember = "Text";
            this.cmbnam.DrawMode = System.Windows.Forms.DrawMode.OwnerDrawFixed;
            this.cmbnam.FormattingEnabled = true;
            this.cmbnam.ItemHeight = 14;
            this.cmbnam.Location = new System.Drawing.Point(114, 29);
            this.cmbnam.Name = "cmbnam";
            this.cmbnam.Size = new System.Drawing.Size(153, 20);
            this.cmbnam.TabIndex = 0;
            // 
            // lblhienthi
            // 
            this.lblhienthi.Location = new System.Drawing.Point(25, 26);
            this.lblhienthi.Name = "lblhienthi";
            this.lblhienthi.Size = new System.Drawing.Size(75, 23);
            this.lblhienthi.TabIndex = 2;
            this.lblhienthi.Text = "Chọn Năm Thi";
            // 
            // gridhienthi
            // 
            this.gridhienthi.AllowUserToAddRows = false;
            this.gridhienthi.AllowUserToDeleteRows = false;
            this.gridhienthi.BackgroundColor = System.Drawing.Color.White;
            this.gridhienthi.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.gridhienthi.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.id,
            this.sbd,
            this.hots,
            this.tents,
            this.ngaysinh,
            this.namthi});
            dataGridViewCellStyle1.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle1.BackColor = System.Drawing.SystemColors.Window;
            dataGridViewCellStyle1.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle1.ForeColor = System.Drawing.SystemColors.ControlText;
            dataGridViewCellStyle1.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle1.SelectionForeColor = System.Drawing.SystemColors.ControlText;
            dataGridViewCellStyle1.WrapMode = System.Windows.Forms.DataGridViewTriState.False;
            this.gridhienthi.DefaultCellStyle = dataGridViewCellStyle1;
            this.gridhienthi.GridColor = System.Drawing.Color.FromArgb(((int)(((byte)(208)))), ((int)(((byte)(215)))), ((int)(((byte)(229)))));
            this.gridhienthi.Location = new System.Drawing.Point(-8, 59);
            this.gridhienthi.Name = "gridhienthi";
            this.gridhienthi.ReadOnly = true;
            this.gridhienthi.Size = new System.Drawing.Size(608, 168);
            this.gridhienthi.TabIndex = 3;
            this.gridhienthi.Visible = false;
            // 
            // id
            // 
            this.id.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.None;
            this.id.DataPropertyName = "id";
            this.id.HeaderText = "ID";
            this.id.Name = "id";
            this.id.ReadOnly = true;
            this.id.Width = 107;
            // 
            // sbd
            // 
            this.sbd.DataPropertyName = "sbd";
            this.sbd.HeaderText = "Số báo danh";
            this.sbd.Name = "sbd";
            this.sbd.ReadOnly = true;
            // 
            // hots
            // 
            this.hots.DataPropertyName = "hots";
            this.hots.HeaderText = "Họ và đệm";
            this.hots.Name = "hots";
            this.hots.ReadOnly = true;
            // 
            // tents
            // 
            this.tents.DataPropertyName = "tents";
            this.tents.HeaderText = "Tên TS";
            this.tents.Name = "tents";
            this.tents.ReadOnly = true;
            // 
            // ngaysinh
            // 
            this.ngaysinh.DataPropertyName = "ngaysinh";
            this.ngaysinh.HeaderText = "Ngày Sinh";
            this.ngaysinh.Name = "ngaysinh";
            this.ngaysinh.ReadOnly = true;
            // 
            // namthi
            // 
            this.namthi.DataPropertyName = "namthi";
            this.namthi.HeaderText = "Năm Thi";
            this.namthi.Name = "namthi";
            this.namthi.ReadOnly = true;
            // 
            // FrmDanhSBD
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(419, 62);
            this.Controls.Add(this.gridhienthi);
            this.Controls.Add(this.cmbnam);
            this.Controls.Add(this.lblhienthi);
            this.Controls.Add(this.btndanhsbd);
            this.DoubleBuffered = true;
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.MaximizeBox = false;
            this.Name = "FrmDanhSBD";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Đánh Số Báo Danh";
            this.Load += new System.EventHandler(this.FrmDanhSBD_Load);
            ((System.ComponentModel.ISupportInitialize)(this.gridhienthi)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevComponents.DotNetBar.ButtonX btndanhsbd;
        private DevComponents.DotNetBar.Controls.ComboBoxEx cmbnam;
        private DevComponents.DotNetBar.LabelX lblhienthi;
        private DevComponents.DotNetBar.Controls.DataGridViewX gridhienthi;
        private System.Windows.Forms.DataGridViewTextBoxColumn id;
        private System.Windows.Forms.DataGridViewTextBoxColumn sbd;
        private System.Windows.Forms.DataGridViewTextBoxColumn hots;
        private System.Windows.Forms.DataGridViewTextBoxColumn tents;
        private System.Windows.Forms.DataGridViewTextBoxColumn ngaysinh;
        private System.Windows.Forms.DataGridViewTextBoxColumn namthi;

    }
}