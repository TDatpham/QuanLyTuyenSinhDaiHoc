namespace DOAN_QLTUYENSINHDH.FormQuanLy
{
    partial class FrmDiem_cu
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
            this.components = new System.ComponentModel.Container();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FrmDiem_cu));
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle1 = new System.Windows.Forms.DataGridViewCellStyle();
            this.labelX5 = new DevComponents.DotNetBar.LabelX();
            this.labelX1 = new DevComponents.DotNetBar.LabelX();
            this.cmbmon = new DevComponents.DotNetBar.Controls.ComboBoxEx();
            this.comboItem4 = new DevComponents.Editors.ComboItem();
            this.comboItem5 = new DevComponents.Editors.ComboItem();
            this.comboItem6 = new DevComponents.Editors.ComboItem();
            this.labelX2 = new DevComponents.DotNetBar.LabelX();
            this.labelX3 = new DevComponents.DotNetBar.LabelX();
            this.btnxoa = new DevComponents.DotNetBar.ButtonX();
            this.buttonX5 = new DevComponents.DotNetBar.ButtonX();
            this.btnthoat = new DevComponents.DotNetBar.ButtonX();
            this.btncapnhat = new DevComponents.DotNetBar.ButtonX();
            this.grphienthi = new DevComponents.DotNetBar.Controls.GroupPanel();
            this.txtid = new DevComponents.DotNetBar.Controls.TextBoxX();
            this.bdndieukhien = new System.Windows.Forms.BindingNavigator(this.components);
            this.bindingNavigatorCountItem = new System.Windows.Forms.ToolStripLabel();
            this.bindingNavigatorMoveFirstItem = new System.Windows.Forms.ToolStripButton();
            this.bindingNavigatorMovePreviousItem = new System.Windows.Forms.ToolStripButton();
            this.bindingNavigatorSeparator = new System.Windows.Forms.ToolStripSeparator();
            this.bindingNavigatorPositionItem = new System.Windows.Forms.ToolStripTextBox();
            this.bindingNavigatorSeparator1 = new System.Windows.Forms.ToolStripSeparator();
            this.bindingNavigatorMoveNextItem = new System.Windows.Forms.ToolStripButton();
            this.bindingNavigatorMoveLastItem = new System.Windows.Forms.ToolStripButton();
            this.bindingNavigatorSeparator2 = new System.Windows.Forms.ToolStripSeparator();
            this.toolStripButton1 = new System.Windows.Forms.ToolStripButton();
            this.gridhienthi = new DevComponents.DotNetBar.Controls.DataGridViewX();
            this.mamon = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.sophach = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.diem = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.id = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.buttonX6 = new DevComponents.DotNetBar.ButtonX();
            this.txtdiem = new DevComponents.DotNetBar.Controls.TextBoxX();
            this.txtphach = new DevComponents.DotNetBar.Controls.TextBoxX();
            this.grphienthi.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.bdndieukhien)).BeginInit();
            this.bdndieukhien.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.gridhienthi)).BeginInit();
            this.SuspendLayout();
            // 
            // labelX5
            // 
            this.labelX5.Font = new System.Drawing.Font("Microsoft Sans Serif", 8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.labelX5.ForeColor = System.Drawing.Color.Red;
            this.labelX5.Location = new System.Drawing.Point(160, 364);
            this.labelX5.Name = "labelX5";
            this.labelX5.Size = new System.Drawing.Size(251, 23);
            this.labelX5.TabIndex = 4;
            this.labelX5.Text = "Lưu ý : Môn Toán : 1 , Môn Lý : 2 , Môn Hóa : 3";
            // 
            // labelX1
            // 
            this.labelX1.Location = new System.Drawing.Point(9, 20);
            this.labelX1.Name = "labelX1";
            this.labelX1.Size = new System.Drawing.Size(61, 23);
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
            this.cmbmon.Location = new System.Drawing.Point(9, 44);
            this.cmbmon.Name = "cmbmon";
            this.cmbmon.Size = new System.Drawing.Size(95, 20);
            this.cmbmon.TabIndex = 3;
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
            this.labelX2.Location = new System.Drawing.Point(139, 19);
            this.labelX2.Name = "labelX2";
            this.labelX2.Size = new System.Drawing.Size(61, 23);
            this.labelX2.TabIndex = 5;
            this.labelX2.Text = "Nhập Phách";
            // 
            // labelX3
            // 
            this.labelX3.Location = new System.Drawing.Point(283, 19);
            this.labelX3.Name = "labelX3";
            this.labelX3.Size = new System.Drawing.Size(61, 23);
            this.labelX3.TabIndex = 5;
            this.labelX3.Text = "Nhập Điểm";
            // 
            // btnxoa
            // 
            this.btnxoa.AccessibleRole = System.Windows.Forms.AccessibleRole.PushButton;
            this.btnxoa.ColorTable = DevComponents.DotNetBar.eButtonColor.OrangeWithBackground;
            this.btnxoa.Image = ((System.Drawing.Image)(resources.GetObject("btnxoa.Image")));
            this.btnxoa.Location = new System.Drawing.Point(282, 75);
            this.btnxoa.Name = "btnxoa";
            this.btnxoa.Size = new System.Drawing.Size(75, 23);
            this.btnxoa.TabIndex = 22;
            this.btnxoa.Text = "Xóa";
            this.btnxoa.Click += new System.EventHandler(this.btnxoa_Click);
            // 
            // buttonX5
            // 
            this.buttonX5.AccessibleRole = System.Windows.Forms.AccessibleRole.PushButton;
            this.buttonX5.ColorTable = DevComponents.DotNetBar.eButtonColor.OrangeWithBackground;
            this.buttonX5.Image = ((System.Drawing.Image)(resources.GetObject("buttonX5.Image")));
            this.buttonX5.Location = new System.Drawing.Point(105, 75);
            this.buttonX5.Name = "buttonX5";
            this.buttonX5.Size = new System.Drawing.Size(75, 23);
            this.buttonX5.TabIndex = 20;
            this.buttonX5.Text = "Lưu Lại";
            this.buttonX5.Click += new System.EventHandler(this.buttonX5_Click);
            // 
            // btnthoat
            // 
            this.btnthoat.AccessibleRole = System.Windows.Forms.AccessibleRole.PushButton;
            this.btnthoat.ColorTable = DevComponents.DotNetBar.eButtonColor.OrangeWithBackground;
            this.btnthoat.Image = ((System.Drawing.Image)(resources.GetObject("btnthoat.Image")));
            this.btnthoat.Location = new System.Drawing.Point(376, 75);
            this.btnthoat.Name = "btnthoat";
            this.btnthoat.Size = new System.Drawing.Size(75, 23);
            this.btnthoat.TabIndex = 24;
            this.btnthoat.Tag = "";
            this.btnthoat.Text = "Thoát";
            this.btnthoat.Click += new System.EventHandler(this.btnthoat_Click);
            // 
            // btncapnhat
            // 
            this.btncapnhat.AccessibleRole = System.Windows.Forms.AccessibleRole.PushButton;
            this.btncapnhat.ColorTable = DevComponents.DotNetBar.eButtonColor.OrangeWithBackground;
            this.btncapnhat.Image = ((System.Drawing.Image)(resources.GetObject("btncapnhat.Image")));
            this.btncapnhat.Location = new System.Drawing.Point(192, 75);
            this.btncapnhat.Name = "btncapnhat";
            this.btncapnhat.Size = new System.Drawing.Size(75, 23);
            this.btncapnhat.TabIndex = 21;
            this.btncapnhat.Text = "Cập nhật";
            this.btncapnhat.Click += new System.EventHandler(this.btncapnhat_Click);
            // 
            // grphienthi
            // 
            this.grphienthi.CanvasColor = System.Drawing.SystemColors.Control;
            this.grphienthi.ColorSchemeStyle = DevComponents.DotNetBar.eDotNetBarStyle.Office2007;
            this.grphienthi.Controls.Add(this.txtid);
            this.grphienthi.Controls.Add(this.bdndieukhien);
            this.grphienthi.Controls.Add(this.gridhienthi);
            this.grphienthi.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.grphienthi.Location = new System.Drawing.Point(0, 104);
            this.grphienthi.Name = "grphienthi";
            this.grphienthi.Size = new System.Drawing.Size(471, 399);
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
            // txtid
            // 
            // 
            // 
            // 
            this.txtid.Border.Class = "TextBoxBorder";
            this.txtid.Location = new System.Drawing.Point(373, 66);
            this.txtid.Name = "txtid";
            this.txtid.Size = new System.Drawing.Size(10, 20);
            this.txtid.TabIndex = 27;
            this.txtid.Visible = false;
            // 
            // bdndieukhien
            // 
            this.bdndieukhien.AddNewItem = null;
            this.bdndieukhien.CountItem = this.bindingNavigatorCountItem;
            this.bdndieukhien.DeleteItem = null;
            this.bdndieukhien.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.bindingNavigatorMoveFirstItem,
            this.bindingNavigatorMovePreviousItem,
            this.bindingNavigatorSeparator,
            this.bindingNavigatorPositionItem,
            this.bindingNavigatorCountItem,
            this.bindingNavigatorSeparator1,
            this.bindingNavigatorMoveNextItem,
            this.bindingNavigatorMoveLastItem,
            this.bindingNavigatorSeparator2,
            this.toolStripButton1});
            this.bdndieukhien.Location = new System.Drawing.Point(0, 0);
            this.bdndieukhien.MoveFirstItem = this.bindingNavigatorMoveFirstItem;
            this.bdndieukhien.MoveLastItem = this.bindingNavigatorMoveLastItem;
            this.bdndieukhien.MoveNextItem = this.bindingNavigatorMoveNextItem;
            this.bdndieukhien.MovePreviousItem = this.bindingNavigatorMovePreviousItem;
            this.bdndieukhien.Name = "bdndieukhien";
            this.bdndieukhien.PositionItem = this.bindingNavigatorPositionItem;
            this.bdndieukhien.Size = new System.Drawing.Size(465, 25);
            this.bdndieukhien.TabIndex = 1;
            this.bdndieukhien.Text = "bindingNavigator1";
            // 
            // bindingNavigatorCountItem
            // 
            this.bindingNavigatorCountItem.Name = "bindingNavigatorCountItem";
            this.bindingNavigatorCountItem.Size = new System.Drawing.Size(35, 22);
            this.bindingNavigatorCountItem.Text = "of {0}";
            this.bindingNavigatorCountItem.ToolTipText = "Total number of items";
            // 
            // bindingNavigatorMoveFirstItem
            // 
            this.bindingNavigatorMoveFirstItem.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.bindingNavigatorMoveFirstItem.Image = ((System.Drawing.Image)(resources.GetObject("bindingNavigatorMoveFirstItem.Image")));
            this.bindingNavigatorMoveFirstItem.Name = "bindingNavigatorMoveFirstItem";
            this.bindingNavigatorMoveFirstItem.RightToLeftAutoMirrorImage = true;
            this.bindingNavigatorMoveFirstItem.Size = new System.Drawing.Size(23, 22);
            this.bindingNavigatorMoveFirstItem.Text = "Move first";
            // 
            // bindingNavigatorMovePreviousItem
            // 
            this.bindingNavigatorMovePreviousItem.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.bindingNavigatorMovePreviousItem.Image = ((System.Drawing.Image)(resources.GetObject("bindingNavigatorMovePreviousItem.Image")));
            this.bindingNavigatorMovePreviousItem.Name = "bindingNavigatorMovePreviousItem";
            this.bindingNavigatorMovePreviousItem.RightToLeftAutoMirrorImage = true;
            this.bindingNavigatorMovePreviousItem.Size = new System.Drawing.Size(23, 22);
            this.bindingNavigatorMovePreviousItem.Text = "Move previous";
            // 
            // bindingNavigatorSeparator
            // 
            this.bindingNavigatorSeparator.Name = "bindingNavigatorSeparator";
            this.bindingNavigatorSeparator.Size = new System.Drawing.Size(6, 25);
            // 
            // bindingNavigatorPositionItem
            // 
            this.bindingNavigatorPositionItem.AccessibleName = "Position";
            this.bindingNavigatorPositionItem.AutoSize = false;
            this.bindingNavigatorPositionItem.Name = "bindingNavigatorPositionItem";
            this.bindingNavigatorPositionItem.Size = new System.Drawing.Size(50, 23);
            this.bindingNavigatorPositionItem.Text = "0";
            this.bindingNavigatorPositionItem.ToolTipText = "Current position";
            // 
            // bindingNavigatorSeparator1
            // 
            this.bindingNavigatorSeparator1.Name = "bindingNavigatorSeparator1";
            this.bindingNavigatorSeparator1.Size = new System.Drawing.Size(6, 25);
            // 
            // bindingNavigatorMoveNextItem
            // 
            this.bindingNavigatorMoveNextItem.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.bindingNavigatorMoveNextItem.Image = ((System.Drawing.Image)(resources.GetObject("bindingNavigatorMoveNextItem.Image")));
            this.bindingNavigatorMoveNextItem.Name = "bindingNavigatorMoveNextItem";
            this.bindingNavigatorMoveNextItem.RightToLeftAutoMirrorImage = true;
            this.bindingNavigatorMoveNextItem.Size = new System.Drawing.Size(23, 22);
            this.bindingNavigatorMoveNextItem.Text = "Move next";
            // 
            // bindingNavigatorMoveLastItem
            // 
            this.bindingNavigatorMoveLastItem.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.bindingNavigatorMoveLastItem.Image = ((System.Drawing.Image)(resources.GetObject("bindingNavigatorMoveLastItem.Image")));
            this.bindingNavigatorMoveLastItem.Name = "bindingNavigatorMoveLastItem";
            this.bindingNavigatorMoveLastItem.RightToLeftAutoMirrorImage = true;
            this.bindingNavigatorMoveLastItem.Size = new System.Drawing.Size(23, 22);
            this.bindingNavigatorMoveLastItem.Text = "Move last";
            // 
            // bindingNavigatorSeparator2
            // 
            this.bindingNavigatorSeparator2.Name = "bindingNavigatorSeparator2";
            this.bindingNavigatorSeparator2.Size = new System.Drawing.Size(6, 25);
            // 
            // toolStripButton1
            // 
            this.toolStripButton1.Image = ((System.Drawing.Image)(resources.GetObject("toolStripButton1.Image")));
            this.toolStripButton1.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.toolStripButton1.Name = "toolStripButton1";
            this.toolStripButton1.Size = new System.Drawing.Size(74, 22);
            this.toolStripButton1.Text = "Làm Mới";
            this.toolStripButton1.ToolTipText = "Tải Lại cơ sở dữ liệu và bảng";
            this.toolStripButton1.Click += new System.EventHandler(this.toolStripButton1_Click);
            // 
            // gridhienthi
            // 
            this.gridhienthi.AllowUserToAddRows = false;
            this.gridhienthi.AllowUserToDeleteRows = false;
            this.gridhienthi.BackgroundColor = System.Drawing.Color.White;
            this.gridhienthi.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.gridhienthi.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.mamon,
            this.sophach,
            this.diem,
            this.id});
            dataGridViewCellStyle1.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle1.BackColor = System.Drawing.SystemColors.Window;
            dataGridViewCellStyle1.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle1.ForeColor = System.Drawing.SystemColors.ControlText;
            dataGridViewCellStyle1.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle1.SelectionForeColor = System.Drawing.SystemColors.ControlText;
            dataGridViewCellStyle1.WrapMode = System.Windows.Forms.DataGridViewTriState.False;
            this.gridhienthi.DefaultCellStyle = dataGridViewCellStyle1;
            this.gridhienthi.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.gridhienthi.GridColor = System.Drawing.Color.FromArgb(((int)(((byte)(208)))), ((int)(((byte)(215)))), ((int)(((byte)(229)))));
            this.gridhienthi.Location = new System.Drawing.Point(0, 41);
            this.gridhienthi.Name = "gridhienthi";
            this.gridhienthi.ReadOnly = true;
            this.gridhienthi.Size = new System.Drawing.Size(465, 352);
            this.gridhienthi.TabIndex = 0;
            this.gridhienthi.RowEnter += new System.Windows.Forms.DataGridViewCellEventHandler(this.gridhienthi_RowEnter);
            // 
            // mamon
            // 
            this.mamon.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.Fill;
            this.mamon.DataPropertyName = "mamon";
            this.mamon.HeaderText = "Mã môn";
            this.mamon.Name = "mamon";
            this.mamon.ReadOnly = true;
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
            this.diem.ReadOnly = true;
            // 
            // id
            // 
            this.id.DataPropertyName = "id";
            this.id.HeaderText = "id";
            this.id.MinimumWidth = 2;
            this.id.Name = "id";
            this.id.ReadOnly = true;
            this.id.Width = 2;
            // 
            // buttonX6
            // 
            this.buttonX6.AccessibleRole = System.Windows.Forms.AccessibleRole.PushButton;
            this.buttonX6.ColorTable = DevComponents.DotNetBar.eButtonColor.OrangeWithBackground;
            this.buttonX6.Image = ((System.Drawing.Image)(resources.GetObject("buttonX6.Image")));
            this.buttonX6.Location = new System.Drawing.Point(22, 75);
            this.buttonX6.Name = "buttonX6";
            this.buttonX6.Size = new System.Drawing.Size(75, 23);
            this.buttonX6.TabIndex = 26;
            this.buttonX6.Text = "Nhập lại";
            this.buttonX6.Click += new System.EventHandler(this.buttonX6_Click);
            // 
            // txtdiem
            // 
            // 
            // 
            // 
            this.txtdiem.Border.Class = "TextBoxBorder";
            this.txtdiem.Location = new System.Drawing.Point(283, 44);
            this.txtdiem.Name = "txtdiem";
            this.txtdiem.Size = new System.Drawing.Size(112, 20);
            this.txtdiem.TabIndex = 6;
            this.txtdiem.WatermarkText = "Nhập số điểm";
            // 
            // txtphach
            // 
            // 
            // 
            // 
            this.txtphach.Border.Class = "TextBoxBorder";
            this.txtphach.Location = new System.Drawing.Point(139, 44);
            this.txtphach.Name = "txtphach";
            this.txtphach.Size = new System.Drawing.Size(95, 20);
            this.txtphach.TabIndex = 6;
            this.txtphach.WatermarkText = "Nhập số phách";
            // 
            // FrmDiem
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(471, 503);
            this.Controls.Add(this.buttonX6);
            this.Controls.Add(this.grphienthi);
            this.Controls.Add(this.btnxoa);
            this.Controls.Add(this.buttonX5);
            this.Controls.Add(this.btnthoat);
            this.Controls.Add(this.btncapnhat);
            this.Controls.Add(this.txtdiem);
            this.Controls.Add(this.txtphach);
            this.Controls.Add(this.labelX5);
            this.Controls.Add(this.labelX3);
            this.Controls.Add(this.labelX2);
            this.Controls.Add(this.labelX1);
            this.Controls.Add(this.cmbmon);
            this.DoubleBuffered = true;
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle;
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.MaximizeBox = false;
            this.Name = "FrmDiem";
            this.Text = "Nhập Điểm ";
            this.Load += new System.EventHandler(this.FrmDiem_Load);
            this.grphienthi.ResumeLayout(false);
            this.grphienthi.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.bdndieukhien)).EndInit();
            this.bdndieukhien.ResumeLayout(false);
            this.bdndieukhien.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.gridhienthi)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevComponents.DotNetBar.LabelX labelX5;
        private DevComponents.DotNetBar.LabelX labelX1;
        private DevComponents.DotNetBar.Controls.ComboBoxEx cmbmon;
        private DevComponents.Editors.ComboItem comboItem4;
        private DevComponents.Editors.ComboItem comboItem5;
        private DevComponents.Editors.ComboItem comboItem6;
        private DevComponents.DotNetBar.LabelX labelX2;
        private DevComponents.DotNetBar.LabelX labelX3;
        private DevComponents.DotNetBar.ButtonX btnxoa;
        private DevComponents.DotNetBar.ButtonX buttonX5;
        private DevComponents.DotNetBar.ButtonX btnthoat;
        private DevComponents.DotNetBar.ButtonX btncapnhat;
        private DevComponents.DotNetBar.Controls.GroupPanel grphienthi;
        private System.Windows.Forms.BindingNavigator bdndieukhien;
        private System.Windows.Forms.ToolStripLabel bindingNavigatorCountItem;
        private System.Windows.Forms.ToolStripButton bindingNavigatorMoveFirstItem;
        private System.Windows.Forms.ToolStripButton bindingNavigatorMovePreviousItem;
        private System.Windows.Forms.ToolStripSeparator bindingNavigatorSeparator;
        private System.Windows.Forms.ToolStripTextBox bindingNavigatorPositionItem;
        private System.Windows.Forms.ToolStripSeparator bindingNavigatorSeparator1;
        private System.Windows.Forms.ToolStripButton bindingNavigatorMoveNextItem;
        private System.Windows.Forms.ToolStripButton bindingNavigatorMoveLastItem;
        private System.Windows.Forms.ToolStripSeparator bindingNavigatorSeparator2;
        private DevComponents.DotNetBar.Controls.DataGridViewX gridhienthi;
        private DevComponents.DotNetBar.ButtonX buttonX6;
        private DevComponents.DotNetBar.Controls.TextBoxX txtid;
        private System.Windows.Forms.DataGridViewTextBoxColumn mamon;
        private System.Windows.Forms.DataGridViewTextBoxColumn sophach;
        private System.Windows.Forms.DataGridViewTextBoxColumn diem;
        private System.Windows.Forms.DataGridViewTextBoxColumn id;
        private System.Windows.Forms.ToolStripButton toolStripButton1;
        private DevComponents.DotNetBar.Controls.TextBoxX txtdiem;
        private DevComponents.DotNetBar.Controls.TextBoxX txtphach;
    }
}