namespace DOAN_QLTUYENSINHDH.FormQuanLy
{
    partial class FrmTKThiSinh
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
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle1 = new System.Windows.Forms.DataGridViewCellStyle();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FrmTKThiSinh));
            this.gridhienthi = new DevComponents.DotNetBar.Controls.DataGridViewX();
            this.ma = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.sobd = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.hovaten = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.ngaysinh = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.gioitinh = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.cmt = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.hokhau = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dantoc = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dt_ut = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.khuvuc = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.nganhdk = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.groupPanel1 = new DevComponents.DotNetBar.Controls.GroupPanel();
            this.cmbnam = new DevComponents.DotNetBar.Controls.ComboBoxEx();
            this.labelX8 = new DevComponents.DotNetBar.LabelX();
            this.textBoxX2 = new DevComponents.DotNetBar.Controls.TextBoxX();
            this.textBoxX1 = new DevComponents.DotNetBar.Controls.TextBoxX();
            this.labelX2 = new DevComponents.DotNetBar.LabelX();
            this.labelX1 = new DevComponents.DotNetBar.LabelX();
            this.txtid = new DevComponents.DotNetBar.Controls.TextBoxX();
            this.contextMenuBar1 = new DevComponents.DotNetBar.ContextMenuBar();
            this.buttonItem1 = new DevComponents.DotNetBar.ButtonItem();
            this.buttonItem2 = new DevComponents.DotNetBar.ButtonItem();
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
            ((System.ComponentModel.ISupportInitialize)(this.gridhienthi)).BeginInit();
            this.groupPanel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.contextMenuBar1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bdndieukhien)).BeginInit();
            this.bdndieukhien.SuspendLayout();
            this.SuspendLayout();
            // 
            // gridhienthi
            // 
            this.gridhienthi.AllowUserToAddRows = false;
            this.gridhienthi.AllowUserToDeleteRows = false;
            this.gridhienthi.BackgroundColor = System.Drawing.Color.GhostWhite;
            this.gridhienthi.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.gridhienthi.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.ma,
            this.sobd,
            this.hovaten,
            this.ngaysinh,
            this.gioitinh,
            this.cmt,
            this.hokhau,
            this.dantoc,
            this.dt_ut,
            this.khuvuc,
            this.nganhdk});
            this.contextMenuBar1.SetContextMenuEx(this.gridhienthi, this.buttonItem1);
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
            this.gridhienthi.Location = new System.Drawing.Point(0, 108);
            this.gridhienthi.Name = "gridhienthi";
            this.gridhienthi.ReadOnly = true;
            this.gridhienthi.Size = new System.Drawing.Size(1057, 408);
            this.gridhienthi.TabIndex = 2;
            this.gridhienthi.RowEnter += new System.Windows.Forms.DataGridViewCellEventHandler(this.gridhienthi_RowEnter);
            // 
            // ma
            // 
            this.ma.DataPropertyName = "id";
            this.ma.HeaderText = "id";
            this.ma.Name = "ma";
            this.ma.ReadOnly = true;
            this.ma.Visible = false;
            // 
            // sobd
            // 
            this.sobd.DataPropertyName = "sobd";
            this.sobd.HeaderText = "Số BD";
            this.sobd.Name = "sobd";
            this.sobd.ReadOnly = true;
            // 
            // hovaten
            // 
            this.hovaten.DataPropertyName = "hovaten";
            this.hovaten.HeaderText = "Họ và Tên";
            this.hovaten.Name = "hovaten";
            this.hovaten.ReadOnly = true;
            // 
            // ngaysinh
            // 
            this.ngaysinh.DataPropertyName = "ngaysinh";
            this.ngaysinh.HeaderText = "Ngày Sinh";
            this.ngaysinh.Name = "ngaysinh";
            this.ngaysinh.ReadOnly = true;
            // 
            // gioitinh
            // 
            this.gioitinh.DataPropertyName = "gioitinh";
            this.gioitinh.HeaderText = "Giới Tính";
            this.gioitinh.Name = "gioitinh";
            this.gioitinh.ReadOnly = true;
            // 
            // cmt
            // 
            this.cmt.DataPropertyName = "cmt";
            this.cmt.HeaderText = "Số CMT";
            this.cmt.Name = "cmt";
            this.cmt.ReadOnly = true;
            // 
            // hokhau
            // 
            this.hokhau.DataPropertyName = "hokhau";
            this.hokhau.HeaderText = "Hộ khẩu";
            this.hokhau.Name = "hokhau";
            this.hokhau.ReadOnly = true;
            // 
            // dantoc
            // 
            this.dantoc.DataPropertyName = "dantoc";
            this.dantoc.HeaderText = "Dân Tộc";
            this.dantoc.Name = "dantoc";
            this.dantoc.ReadOnly = true;
            // 
            // dt_ut
            // 
            this.dt_ut.DataPropertyName = "dt_ut";
            this.dt_ut.HeaderText = "Đối tượng UT";
            this.dt_ut.Name = "dt_ut";
            this.dt_ut.ReadOnly = true;
            // 
            // khuvuc
            // 
            this.khuvuc.DataPropertyName = "khuvuc";
            this.khuvuc.HeaderText = "Khu Vực";
            this.khuvuc.Name = "khuvuc";
            this.khuvuc.ReadOnly = true;
            // 
            // nganhdk
            // 
            this.nganhdk.DataPropertyName = "nganhdk";
            this.nganhdk.HeaderText = "Ngành Thi";
            this.nganhdk.Name = "nganhdk";
            this.nganhdk.ReadOnly = true;
            // 
            // groupPanel1
            // 
            this.groupPanel1.CanvasColor = System.Drawing.SystemColors.Control;
            this.groupPanel1.ColorSchemeStyle = DevComponents.DotNetBar.eDotNetBarStyle.Office2007;
            this.groupPanel1.Controls.Add(this.cmbnam);
            this.groupPanel1.Controls.Add(this.labelX8);
            this.groupPanel1.Controls.Add(this.textBoxX2);
            this.groupPanel1.Controls.Add(this.textBoxX1);
            this.groupPanel1.Controls.Add(this.labelX2);
            this.groupPanel1.Controls.Add(this.labelX1);
            this.groupPanel1.Dock = System.Windows.Forms.DockStyle.Top;
            this.groupPanel1.Location = new System.Drawing.Point(0, 0);
            this.groupPanel1.Name = "groupPanel1";
            this.groupPanel1.Size = new System.Drawing.Size(1057, 80);
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
            this.groupPanel1.TabIndex = 4;
            this.groupPanel1.Text = "Thông Tin Tìm Kiếm";
            // 
            // cmbnam
            // 
            this.cmbnam.DisplayMember = "Text";
            this.cmbnam.DrawMode = System.Windows.Forms.DrawMode.OwnerDrawFixed;
            this.cmbnam.FormattingEnabled = true;
            this.cmbnam.ItemHeight = 14;
            this.cmbnam.Location = new System.Drawing.Point(65, 13);
            this.cmbnam.Name = "cmbnam";
            this.cmbnam.Size = new System.Drawing.Size(103, 20);
            this.cmbnam.TabIndex = 10;
            this.cmbnam.SelectedIndexChanged += new System.EventHandler(this.cmbnam_SelectedIndexChanged);
            // 
            // labelX8
            // 
            this.labelX8.BackColor = System.Drawing.Color.Transparent;
            this.labelX8.Location = new System.Drawing.Point(9, 15);
            this.labelX8.Name = "labelX8";
            this.labelX8.Size = new System.Drawing.Size(50, 18);
            this.labelX8.TabIndex = 9;
            this.labelX8.Text = "Năm Thi";
            // 
            // textBoxX2
            // 
            // 
            // 
            // 
            this.textBoxX2.Border.Class = "TextBoxBorder";
            this.textBoxX2.Location = new System.Drawing.Point(617, 17);
            this.textBoxX2.Name = "textBoxX2";
            this.textBoxX2.Size = new System.Drawing.Size(177, 20);
            this.textBoxX2.TabIndex = 1;
            this.textBoxX2.WatermarkText = "Nhập tên cần tìm";
            this.textBoxX2.TextChanged += new System.EventHandler(this.textBoxX2_TextChanged);
            // 
            // textBoxX1
            // 
            // 
            // 
            // 
            this.textBoxX1.Border.Class = "TextBoxBorder";
            this.textBoxX1.Location = new System.Drawing.Point(313, 15);
            this.textBoxX1.Name = "textBoxX1";
            this.textBoxX1.Size = new System.Drawing.Size(136, 20);
            this.textBoxX1.TabIndex = 0;
            this.textBoxX1.WatermarkText = "Nhập số báo danh";
            this.textBoxX1.TextChanged += new System.EventHandler(this.textBoxX1_TextChanged);
            // 
            // labelX2
            // 
            this.labelX2.BackColor = System.Drawing.Color.Transparent;
            this.labelX2.Location = new System.Drawing.Point(515, 14);
            this.labelX2.Name = "labelX2";
            this.labelX2.Size = new System.Drawing.Size(75, 23);
            this.labelX2.TabIndex = 1;
            this.labelX2.Text = "Tìm theo tên";
            // 
            // labelX1
            // 
            this.labelX1.BackColor = System.Drawing.Color.Transparent;
            this.labelX1.Location = new System.Drawing.Point(220, 14);
            this.labelX1.Name = "labelX1";
            this.labelX1.Size = new System.Drawing.Size(75, 23);
            this.labelX1.TabIndex = 1;
            this.labelX1.Text = "Tìm theo SBD";
            // 
            // txtid
            // 
            // 
            // 
            // 
            this.txtid.Border.Class = "TextBoxBorder";
            this.txtid.Location = new System.Drawing.Point(1036, 126);
            this.txtid.Name = "txtid";
            this.txtid.Size = new System.Drawing.Size(10, 20);
            this.txtid.TabIndex = 3;
            this.txtid.Visible = false;
            // 
            // contextMenuBar1
            // 
            this.contextMenuBar1.Items.AddRange(new DevComponents.DotNetBar.BaseItem[] {
            this.buttonItem1});
            this.contextMenuBar1.Location = new System.Drawing.Point(333, 230);
            this.contextMenuBar1.Name = "contextMenuBar1";
            this.contextMenuBar1.Size = new System.Drawing.Size(67, 25);
            this.contextMenuBar1.Stretch = true;
            this.contextMenuBar1.Style = DevComponents.DotNetBar.eDotNetBarStyle.Office2003;
            this.contextMenuBar1.TabIndex = 5;
            this.contextMenuBar1.TabStop = false;
            this.contextMenuBar1.Text = "contextMenuBar1";
            // 
            // buttonItem1
            // 
            this.buttonItem1.AutoExpandOnClick = true;
            this.buttonItem1.ButtonStyle = DevComponents.DotNetBar.eButtonStyle.ImageAndText;
            this.buttonItem1.Name = "buttonItem1";
            this.buttonItem1.SubItems.AddRange(new DevComponents.DotNetBar.BaseItem[] {
            this.buttonItem2});
            this.buttonItem1.Text = "Menu";
            this.buttonItem1.Click += new System.EventHandler(this.buttonItem1_Click);
            // 
            // buttonItem2
            // 
            this.buttonItem2.Image = ((System.Drawing.Image)(resources.GetObject("buttonItem2.Image")));
            this.buttonItem2.Name = "buttonItem2";
            this.buttonItem2.Shortcuts.Add(DevComponents.DotNetBar.eShortcut.CtrlM);
            this.buttonItem2.Text = "Chi tiết";
            this.buttonItem2.Click += new System.EventHandler(this.buttonItem2_Click);
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
            this.bindingNavigatorSeparator2});
            this.bdndieukhien.Location = new System.Drawing.Point(0, 80);
            this.bdndieukhien.MoveFirstItem = this.bindingNavigatorMoveFirstItem;
            this.bdndieukhien.MoveLastItem = this.bindingNavigatorMoveLastItem;
            this.bdndieukhien.MoveNextItem = this.bindingNavigatorMoveNextItem;
            this.bdndieukhien.MovePreviousItem = this.bindingNavigatorMovePreviousItem;
            this.bdndieukhien.Name = "bdndieukhien";
            this.bdndieukhien.PositionItem = this.bindingNavigatorPositionItem;
            this.bdndieukhien.Size = new System.Drawing.Size(1057, 25);
            this.bdndieukhien.TabIndex = 6;
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
            // FrmTKThiSinh
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1057, 516);
            this.Controls.Add(this.bdndieukhien);
            this.Controls.Add(this.txtid);
            this.Controls.Add(this.contextMenuBar1);
            this.Controls.Add(this.groupPanel1);
            this.Controls.Add(this.gridhienthi);
            this.DoubleBuffered = true;
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle;
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.MaximizeBox = false;
            this.Name = "FrmTKThiSinh";
            this.Text = "Tìm kiếm thông tin thí sinh";
            this.Load += new System.EventHandler(this.FrmTKThiSinh_Load);
            ((System.ComponentModel.ISupportInitialize)(this.gridhienthi)).EndInit();
            this.groupPanel1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.contextMenuBar1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bdndieukhien)).EndInit();
            this.bdndieukhien.ResumeLayout(false);
            this.bdndieukhien.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevComponents.DotNetBar.Controls.DataGridViewX gridhienthi;
        private DevComponents.DotNetBar.Controls.GroupPanel groupPanel1;
        private DevComponents.DotNetBar.Controls.TextBoxX textBoxX1;
        private DevComponents.DotNetBar.LabelX labelX1;
        private DevComponents.DotNetBar.Controls.TextBoxX textBoxX2;
        private DevComponents.DotNetBar.LabelX labelX2;
        private DevComponents.DotNetBar.ContextMenuBar contextMenuBar1;
        private DevComponents.DotNetBar.ButtonItem buttonItem1;
        private DevComponents.DotNetBar.ButtonItem buttonItem2;
        private DevComponents.DotNetBar.Controls.TextBoxX txtid;
        private DevComponents.DotNetBar.Controls.ComboBoxEx cmbnam;
        private DevComponents.DotNetBar.LabelX labelX8;
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
        private System.Windows.Forms.DataGridViewTextBoxColumn ma;
        private System.Windows.Forms.DataGridViewTextBoxColumn sobd;
        private System.Windows.Forms.DataGridViewTextBoxColumn hovaten;
        private System.Windows.Forms.DataGridViewTextBoxColumn ngaysinh;
        private System.Windows.Forms.DataGridViewTextBoxColumn gioitinh;
        private System.Windows.Forms.DataGridViewTextBoxColumn cmt;
        private System.Windows.Forms.DataGridViewTextBoxColumn hokhau;
        private System.Windows.Forms.DataGridViewTextBoxColumn dantoc;
        private System.Windows.Forms.DataGridViewTextBoxColumn dt_ut;
        private System.Windows.Forms.DataGridViewTextBoxColumn khuvuc;
        private System.Windows.Forms.DataGridViewTextBoxColumn nganhdk;
    }
}