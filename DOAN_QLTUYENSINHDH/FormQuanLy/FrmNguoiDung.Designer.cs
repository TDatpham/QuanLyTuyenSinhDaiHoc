namespace DOAN_QLTUYENSINHDH.FormQuanLy
{
    partial class FrmNguoiDung
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
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle2 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle5 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle6 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle3 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle4 = new System.Windows.Forms.DataGridViewCellStyle();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FrmNguoiDung));
            this.dgvHienThi = new DevComponents.DotNetBar.Controls.DataGridViewX();
            this.taikhoan = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.matkhau = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.quyen = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.quenmk = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.bdndieukhien = new System.Windows.Forms.BindingNavigator(this.components);
            this.bindingNavigatorCountItem1 = new System.Windows.Forms.ToolStripLabel();
            this.bindingNavigatorMoveFirstItem1 = new System.Windows.Forms.ToolStripButton();
            this.bindingNavigatorMovePreviousItem1 = new System.Windows.Forms.ToolStripButton();
            this.bindingNavigatorSeparator3 = new System.Windows.Forms.ToolStripSeparator();
            this.bindingNavigatorPositionItem1 = new System.Windows.Forms.ToolStripTextBox();
            this.bindingNavigatorSeparator4 = new System.Windows.Forms.ToolStripSeparator();
            this.bindingNavigatorMoveNextItem1 = new System.Windows.Forms.ToolStripButton();
            this.bindingNavigatorMoveLastItem1 = new System.Windows.Forms.ToolStripButton();
            this.bindingNavigatorSeparator5 = new System.Windows.Forms.ToolStripSeparator();
            this.grpdieukhien = new DevComponents.DotNetBar.Controls.GroupPanel();
            this.buttonX4 = new DevComponents.DotNetBar.ButtonX();
            this.ckbhien = new DevComponents.DotNetBar.Controls.CheckBoxX();
            this.btnxoa = new DevComponents.DotNetBar.ButtonX();
            this.btncapnhat = new DevComponents.DotNetBar.ButtonX();
            this.buttonX2 = new DevComponents.DotNetBar.ButtonX();
            this.labelX3 = new DevComponents.DotNetBar.LabelX();
            this.labelX4 = new DevComponents.DotNetBar.LabelX();
            this.labelX1 = new DevComponents.DotNetBar.LabelX();
            this.txtmk = new DevComponents.DotNetBar.Controls.TextBoxX();
            this.txttendn = new DevComponents.DotNetBar.Controls.TextBoxX();
            this.btnluu = new DevComponents.DotNetBar.ButtonX();
            this.cmbquyen = new DevComponents.DotNetBar.Controls.ComboBoxEx();
            ((System.ComponentModel.ISupportInitialize)(this.dgvHienThi)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bdndieukhien)).BeginInit();
            this.bdndieukhien.SuspendLayout();
            this.grpdieukhien.SuspendLayout();
            this.SuspendLayout();
            // 
            // dgvHienThi
            // 
            this.dgvHienThi.AllowUserToAddRows = false;
            this.dgvHienThi.AllowUserToDeleteRows = false;
            dataGridViewCellStyle1.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.dgvHienThi.AlternatingRowsDefaultCellStyle = dataGridViewCellStyle1;
            this.dgvHienThi.BackgroundColor = System.Drawing.Color.FromArgb(((int)(((byte)(238)))), ((int)(((byte)(243)))), ((int)(((byte)(250)))));
            dataGridViewCellStyle2.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle2.BackColor = System.Drawing.SystemColors.Control;
            dataGridViewCellStyle2.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle2.ForeColor = System.Drawing.SystemColors.WindowText;
            dataGridViewCellStyle2.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle2.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle2.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.dgvHienThi.ColumnHeadersDefaultCellStyle = dataGridViewCellStyle2;
            this.dgvHienThi.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvHienThi.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.taikhoan,
            this.matkhau,
            this.quyen,
            this.quenmk});
            dataGridViewCellStyle5.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle5.BackColor = System.Drawing.SystemColors.Window;
            dataGridViewCellStyle5.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle5.ForeColor = System.Drawing.SystemColors.ControlText;
            dataGridViewCellStyle5.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle5.SelectionForeColor = System.Drawing.SystemColors.ControlText;
            dataGridViewCellStyle5.WrapMode = System.Windows.Forms.DataGridViewTriState.False;
            this.dgvHienThi.DefaultCellStyle = dataGridViewCellStyle5;
            this.dgvHienThi.GridColor = System.Drawing.Color.FromArgb(((int)(((byte)(208)))), ((int)(((byte)(215)))), ((int)(((byte)(229)))));
            this.dgvHienThi.Location = new System.Drawing.Point(0, 28);
            this.dgvHienThi.Name = "dgvHienThi";
            this.dgvHienThi.ReadOnly = true;
            dataGridViewCellStyle6.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle6.BackColor = System.Drawing.SystemColors.Control;
            dataGridViewCellStyle6.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle6.ForeColor = System.Drawing.SystemColors.WindowText;
            dataGridViewCellStyle6.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle6.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle6.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.dgvHienThi.RowHeadersDefaultCellStyle = dataGridViewCellStyle6;
            this.dgvHienThi.ScrollBars = System.Windows.Forms.ScrollBars.Vertical;
            this.dgvHienThi.Size = new System.Drawing.Size(660, 193);
            this.dgvHienThi.TabIndex = 6;
            this.dgvHienThi.RowEnter += new System.Windows.Forms.DataGridViewCellEventHandler(this.dgvHienThi_RowEnter);
            this.dgvHienThi.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dgvHienThi_CellContentClick);
            // 
            // taikhoan
            // 
            this.taikhoan.DataPropertyName = "taikhoan";
            dataGridViewCellStyle3.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.taikhoan.DefaultCellStyle = dataGridViewCellStyle3;
            this.taikhoan.HeaderText = "Tài Khoản";
            this.taikhoan.Name = "taikhoan";
            this.taikhoan.ReadOnly = true;
            this.taikhoan.Resizable = System.Windows.Forms.DataGridViewTriState.True;
            this.taikhoan.Width = 150;
            // 
            // matkhau
            // 
            this.matkhau.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.Fill;
            this.matkhau.DataPropertyName = "matkhau";
            dataGridViewCellStyle4.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.matkhau.DefaultCellStyle = dataGridViewCellStyle4;
            this.matkhau.HeaderText = "Mật Khẩu";
            this.matkhau.MaxInputLength = 1000;
            this.matkhau.Name = "matkhau";
            this.matkhau.ReadOnly = true;
            // 
            // quyen
            // 
            this.quyen.DataPropertyName = "quyen";
            this.quyen.HeaderText = "Quyền";
            this.quyen.Name = "quyen";
            this.quyen.ReadOnly = true;
            this.quyen.Resizable = System.Windows.Forms.DataGridViewTriState.True;
            // 
            // quenmk
            // 
            this.quenmk.DataPropertyName = "quenmk";
            this.quenmk.HeaderText = "Quên MK";
            this.quenmk.Name = "quenmk";
            this.quenmk.ReadOnly = true;
            this.quenmk.Visible = false;
            // 
            // bdndieukhien
            // 
            this.bdndieukhien.AddNewItem = null;
            this.bdndieukhien.CountItem = this.bindingNavigatorCountItem1;
            this.bdndieukhien.DeleteItem = null;
            this.bdndieukhien.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.bindingNavigatorMoveFirstItem1,
            this.bindingNavigatorMovePreviousItem1,
            this.bindingNavigatorSeparator3,
            this.bindingNavigatorPositionItem1,
            this.bindingNavigatorCountItem1,
            this.bindingNavigatorSeparator4,
            this.bindingNavigatorMoveNextItem1,
            this.bindingNavigatorMoveLastItem1,
            this.bindingNavigatorSeparator5});
            this.bdndieukhien.Location = new System.Drawing.Point(0, 0);
            this.bdndieukhien.MoveFirstItem = this.bindingNavigatorMoveFirstItem1;
            this.bdndieukhien.MoveLastItem = this.bindingNavigatorMoveLastItem1;
            this.bdndieukhien.MoveNextItem = this.bindingNavigatorMoveNextItem1;
            this.bdndieukhien.MovePreviousItem = this.bindingNavigatorMovePreviousItem1;
            this.bdndieukhien.Name = "bdndieukhien";
            this.bdndieukhien.PositionItem = this.bindingNavigatorPositionItem1;
            this.bdndieukhien.Size = new System.Drawing.Size(660, 25);
            this.bdndieukhien.TabIndex = 8;
            this.bdndieukhien.Text = "bindingNavigator1";
            // 
            // bindingNavigatorCountItem1
            // 
            this.bindingNavigatorCountItem1.Name = "bindingNavigatorCountItem1";
            this.bindingNavigatorCountItem1.Size = new System.Drawing.Size(35, 22);
            this.bindingNavigatorCountItem1.Text = "of {0}";
            this.bindingNavigatorCountItem1.ToolTipText = "Total number of items";
            // 
            // bindingNavigatorMoveFirstItem1
            // 
            this.bindingNavigatorMoveFirstItem1.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.bindingNavigatorMoveFirstItem1.Image = ((System.Drawing.Image)(resources.GetObject("bindingNavigatorMoveFirstItem1.Image")));
            this.bindingNavigatorMoveFirstItem1.Name = "bindingNavigatorMoveFirstItem1";
            this.bindingNavigatorMoveFirstItem1.RightToLeftAutoMirrorImage = true;
            this.bindingNavigatorMoveFirstItem1.Size = new System.Drawing.Size(23, 22);
            this.bindingNavigatorMoveFirstItem1.Text = "Move first";
            // 
            // bindingNavigatorMovePreviousItem1
            // 
            this.bindingNavigatorMovePreviousItem1.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.bindingNavigatorMovePreviousItem1.Image = ((System.Drawing.Image)(resources.GetObject("bindingNavigatorMovePreviousItem1.Image")));
            this.bindingNavigatorMovePreviousItem1.Name = "bindingNavigatorMovePreviousItem1";
            this.bindingNavigatorMovePreviousItem1.RightToLeftAutoMirrorImage = true;
            this.bindingNavigatorMovePreviousItem1.Size = new System.Drawing.Size(23, 22);
            this.bindingNavigatorMovePreviousItem1.Text = "Move previous";
            // 
            // bindingNavigatorSeparator3
            // 
            this.bindingNavigatorSeparator3.Name = "bindingNavigatorSeparator3";
            this.bindingNavigatorSeparator3.Size = new System.Drawing.Size(6, 25);
            // 
            // bindingNavigatorPositionItem1
            // 
            this.bindingNavigatorPositionItem1.AccessibleName = "Position";
            this.bindingNavigatorPositionItem1.AutoSize = false;
            this.bindingNavigatorPositionItem1.Name = "bindingNavigatorPositionItem1";
            this.bindingNavigatorPositionItem1.Size = new System.Drawing.Size(50, 23);
            this.bindingNavigatorPositionItem1.Text = "0";
            this.bindingNavigatorPositionItem1.ToolTipText = "Current position";
            // 
            // bindingNavigatorSeparator4
            // 
            this.bindingNavigatorSeparator4.Name = "bindingNavigatorSeparator4";
            this.bindingNavigatorSeparator4.Size = new System.Drawing.Size(6, 25);
            // 
            // bindingNavigatorMoveNextItem1
            // 
            this.bindingNavigatorMoveNextItem1.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.bindingNavigatorMoveNextItem1.Image = ((System.Drawing.Image)(resources.GetObject("bindingNavigatorMoveNextItem1.Image")));
            this.bindingNavigatorMoveNextItem1.Name = "bindingNavigatorMoveNextItem1";
            this.bindingNavigatorMoveNextItem1.RightToLeftAutoMirrorImage = true;
            this.bindingNavigatorMoveNextItem1.Size = new System.Drawing.Size(23, 22);
            this.bindingNavigatorMoveNextItem1.Text = "Move next";
            // 
            // bindingNavigatorMoveLastItem1
            // 
            this.bindingNavigatorMoveLastItem1.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.bindingNavigatorMoveLastItem1.Image = ((System.Drawing.Image)(resources.GetObject("bindingNavigatorMoveLastItem1.Image")));
            this.bindingNavigatorMoveLastItem1.Name = "bindingNavigatorMoveLastItem1";
            this.bindingNavigatorMoveLastItem1.RightToLeftAutoMirrorImage = true;
            this.bindingNavigatorMoveLastItem1.Size = new System.Drawing.Size(23, 22);
            this.bindingNavigatorMoveLastItem1.Text = "Move last";
            // 
            // bindingNavigatorSeparator5
            // 
            this.bindingNavigatorSeparator5.Name = "bindingNavigatorSeparator5";
            this.bindingNavigatorSeparator5.Size = new System.Drawing.Size(6, 25);
            // 
            // grpdieukhien
            // 
            this.grpdieukhien.CanvasColor = System.Drawing.SystemColors.Control;
            this.grpdieukhien.ColorSchemeStyle = DevComponents.DotNetBar.eDotNetBarStyle.Office2007;
            this.grpdieukhien.Controls.Add(this.buttonX4);
            this.grpdieukhien.Controls.Add(this.ckbhien);
            this.grpdieukhien.Controls.Add(this.btnxoa);
            this.grpdieukhien.Controls.Add(this.btncapnhat);
            this.grpdieukhien.Controls.Add(this.buttonX2);
            this.grpdieukhien.Controls.Add(this.labelX3);
            this.grpdieukhien.Controls.Add(this.labelX4);
            this.grpdieukhien.Controls.Add(this.labelX1);
            this.grpdieukhien.Controls.Add(this.txtmk);
            this.grpdieukhien.Controls.Add(this.txttendn);
            this.grpdieukhien.Controls.Add(this.btnluu);
            this.grpdieukhien.Controls.Add(this.cmbquyen);
            this.grpdieukhien.Location = new System.Drawing.Point(0, 227);
            this.grpdieukhien.Name = "grpdieukhien";
            this.grpdieukhien.Size = new System.Drawing.Size(660, 117);
            // 
            // 
            // 
            this.grpdieukhien.Style.BackColor2SchemePart = DevComponents.DotNetBar.eColorSchemePart.PanelBackground2;
            this.grpdieukhien.Style.BackColorGradientAngle = 90;
            this.grpdieukhien.Style.BackColorSchemePart = DevComponents.DotNetBar.eColorSchemePart.PanelBackground;
            this.grpdieukhien.Style.BorderBottom = DevComponents.DotNetBar.eStyleBorderType.Solid;
            this.grpdieukhien.Style.BorderBottomWidth = 1;
            this.grpdieukhien.Style.BorderColorSchemePart = DevComponents.DotNetBar.eColorSchemePart.PanelBorder;
            this.grpdieukhien.Style.BorderLeft = DevComponents.DotNetBar.eStyleBorderType.Solid;
            this.grpdieukhien.Style.BorderLeftWidth = 1;
            this.grpdieukhien.Style.BorderRight = DevComponents.DotNetBar.eStyleBorderType.Solid;
            this.grpdieukhien.Style.BorderRightWidth = 1;
            this.grpdieukhien.Style.BorderTop = DevComponents.DotNetBar.eStyleBorderType.Solid;
            this.grpdieukhien.Style.BorderTopWidth = 1;
            this.grpdieukhien.Style.CornerDiameter = 4;
            this.grpdieukhien.Style.CornerType = DevComponents.DotNetBar.eCornerType.Rounded;
            this.grpdieukhien.Style.TextAlignment = DevComponents.DotNetBar.eStyleTextAlignment.Center;
            this.grpdieukhien.Style.TextColorSchemePart = DevComponents.DotNetBar.eColorSchemePart.PanelText;
            this.grpdieukhien.Style.TextLineAlignment = DevComponents.DotNetBar.eStyleTextAlignment.Near;
            this.grpdieukhien.TabIndex = 9;
            this.grpdieukhien.Text = "Thông Tin người dùng";
            this.grpdieukhien.Click += new System.EventHandler(this.grpdieukhien_Click);
            // 
            // buttonX4
            // 
            this.buttonX4.AccessibleRole = System.Windows.Forms.AccessibleRole.PushButton;
            this.buttonX4.ColorTable = DevComponents.DotNetBar.eButtonColor.OrangeWithBackground;
            this.buttonX4.Image = ((System.Drawing.Image)(resources.GetObject("buttonX4.Image")));
            this.buttonX4.Location = new System.Drawing.Point(524, 60);
            this.buttonX4.Name = "buttonX4";
            this.buttonX4.Size = new System.Drawing.Size(75, 23);
            this.buttonX4.TabIndex = 20;
            this.buttonX4.Tag = "";
            this.buttonX4.Text = "Thoát";
            this.buttonX4.Click += new System.EventHandler(this.buttonX4_Click);
            // 
            // ckbhien
            // 
            this.ckbhien.BackColor = System.Drawing.Color.Transparent;
            this.ckbhien.Location = new System.Drawing.Point(360, 9);
            this.ckbhien.Name = "ckbhien";
            this.ckbhien.Size = new System.Drawing.Size(43, 23);
            this.ckbhien.TabIndex = 10;
            this.ckbhien.Text = "Hiện";
            this.ckbhien.CheckedChanged += new System.EventHandler(this.ckbhien_CheckedChanged);
            // 
            // btnxoa
            // 
            this.btnxoa.AccessibleRole = System.Windows.Forms.AccessibleRole.PushButton;
            this.btnxoa.ColorTable = DevComponents.DotNetBar.eButtonColor.OrangeWithBackground;
            this.btnxoa.Image = ((System.Drawing.Image)(resources.GetObject("btnxoa.Image")));
            this.btnxoa.Location = new System.Drawing.Point(300, 60);
            this.btnxoa.Name = "btnxoa";
            this.btnxoa.Size = new System.Drawing.Size(75, 23);
            this.btnxoa.TabIndex = 6;
            this.btnxoa.Text = "Xóa";
            this.btnxoa.Click += new System.EventHandler(this.btnxoa_Click);
            // 
            // btncapnhat
            // 
            this.btncapnhat.AccessibleRole = System.Windows.Forms.AccessibleRole.PushButton;
            this.btncapnhat.ColorTable = DevComponents.DotNetBar.eButtonColor.OrangeWithBackground;
            this.btncapnhat.Image = ((System.Drawing.Image)(resources.GetObject("btncapnhat.Image")));
            this.btncapnhat.Location = new System.Drawing.Point(411, 60);
            this.btncapnhat.Name = "btncapnhat";
            this.btncapnhat.Size = new System.Drawing.Size(75, 23);
            this.btncapnhat.TabIndex = 5;
            this.btncapnhat.Text = "Cập nhật";
            this.btncapnhat.Click += new System.EventHandler(this.btncapnhat_Click);
            // 
            // buttonX2
            // 
            this.buttonX2.AccessibleRole = System.Windows.Forms.AccessibleRole.PushButton;
            this.buttonX2.ColorTable = DevComponents.DotNetBar.eButtonColor.OrangeWithBackground;
            this.buttonX2.Image = ((System.Drawing.Image)(resources.GetObject("buttonX2.Image")));
            this.buttonX2.Location = new System.Drawing.Point(94, 60);
            this.buttonX2.Name = "buttonX2";
            this.buttonX2.Size = new System.Drawing.Size(75, 23);
            this.buttonX2.TabIndex = 3;
            this.buttonX2.Text = "Nhập Mới";
            this.buttonX2.Click += new System.EventHandler(this.buttonX2_Click);
            // 
            // labelX3
            // 
            this.labelX3.BackColor = System.Drawing.Color.Transparent;
            this.labelX3.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(192)))), ((int)(((byte)(64)))), ((int)(((byte)(0)))));
            this.labelX3.Location = new System.Drawing.Point(438, 9);
            this.labelX3.Name = "labelX3";
            this.labelX3.Size = new System.Drawing.Size(48, 23);
            this.labelX3.TabIndex = 3;
            this.labelX3.Text = "Quyền";
            // 
            // labelX4
            // 
            this.labelX4.BackColor = System.Drawing.Color.Transparent;
            this.labelX4.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(192)))), ((int)(((byte)(64)))), ((int)(((byte)(0)))));
            this.labelX4.Location = new System.Drawing.Point(190, 6);
            this.labelX4.Name = "labelX4";
            this.labelX4.Size = new System.Drawing.Size(53, 23);
            this.labelX4.TabIndex = 3;
            this.labelX4.Text = "Mật khẩu";
            // 
            // labelX1
            // 
            this.labelX1.BackColor = System.Drawing.Color.Transparent;
            this.labelX1.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(192)))), ((int)(((byte)(64)))), ((int)(((byte)(0)))));
            this.labelX1.Location = new System.Drawing.Point(3, 3);
            this.labelX1.Name = "labelX1";
            this.labelX1.Size = new System.Drawing.Size(45, 23);
            this.labelX1.TabIndex = 9;
            this.labelX1.Text = "Tên ĐN";
            // 
            // txtmk
            // 
            // 
            // 
            // 
            this.txtmk.Border.Class = "TextBoxBorder";
            this.txtmk.Location = new System.Drawing.Point(249, 9);
            this.txtmk.Name = "txtmk";
            this.txtmk.Size = new System.Drawing.Size(105, 20);
            this.txtmk.TabIndex = 1;
            this.txtmk.WatermarkText = "Mật Khẩu";
            // 
            // txttendn
            // 
            // 
            // 
            // 
            this.txttendn.Border.Class = "TextBoxBorder";
            this.txttendn.Location = new System.Drawing.Point(49, 6);
            this.txttendn.Name = "txttendn";
            this.txttendn.Size = new System.Drawing.Size(120, 20);
            this.txttendn.TabIndex = 0;
            this.txttendn.WatermarkText = "Tên đăng nhập";
            // 
            // btnluu
            // 
            this.btnluu.AccessibleRole = System.Windows.Forms.AccessibleRole.PushButton;
            this.btnluu.ColorTable = DevComponents.DotNetBar.eButtonColor.OrangeWithBackground;
            this.btnluu.Image = ((System.Drawing.Image)(resources.GetObject("btnluu.Image")));
            this.btnluu.Location = new System.Drawing.Point(190, 60);
            this.btnluu.Name = "btnluu";
            this.btnluu.Size = new System.Drawing.Size(82, 23);
            this.btnluu.TabIndex = 4;
            this.btnluu.Text = "Lưu Lại";
            this.btnluu.Click += new System.EventHandler(this.buttonX1_Click);
            // 
            // cmbquyen
            // 
            this.cmbquyen.DisplayMember = "Text";
            this.cmbquyen.DrawMode = System.Windows.Forms.DrawMode.OwnerDrawFixed;
            this.cmbquyen.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cmbquyen.FormattingEnabled = true;
            this.cmbquyen.ItemHeight = 14;
            this.cmbquyen.Location = new System.Drawing.Point(482, 9);
            this.cmbquyen.Name = "cmbquyen";
            this.cmbquyen.Size = new System.Drawing.Size(157, 20);
            this.cmbquyen.TabIndex = 2;
            this.cmbquyen.SelectionChangeCommitted += new System.EventHandler(this.cmbquyen_SelectionChangeCommitted);
            this.cmbquyen.ValueMemberChanged += new System.EventHandler(this.cmbquyen_ValueMemberChanged);
            // 
            // FrmNguoiDung
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(660, 348);
            this.Controls.Add(this.grpdieukhien);
            this.Controls.Add(this.bdndieukhien);
            this.Controls.Add(this.dgvHienThi);
            this.DoubleBuffered = true;
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle;
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.MaximizeBox = false;
            this.Name = "FrmNguoiDung";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Quản lý người dùng";
            this.Load += new System.EventHandler(this.FrmNguoiDung_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dgvHienThi)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bdndieukhien)).EndInit();
            this.bdndieukhien.ResumeLayout(false);
            this.bdndieukhien.PerformLayout();
            this.grpdieukhien.ResumeLayout(false);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevComponents.DotNetBar.Controls.DataGridViewX dgvHienThi;
        private System.Windows.Forms.BindingNavigator bdndieukhien;
        private System.Windows.Forms.ToolStripLabel bindingNavigatorCountItem1;
        private System.Windows.Forms.ToolStripButton bindingNavigatorMoveFirstItem1;
        private System.Windows.Forms.ToolStripButton bindingNavigatorMovePreviousItem1;
        private System.Windows.Forms.ToolStripSeparator bindingNavigatorSeparator3;
        private System.Windows.Forms.ToolStripTextBox bindingNavigatorPositionItem1;
        private System.Windows.Forms.ToolStripSeparator bindingNavigatorSeparator4;
        private System.Windows.Forms.ToolStripButton bindingNavigatorMoveNextItem1;
        private System.Windows.Forms.ToolStripButton bindingNavigatorMoveLastItem1;
        private System.Windows.Forms.ToolStripSeparator bindingNavigatorSeparator5;
        private DevComponents.DotNetBar.Controls.GroupPanel grpdieukhien;
        private DevComponents.DotNetBar.LabelX labelX1;
        private DevComponents.DotNetBar.Controls.TextBoxX txttendn;
        private DevComponents.DotNetBar.ButtonX btnluu;
        private DevComponents.DotNetBar.Controls.ComboBoxEx cmbquyen;
        private DevComponents.DotNetBar.LabelX labelX3;
        private DevComponents.DotNetBar.LabelX labelX4;
        private DevComponents.DotNetBar.Controls.TextBoxX txtmk;
        private DevComponents.DotNetBar.ButtonX btnxoa;
        private DevComponents.DotNetBar.ButtonX btncapnhat;
        private DevComponents.DotNetBar.ButtonX buttonX2;
        private System.Windows.Forms.DataGridViewTextBoxColumn taikhoan;
        private System.Windows.Forms.DataGridViewTextBoxColumn matkhau;
        private System.Windows.Forms.DataGridViewTextBoxColumn quyen;
        private System.Windows.Forms.DataGridViewTextBoxColumn quenmk;
        private DevComponents.DotNetBar.Controls.CheckBoxX ckbhien;
        private DevComponents.DotNetBar.ButtonX buttonX4;
    }
}