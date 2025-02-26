using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using System.Configuration;
using DevComponents.DotNetBar;
using System.Data.SqlClient;
using DOAN_QLTUYENSINHDH.Class_HeThong;
using System.Data.Sql;

namespace DOAN_QLTUYENSINHDH 
{
    public partial class FrmCauHinh : Office2007Form
    {
        public FrmCauHinh()
        {
            InitializeComponent();
        }
      
        private void Form1_Load(object sender, EventArgs e)
        {
            // lấy tên server của máy
            string myServer = Environment.MachineName;
            DataTable servers = SqlDataSourceEnumerator.Instance.GetDataSources();
            for (int i = 0; i < servers.Rows.Count; i++)
            {
                if (myServer == servers.Rows[i]["ServerName"].ToString())
                {
                    cmbtensv.Items.Add(servers.Rows[i]["ServerName"] + "\\" + servers.Rows[i]["InstanceName"]);

                }
                else
                {
                    cmbtensv.Items.Add(servers.Rows[i]["ServerName"]);
                }
            }//end

            
            cmbAuthentication.SelectedIndex = 0;
           
        }

        private void btnCancel_Click(object sender, EventArgs e)
        {
            //if (MessageBoxEx.Show("Bạn chưa cấu hình hệ thống. \nVui lòng cấu hình hệ thống để sử dụng chương trình", "Thông Báo", MessageBoxButtons.OKCancel, MessageBoxIcon.Information) == DialogResult.OK)
            //{
            //    //nếu chọn OK thì cho phép cấu hình các thông số
            //}
           
            //    // thoát chương trình
            //else
            //{
                this.Close();
               
            //   Application.Exit();

            //}
        }
        KetNoi ac = new KetNoi();     
        private void btnConnect_Click(object sender, EventArgs e)
        {
            if (cmbtensv.Text == "")
            {
                MessageBoxEx.Show("Vui lòng nhập tên server", "Thông báo!", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                cmbtensv.Focus();
            }
            else  if (cmbdatabase.Text == "")
            {
                MessageBoxEx.Show("Vui lòng chọn cơ sở dữ liệu", "Thông báo!", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                cmbdatabase.Focus();
            }
            
            else if (cmbAuthentication.Text == "Windows Authentication")
            {
               // XML.GhiXML("Connection.xml", cmbtensv.Text, cmbdatabase.Text, "true");
                ac.ghickn("Data Source=" +cmbtensv.Text + ";Initial Catalog=" +cmbdatabase.Text + ";Integrated Security=True;Pooling=False");
                MessageBoxEx.Show("Đã thiết lập kết nối đến csdl '"+cmbdatabase.Text+"' thành công.", "Successed", MessageBoxButtons.OK, MessageBoxIcon.Information);
                this.Close();
                //FrmMain main = new FrmMain();
                //if (main.Enabled == false)
                //{
                //    main.Show();
                //}else{}
        
            }
                else 
            {
                //XML.GhiXML("Connection.xml", cmbtensv.Text, txtusername.Text, txtmatkhau.Text, cmbdatabase.Text, "false");
                ac.ghickn("Data Source=" + cmbtensv.Text  + ";Initial Catalog=" + cmbdatabase.Text  + ";User Id=" +txtusername.Text  + ";Password=" + txtmatkhau.Text  + ";Integrated Security=False");
                MessageBoxEx.Show("Đã thiết lập kết nối đến csdl '" + cmbdatabase.Text + "' thành công.", "Successed", MessageBoxButtons.OK, MessageBoxIcon.Information);
                this.Close();
                //FrmMain main = new FrmMain();
                //if (main.Enabled == false)
                //{ main.Show(); }
            }
          
        }

        private void btnTesconnection_Click(object sender, EventArgs e)
        {
            if (cmbtensv.Text == "")
            {
                MessageBoxEx.Show("Vui lòng chọn tên server", "Thông báo!", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                cmbtensv.Focus();
            }

            else if (cmbAuthentication.SelectedIndex == 0)
            {
                cmbdatabase.Items.Clear();
                SqlConnection m_Connect = new SqlConnection("Data Source=" + cmbtensv.Text + ";Initial Catalog=master;Integrated Security=True;");
                SqlCommand m_Cmd = new SqlCommand("SP_DATABASES", m_Connect);
                SqlDataReader m_DReader;

                try
                {
                    m_Connect.Open();
                    m_DReader = m_Cmd.ExecuteReader();
                    while (m_DReader.Read())
                    {
                        cmbdatabase.Items.Add(m_DReader[0].ToString());
                    }
                   
                    MessageBoxEx.Show("Kết nối thành công!\nVui lòng chọn cơ sở dữ liệu!", "Succecced", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    btnConnect.Enabled = true;
                }
                catch (SqlException sqlEx)
                {
                    btnConnect.Enabled = false;
                    MessageBoxEx.Show(sqlEx.Message, "FAILED", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                }
                finally
                {
                    if (m_Connect.State == ConnectionState.Open)
                        m_Connect.Close();

                    m_Connect.Dispose();
                    m_Cmd.Dispose();
                }
            }
            else if (cmbAuthentication.SelectedIndex == 1)
            {
                cmbdatabase.Items.Clear();
                SqlConnection m_Conn = new SqlConnection("Data Source=" + cmbtensv.Text + ";Initial Catalog=master;User Id=" + txtusername.Text + ";Password=" + txtmatkhau.Text + ";");
                SqlCommand m_Cmd = new SqlCommand("SP_DATABASES", m_Conn);
                SqlDataReader m_DReader;

                try
                {
                    m_Conn.Open();
                    m_DReader = m_Cmd.ExecuteReader();
                    while (m_DReader.Read())
                    {
                        cmbdatabase.Items.Add(m_DReader[0].ToString());
                    }

                    MessageBoxEx.Show("Kết nối thành công!", "SUCCESSED", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    btnConnect.Enabled = true;
                }
                catch (SqlException sqlEx)
                {
                    btnConnect.Enabled = false;
                    MessageBoxEx.Show(sqlEx.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                }
                finally
                {
                    if (m_Conn.State == ConnectionState.Open)
                        m_Conn.Close();

                    m_Conn.Dispose();
                    m_Cmd.Dispose();
                }
            }
        }

        private void cmbAuthentication_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (cmbAuthentication.SelectedIndex == 0)
            {
                txtusername.Enabled = false;
                txtmatkhau.Enabled = false;
            }
            else
            {
                txtusername.Enabled = true;
                txtmatkhau.Enabled = true;
            }
        }

        private void txtmatkhau_KeyPress(object sender, KeyPressEventArgs e)
        {
        }

        private void txtmatkhau_KeyDown(object sender, KeyEventArgs e)
        {
            
            if (e.KeyCode == Keys.Enter)
            {
                btnTesconnection.PerformClick();
            }
        }

       
    }
}