/*CODE BY TRAN VAN NAM
 *LOP : DLC CNTT6A
 * TRUONG DH SPKT NAM DINH
 * PHAN MEM QUAN LY TUYEN SINH DAI HOC
 */
using System;
using System.Collections.Generic;
using System.Text;
using System.Data.SqlClient;
using System.Data;
using System.Windows.Forms;
using System.Xml;
using DevComponents.DotNetBar;
using DevComponents.DotNetBar.Controls;

namespace DOAN_QLTUYENSINHDH.Class_HeThong
{
    class NamThi 
    {

        KetNoi kn = new KetNoi();
        SqlConnection conn;

        //SqlDataAdapter ad;
      //  DataTable dt;
       // BindingSource bs = new BindingSource();

        public DataTable HienThi(DataGridViewX dgv, BindingNavigator bn)
        {
            BindingSource bs = new BindingSource();
            conn = kn.laykn();
            DataTable dt = new DataTable();
            SqlDataAdapter ad = new SqlDataAdapter("select * from namthi", conn);

            try
            {
                ad.Fill(dt);
                // Ràng buộc dữ liệu vào BindingSource
                bs.DataSource = dt;
                // Gán nguồn dữ liệu cho BindingSource
                bn.BindingSource = bs;
                // Gán nguồn dữ liệu cho DataGridView
                dgv.DataSource = bs;
            }
            catch
            {
               // MessageBoxEx.Show("Không thể truy vấn dữ liệu ", "ERROR", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            return dt;
        }
    
       public void CapNhat(DataGridViewX dgv)
        {
            try
            {
            conn = kn.laykn();
            for (int i = 0; i < dgv.Rows.Count; i++)
            {
                string ma = dgv.Rows[i].Cells["ma"].Value.ToString();
                string namthi = dgv.Rows[i].Cells["namthi"].Value.ToString();

                // int dong = dgv.CurrentCell.RowIndex;
                // int ma = Convert.ToInt32(dgv.Rows[dong].Cells[0].Value.ToString());
                //int namthi = Convert.ToInt32(dgv.Rows[dong].Cells[1].Value.ToString());


                SqlCommand cmd = new SqlCommand("Update Namthi set namthi=@namthi where ma=@ma", conn);
                cmd.Parameters.Add("namthi", SqlDbType.NVarChar).Value = namthi;
                cmd.Parameters.Add("ma", SqlDbType.Int).Value = ma;

                if (conn.State == ConnectionState.Closed)
                {
                    conn.Open();
                }

                cmd.ExecuteNonQuery();
                //MessageBoxEx.Show("Bạn đã sửa thành công!", "THÔNG BÁO", MessageBoxButtons.OK);

             }
             MessageBoxEx.Show("Đã cập nhật thành công!", "THÔNG BÁO", MessageBoxButtons.OK , MessageBoxIcon.Information);
          }
            catch (Exception ex)
            {
                MessageBoxEx.Show("Lỗi : " + ex.Message);
            }

            finally
            {
                conn.Close();
            }
            
        
        }
      
        public void Xoa(DataGridViewX dgv )
        {
            try
            {
                conn = kn.laykn();
                foreach (DataGridViewRow row in dgv.SelectedRows)
                {
                    if (!row.IsNewRow)
                    {
                        string ma = dgv.Rows[row.Index].Cells[0].Value.ToString();

                        SqlCommand cmd = new SqlCommand("delete from Namthi where ma=@ma", conn);
                        cmd.Parameters.Add("ma", SqlDbType.Int).Value = ma;

                        if (conn.State == ConnectionState.Closed)
                        {
                            conn.Open();
                        }

                        cmd.ExecuteNonQuery();
                      

                    }
                }
                MessageBoxEx.Show("Đã xóa thành công!", "THÔNG BÁO", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
            catch (Exception ex)
            {
                MessageBoxEx.Show("Lỗi : " + ex.Message);
            }

            finally
            {
                conn.Close();
            }


        }
        // kiểm tra khóa chính

        private bool kiemtratontai(DataGridViewX dgv)
        {
            bool tatkt = false;
            for (int i = 0; i < dgv.Rows.Count; i++)
            {
                string maso = dgv.Rows[i].Cells[0].Value.ToString();
                conn = kn.laykn();
                
                SqlCommand cmd = new SqlCommand("Select * from namthi where ma =@ma", conn);
                cmd.Parameters.Add("ma", SqlDbType.Int).Value = maso;
                conn.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    if (int.Parse(maso) == dr.GetInt32(0))
                    {
                        tatkt = true;
                        break;

                    }
                }
            }
            conn.Close();
            return tatkt;
        } 

        public void Them(DataGridViewX dgv)
        {
            if (kiemtratontai(dgv))
            {
           //  MessageBoxEx.Show("Mã này đã có.. \nVui lòng kiểm tra lại...", "THÔNG BÁO", MessageBoxButtons.OK, MessageBoxIcon.Warning);

            }
            

                conn = kn.laykn();
               
                //int dong = dgv.CurrentCell.RowIndex;
                //string ma = Convert.ToString(dgv.Rows[dong].Cells[0].Value.ToString());
                //string namthi = Convert.ToString(dgv.Rows[dong].Cells[1].Value.ToString());
                for (int i = 0; i < dgv.Rows.Count; i++)
                {
                    string ma = dgv.Rows[i].Cells[0].Value.ToString();
                    string namthi = dgv.Rows[i].Cells[1].Value.ToString();
                    SqlCommand cmd = new SqlCommand("Insert into Namthi values(@ma ,@namthi)", conn);
                    cmd.Parameters.Add("ma", SqlDbType.Int).Value = ma;
                    cmd.Parameters.Add("namthi", SqlDbType.Int).Value = namthi;

                    if (conn.State == ConnectionState.Closed)
                    {
                        conn.Open();
                    }
                    try
                    {
                        cmd.ExecuteNonQuery();
                       // MessageBoxEx.Show("Bạn đã thêm thành công!", "THÔNG BÁO", MessageBoxButtons.OK);



                    }
                    //catch (FormatException)
                    //{
                    //    MessageBoxEx.Show("Bạn cần nhập vào số nguyên!", "THÔNG BÁO", MessageBoxButtons.OK, MessageBoxIcon.Warning);

                    //}

                    catch (Exception)
                    {
                       // MessageBoxEx.Show("Lỗi : " + ex.Message, "THÔNG BÁO", MessageBoxButtons.OK, MessageBoxIcon.Warning);

                    }

                    finally
                    {
                        conn.Close();
                    }
                }
            
        }

      
        public int MaTieptheo(DataGridView dgv)
        {
            int ma = int.Parse(dgv.Rows[dgv.Rows.Count-2].Cells["ma"].Value.ToString());
            return ma +1;
           
        }


        public String LaySTT(int STT)
        {
            if (STT < 10)
                return "000" + STT;

            else if (STT >= 10 && STT < 100)
                return "00" + STT;

            else if (STT >= 100 && STT < 1000)
                return "0" + STT;

            else if (STT >= 1000 && STT < 10000)
                return "" + STT;

            else
                return "";
        }
        // nhập dữ liệu từ file excel
        public void Excel_Nhap(string filename)
        {
            System.Data.OleDb.OleDbConnection oleCnn = new System.Data.OleDb.OleDbConnection();
            System.Data.SqlClient.SqlConnection sqlCnn = kn.laykn();

            try
            {
                //For Excel data loading                    
                string sConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0; Data Source= " + filename.ToString() + ";" + "Extended Properties=Excel 8.0;";
                oleCnn.ConnectionString = sConnectionString;
                System.Data.OleDb.OleDbDataAdapter oleDa = new System.Data.OleDb.OleDbDataAdapter();
                oleDa.SelectCommand = new System.Data.OleDb.OleDbCommand("Select * from [Sheet1$]", oleCnn);

                DataTable dtExcel = new DataTable();
                oleDa.Fill(dtExcel);
                //END

                //For Sql Server data loading                
                System.Data.SqlClient.SqlDataAdapter sqlDa = new System.Data.SqlClient.SqlDataAdapter();
                sqlDa.SelectCommand = new System.Data.SqlClient.SqlCommand("Select * from namthi", sqlCnn);

                DataTable dtSql = new DataTable();
                sqlDa.Fill(dtSql);

                dtSql.PrimaryKey = new DataColumn[] { dtSql.Columns["ma"] }; //To find an ID exists?
                //END

                System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand("Insert into namthi values(@ma, @namthi)", sqlCnn);
                cmd.Parameters.Add("@ma", SqlDbType.Int, 4);
                cmd.Parameters.Add("@namthi", SqlDbType.VarChar, 20);

                sqlCnn.Open();
                cmd.Prepare();

                int nRowAddedCount = 0;
                foreach (DataRow row in dtExcel.Rows)
                {
                    if (dtSql.Rows.Find(row["ma"]) != null)
                    {
                       //MessageBox.Show("Row with ID is " + row["ma"] + " already exists.");
                    }
                    else
                    {
                        cmd.Parameters["@ma"].Value = Convert.ToInt32(row["ma"]);
                        cmd.Parameters["@namthi"].Value = row["namthi"].ToString();

                        cmd.ExecuteNonQuery();

                        nRowAddedCount++;
                    }
                }

                MessageBox.Show("Đã thêm được " + nRowAddedCount.ToString() + " bản ghi.");
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
            finally
            {
                if (sqlCnn.State == ConnectionState.Open)
                    sqlCnn.Close();

                if (oleCnn.State == ConnectionState.Open)
                    oleCnn.Close();
            }
                 


        }
        // xuất ra file excel
        public void Excel_Xuat(string tenfile, DataGridViewX dgv)
        {
            Microsoft.Office.Interop.Excel.Application xlApp;
            Microsoft.Office.Interop.Excel.Workbook xlWorkBook;
            Microsoft.Office.Interop.Excel.Worksheet xlWorkSheet;
            object misValue = System.Reflection.Missing.Value;

            xlApp = new Microsoft.Office.Interop.Excel.Application();
            xlWorkBook = xlApp.Workbooks.Add(misValue);
            xlWorkSheet = (Microsoft.Office.Interop.Excel.Worksheet)xlWorkBook.Worksheets.get_Item(1);


            // Change properties of the Workbook 
            xlWorkSheet.Columns.ColumnWidth = 20;

            // Storing header part in Excel
            for (int i = 1; i < dgv.Columns.Count + 1; i++)
            {
                xlWorkSheet.Cells[1, i] = dgv.Columns[i - 1].HeaderText;
            }

            // Storing Each row and column value to excel sheet
            for (int i = 0; i < dgv.Rows.Count; i++)
            {
                for (int j = 0; j < dgv.Columns.Count; j++)
                {
                    xlWorkSheet.Cells[i + 2, j + 1] = dgv.Rows[i].Cells[j].Value.ToString();
                }
            }
           
                xlWorkBook.SaveAs(tenfile, Microsoft.Office.Interop.Excel.XlFileFormat.xlWorkbookNormal, misValue, misValue, misValue, misValue, Microsoft.Office.Interop.Excel.XlSaveAsAccessMode.xlExclusive, misValue, misValue, misValue, misValue, misValue);
                xlWorkBook.Close(true, misValue, misValue);
                xlApp.Quit();
                MessageBoxEx.Show("Lưu file Excel thành công" , "Thông báo" , MessageBoxButtons.OK,MessageBoxIcon.Information);
                    
 
        }
 
    
        
        public void HienThiCot_GridV(DataGridViewComboBoxColumn cmbComlumn)
        {
            kn.Moketnoi();
            SqlDataAdapter ad = new SqlDataAdapter("select  * from namthi", conn);
            DataTable dt = new DataTable();
            ad.Fill(dt);

            cmbComlumn.DataSource = dt;
            cmbComlumn.DisplayMember = "namthi";
            cmbComlumn.ValueMember = "ma";
            cmbComlumn.DataPropertyName = "ma";
            cmbComlumn.HeaderText = "Năm Thi";
            kn.Dongketnoi();
        }

    }
}
