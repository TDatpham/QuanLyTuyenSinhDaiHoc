namespace DOAN_QLTUYENSINHDH.FormQuanLy
{
    partial class FrmPhach
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FrmPhach));
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle1 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle2 = new System.Windows.Forms.DataGridViewCellStyle();
            this.cmbnam = new DevComponents.DotNetBar.Controls.ComboBoxEx();
            this.cmbmon = new DevComponents.DotNetBar.Controls.ComboBoxEx();
            this.labelX1 = new DevComponents.DotNetBar.LabelX();
            this.labelX2 = new DevComponents.DotNetBar.LabelX();
            this.cmbphong = new DevComponents.DotNetBar.Controls.ComboBoxEx();
            this.labelX3 = new DevComponents.DotNetBar.LabelX();
            this.labelX4 = new DevComponents.DotNetBar.LabelX();
            this.buttonX1 = new DevComponents.DotNetBar.ButtonX();
            this.buttonX2 = new DevComponents.DotNetBar.ButtonX();
            this.gridhienthi = new DevComponents.DotNetBar.Controls.DataGridViewX();
            this.dataGridViewX1 = new DevComponents.DotNetBar.Controls.DataGridViewX();
            ((System.ComponentModel.ISupportInitialize)(this.gridhienthi)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridViewX1)).BeginInit();
            this.SuspendLayout();
            // 
            // cmbnam
            // 
            this.cmbnam.DisplayMember = "Text";
            this.cmbnam.DrawMode = System.Windows.Forms.DrawMode.OwnerDrawFixed;
            this.cmbnam.FormattingEnabled = true;
            this.cmbnam.ItemHeight = 14;
            this.cmbnam.Location = new System.Drawing.Point(125, 43);
            this.cmbnam.Name = "cmbnam";
            this.cmbnam.Size = new System.Drawing.Size(121, 20);
            this.cmbnam.TabIndex = 0;
            // 
            // cmbmon
            // 
            this.cmbmon.DisplayMember = "Text";
            this.cmbmon.DrawMode = System.Windows.Forms.DrawMode.OwnerDrawFixed;
            this.cmbmon.FormattingEnabled = true;
            this.cmbmon.ImeMode = System.Windows.Forms.ImeMode.NoControl;
            this.cmbmon.ItemHeight = 14;
            this.cmbmon.Location = new System.Drawing.Point(125, 110);
            this.cmbmon.Name = "cmbmon";
            this.cmbmon.Size = new System.Drawing.Size(121, 20);
            this.cmbmon.TabIndex = 1;
            this.cmbmon.SelectedIndexChanged += new System.EventHandler(this.cmbmon_SelectedIndexChanged);
            // 
            // labelX1
            // 
            this.labelX1.Location = new System.Drawing.Point(40, 107);
            this.labelX1.Name = "labelX1";
            this.labelX1.Size = new System.Drawing.Size(61, 23);
            this.labelX1.TabIndex = 2;
            this.labelX1.Text = "Chọn Môn";
            // 
            // labelX2
            // 
            this.labelX2.Location = new System.Drawing.Point(40, 75);
            this.labelX2.Name = "labelX2";
            this.labelX2.Size = new System.Drawing.Size(75, 23);
            this.labelX2.TabIndex = 2;
            this.labelX2.Text = "Chọn phòng thi";
            // 
            // cmbphong
            // 
            this.cmbphong.DisplayMember = "Text";
            this.cmbphong.DrawMode = System.Windows.Forms.DrawMode.OwnerDrawFixed;
            this.cmbphong.FormattingEnabled = true;
            this.cmbphong.ItemHeight = 14;
            this.cmbphong.Location = new System.Drawing.Point(125, 78);
            this.cmbphong.Name = "cmbphong";
            this.cmbphong.Size = new System.Drawing.Size(121, 20);
            this.cmbphong.TabIndex = 1;
            this.cmbphong.SelectedIndexChanged += new System.EventHandler(this.cmbphong_SelectedIndexChanged);
            // 
            // labelX3
            // 
            this.labelX3.Location = new System.Drawing.Point(40, 40);
            this.labelX3.Name = "labelX3";
            this.labelX3.Size = new System.Drawing.Size(75, 23);
            this.labelX3.TabIndex = 2;
            this.labelX3.Text = "Chọn Năm";
            // 
            // labelX4
            // 
            this.labelX4.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.labelX4.ForeColor = System.Drawing.Color.Red;
            this.labelX4.Location = new System.Drawing.Point(111, 9);
            this.labelX4.Name = "labelX4";
            this.labelX4.Size = new System.Drawing.Size(188, 23);
            this.labelX4.TabIndex = 2;
            this.labelX4.Text = "Gieo Phách Cho Bài Thi";
            // 
            // buttonX1
            // 
            this.buttonX1.AccessibleRole = System.Windows.Forms.AccessibleRole.PushButton;
            this.buttonX1.ColorTable = DevComponents.DotNetBar.eButtonColor.OrangeWithBackground;
            this.buttonX1.Image = ((System.Drawing.Image)(resources.GetObject("buttonX1.Image")));
            this.buttonX1.Location = new System.Drawing.Point(282, 43);
            this.buttonX1.Name = "buttonX1";
            this.buttonX1.Size = new System.Drawing.Size(110, 23);
            this.buttonX1.TabIndex = 3;
            this.buttonX1.Text = "Thực Hiện";
            this.buttonX1.Click += new System.EventHandler(this.buttonX1_Click);
            // 
            // buttonX2
            // 
            this.buttonX2.AccessibleRole = System.Windows.Forms.AccessibleRole.PushButton;
            this.buttonX2.ColorTable = DevComponents.DotNetBar.eButtonColor.OrangeWithBackground;
            this.buttonX2.Image = ((System.Drawing.Image)(resources.GetObject("buttonX2.Image")));
            this.buttonX2.Location = new System.Drawing.Point(281, 107);
            this.buttonX2.Name = "buttonX2";
            this.buttonX2.Size = new System.Drawing.Size(110, 23);
            this.buttonX2.TabIndex = 4;
            this.buttonX2.Text = "HD Gieo Phách";
            this.buttonX2.Click += new System.EventHandler(this.buttonX2_Click);
            // 
            // gridhienthi
            // 
            this.gridhienthi.AllowUserToAddRows = false;
            this.gridhienthi.AllowUserToDeleteRows = false;
            this.gridhienthi.BackgroundColor = System.Drawing.Color.White;
            this.gridhienthi.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            dataGridViewCellStyle1.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle1.BackColor = System.Drawing.SystemColors.Window;
            dataGridViewCellStyle1.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle1.ForeColor = System.Drawing.SystemColors.ControlText;
            dataGridViewCellStyle1.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle1.SelectionForeColor = System.Drawing.SystemColors.ControlText;
            dataGridViewCellStyle1.WrapMode = System.Windows.Forms.DataGridViewTriState.False;
            this.gridhienthi.DefaultCellStyle = dataGridViewCellStyle1;
            this.gridhienthi.GridColor = System.Drawing.Color.FromArgb(((int)(((byte)(208)))), ((int)(((byte)(215)))), ((int)(((byte)(229)))));
            this.gridhienthi.Location = new System.Drawing.Point(12, 165);
            this.gridhienthi.Name = "gridhienthi";
            this.gridhienthi.ReadOnly = true;
            this.gridhienthi.Size = new System.Drawing.Size(370, 219);
            this.gridhienthi.TabIndex = 5;
            this.gridhienthi.Visible = false;
            // 
            // dataGridViewX1
            // 
            this.dataGridViewX1.AllowUserToAddRows = false;
            this.dataGridViewX1.AllowUserToDeleteRows = false;
            this.dataGridViewX1.BackgroundColor = System.Drawing.Color.White;
            this.dataGridViewX1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            dataGridViewCellStyle2.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle2.BackColor = System.Drawing.SystemColors.Window;
            dataGridViewCellStyle2.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle2.ForeColor = System.Drawing.SystemColors.ControlText;
            dataGridViewCellStyle2.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle2.SelectionForeColor = System.Drawing.SystemColors.ControlText;
            dataGridViewCellStyle2.WrapMode = System.Windows.Forms.DataGridViewTriState.False;
            this.dataGridViewX1.DefaultCellStyle = dataGridViewCellStyle2;
            this.dataGridViewX1.GridColor = System.Drawing.Color.FromArgb(((int)(((byte)(208)))), ((int)(((byte)(215)))), ((int)(((byte)(229)))));
            this.dataGridViewX1.Location = new System.Drawing.Point(405, 117);
            this.dataGridViewX1.Name = "dataGridViewX1";
            this.dataGridViewX1.ReadOnly = true;
            this.dataGridViewX1.Size = new System.Drawing.Size(370, 219);
            this.dataGridViewX1.TabIndex = 6;
            this.dataGridViewX1.Visible = false;
            // 
            // FrmPhach
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(400, 151);
            this.Controls.Add(this.dataGridViewX1);
            this.Controls.Add(this.gridhienthi);
            this.Controls.Add(this.buttonX2);
            this.Controls.Add(this.buttonX1);
            this.Controls.Add(this.labelX3);
            this.Controls.Add(this.labelX2);
            this.Controls.Add(this.labelX4);
            this.Controls.Add(this.labelX1);
            this.Controls.Add(this.cmbphong);
            this.Controls.Add(this.cmbmon);
            this.Controls.Add(this.cmbnam);
            this.DoubleBuffered = true;
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle;
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.MaximizeBox = false;
            this.Name = "FrmPhach";
            this.StartPosition = System.Windows.Forms.FormStartPosition.Manual;
            this.Text = "Đánh Phách";
            this.Load += new System.EventHandler(this.FrmPhach_Load);
            ((System.ComponentModel.ISupportInitialize)(this.gridhienthi)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridViewX1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevComponents.DotNetBar.Controls.ComboBoxEx cmbnam;
        private DevComponents.DotNetBar.Controls.ComboBoxEx cmbmon;
        private DevComponents.DotNetBar.LabelX labelX1;
        private DevComponents.DotNetBar.LabelX labelX2;
        private DevComponents.DotNetBar.Controls.ComboBoxEx cmbphong;
        private DevComponents.DotNetBar.LabelX labelX3;
        private DevComponents.DotNetBar.LabelX labelX4;
        private DevComponents.DotNetBar.ButtonX buttonX1;
        private DevComponents.DotNetBar.ButtonX buttonX2;
        private DevComponents.DotNetBar.Controls.DataGridViewX gridhienthi;
        private DevComponents.DotNetBar.Controls.DataGridViewX dataGridViewX1;

    }
}