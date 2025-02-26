/*CODE BY TRAN VAN NAM
 *LOP : DLC CNTT6A
 * TRUONG DH SPKT NAM DINH
 * PHAN MEM QUAN LY TUYEN SINH DAI HOC
 * -----------------------------
 * Lớp KetNoi gồm các phương thức kết nối đến csdl 
 * các phương thức dùng chung cho bài
 * và một số thao tác quan trọng + bảo mật
 */
using System;
using System.Collections.Generic;
using System.Text;
// thêm thư viện
using System.Data.SqlClient;
using System.Data;
using System.Windows.Forms;
using System.Xml;
using DevComponents.DotNetBar;
using System.IO;
using System.Configuration;
using DevComponents.DotNetBar.Controls;
using CrystalDecisions.Windows.Forms;

namespace DOAN_QLTUYENSINHDH.Class_HeThong 
{
    class KetNoi
    {
        // khoi tao cac doi tuong
        SqlConnection conn;
        String chuoikn = "";
        String TenCSDL ="QLTSDH";

        // lấy chuỗi kết nối từ file app.config
        public void Chuoiketnoi()
        {
            chuoikn = ConfigurationManager.ConnectionStrings["QLTSDH"].ToString();
           

        }
        // lấy chuỗi kết nối để sử dụng trong các lớp khác

        public SqlConnection laykn()
        {
            if (chuoikn == "")
            {
                Chuoiketnoi();
            }
            return new SqlConnection(chuoikn);

        }
        // Mở kết nối
        public bool Moketnoi()
        {
            if (chuoikn == "")
                Chuoiketnoi();
            try
            {
                if (conn == null)
                    conn = new SqlConnection(chuoikn);
                if (conn.State == ConnectionState.Closed)
                    conn.Open();
                return true;
            }
            catch
            {
                conn.Close();
                return false;
            }
        }
        // đóng kết nối 
        public void Dongketnoi()
        {
            conn.Close();
            conn.Dispose();
        }
        // lấy csdl de hien thi ra cac dieu khiển như datagridview ...
        public DataTable Laycsdl(string sql)
        {



            Moketnoi();
            DataTable dt = new DataTable();
            SqlDataAdapter ad = new SqlDataAdapter(sql, conn);
            try
            {
                ad.Fill(dt);

            }
            catch 
            {
              //  MessageBoxEx.Show("Lỗi : " + ex.Message, "ERROR", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            return dt;
        }
        //lưu thông tin để kết nối đến csdl vào file app.config 
        public void ghickn(string sql)
        {

            Configuration config = ConfigurationManager.OpenExeConfiguration(ConfigurationUserLevel.None);            
            config.ConnectionStrings.ConnectionStrings["QLTSDH"].ConnectionString = sql;
            config.Save(ConfigurationSaveMode.Modified, true);
            ConfigurationManager.RefreshSection("connectionStrings");
        }
        // kiểm tra khóa ngoại ( nếu có )
        public bool kiemtrakhoangoai(string sql)
        {

            bool ok = false;
            Moketnoi();
            DataTable dt = new DataTable();
            SqlDataAdapter ad = new SqlDataAdapter(sql, conn);
            try
            {
                ad.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch (Exception ex)
            {
                MessageBoxEx.Show("Lỗi : " + ex.Message, "ERROR", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            return ok;
        }
        // Đăng nhâp vào hệ thông
        public bool DangNhap(string user, string pass)
        {
            bool ok;
            conn = laykn();
            if (conn.State == ConnectionState.Closed)
            {
                conn.Open();
            }

            SqlCommand cmd = new SqlCommand("select * from dangnhap where taikhoan=@tk and matkhau=@mk", conn);
            try
            {
                cmd.Parameters.Add("tk", SqlDbType.VarChar).Value = user;
                cmd.Parameters.Add("mk", SqlDbType.VarChar).Value = pass;

                SqlDataReader reader = cmd.ExecuteReader();
                if (reader.HasRows)
                {
                    ok = true;
                }
                else
                {
                    ok = false;
                }
            }
            catch { ok = false; }
        
           
            conn.Close();
            return ok;
        }
        
        // lấy mã quyền để phân quyền
        public string LayQuyen(string taikhoan)
        {
            string quyen = ""; 
            conn = laykn();
            conn.Open();
            SqlCommand cmd = new SqlCommand("Select quyen From dangnhap Where taikhoan='" + taikhoan + "'", conn);
            quyen = cmd.ExecuteScalar().ToString();
            
            conn.Close();
           

            return quyen;
        }
       
        public string Laytenquyen(string taikhoan)
        {
            string quyen = ""; string tenquyen = "";
            conn = laykn();
            conn.Open();
            SqlCommand cmd = new SqlCommand("Select quyen From dangnhap Where taikhoan='" + taikhoan + "'", conn);
            quyen = cmd.ExecuteScalar().ToString();
            SqlCommand cmd1 = new SqlCommand("Select ten From maquyen Where ma='" + quyen + "'", conn);
            tenquyen = cmd1.ExecuteScalar().ToString();
            conn.Close();


            return tenquyen;
        }
        // mã hóa dữ liệu bằng MD5 

        byte[] mahoadl(string data)
        {
            System.Security.Cryptography.MD5CryptoServiceProvider md5Hasher = new System.Security.Cryptography.MD5CryptoServiceProvider();
            byte[] hashedBytes;
            System.Text.UTF8Encoding encoder = new System.Text.UTF8Encoding();
            hashedBytes = md5Hasher.ComputeHash(encoder.GetBytes(data));
            return hashedBytes;
        }
        // phương thức mã hóa mật khẩu 
        public string md5(string data)
        {
            return BitConverter.ToString(mahoadl(data)).Replace("-", "").ToLower();
        }
        // PT sao lưu cơ sở dữ liệu thành file BAK
        public void Saoluucsdl(string tenfile)
        {
           
            SqlCommand cmd = new SqlCommand("BACKUP DATABASE " + TenCSDL + " TO DISK = '" + tenfile + "'", conn);

            try
            {

                if (conn.State == ConnectionState.Closed)
                {
                    conn.Open();
                }
                cmd.ExecuteNonQuery();
                MessageBoxEx.Show("Sao lưu dữ liệu thành công!", "BACKUP COMPLETED", MessageBoxButtons.OK, MessageBoxIcon.Information);

            }
            catch (Exception e)
            {
                MessageBoxEx.Show("Không thể thực thi câu lệnh SQL này!\nLỗi: " + e.Message, "ERROR", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            if (conn.State == ConnectionState.Open)
            {
                conn.Close();
            }
        }
        // PT Phục hồi csdl từ file BAK
        public void PhucHoicsdl(string tenfile)
        {
           

            SqlCommand cmd = new SqlCommand("USE master RESTORE DATABASE " + TenCSDL + " FROM DISK = '" + tenfile + "'", conn);

            try
            {
              
                if (conn.State == ConnectionState.Closed)
                {
                    conn.Open();
                }
                cmd.ExecuteNonQuery();
                MessageBoxEx.Show("Phục hồi dữ liệu thành công!", "BACKUP COMPLETED", MessageBoxButtons.OK, MessageBoxIcon.Information);

            }
            catch (Exception e)
            {
                MessageBoxEx.Show("Không thể thực thi câu lệnh SQL này!\nLỗi: " + e.Message, "ERROR", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            if (conn.State == ConnectionState.Open)
            {
                conn.Close();
            }
        }
        #region hiển thị csdl ra lưới và hiện bingdingsource

        public DataTable HienThiLuoi(string sql, DataGridViewX dgv, BindingNavigator bn)
        {
            BindingSource bs = new BindingSource();
            Moketnoi();
            DataTable dt = new DataTable();
            SqlDataAdapter ad = new SqlDataAdapter(sql, conn);

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
            catch// (Exception ex)
            {
               // MessageBoxEx.Show("Lỗi " + ex.Message, "ERROR", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            return dt;
        }
        #endregion
        
        // Lưu lại lịch sử đăng nhập thành công
        public void GhiFile(string n)
        {
            StreamWriter f = null;
            try
            {
                if (File.Exists("LichSuDN.txt"))              //kiem tra xem file co ton tai ko
                {
                    f = File.AppendText("LichSuDN.txt"); //neu ton tai thi ghi noi vao cuoi file
                    f.WriteLine(n);
                }
                else
                {
                    f = File.CreateText("LichSuDN.txt"); //  neu file ko ton tai thi tao ra file moi
                    f.WriteLine(n);

                }
            }
            finally
            {
                if (f != null)
                    f.Close();
            }
        }
        // thực thi một số bảng đơn giản 
        public void thucthi(string sql)
        {
            try
            {
                Moketnoi();
                SqlCommand cmd = new SqlCommand(sql, conn);
                cmd.ExecuteNonQuery();
                cmd.Dispose();
            }
            catch (Exception ex)
            {
                MessageBoxEx.Show("Lỗi " + ex.Message, "ERROR", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        
        }
        // lấy mã quyền để phân quyền
        public int ChonGiaoDien()
        {
            int ok;
            conn = laykn();
            try
            {
            conn.Open();
            SqlCommand cmd = new SqlCommand("Select chon From giaodien", conn);
            ok = int.Parse(cmd.ExecuteScalar().ToString());
            conn.Close(); 
                return ok;
        }
        catch { return ok=5; }
            
        }
        // nhập dữ liệu từ file excel
        public void Excel_Nhap(string filename)
        {
            System.Data.OleDb.OleDbConnection oleCnn = new System.Data.OleDb.OleDbConnection();
            System.Data.SqlClient.SqlConnection sqlCnn = laykn();

            try
            {
                //For Excel data loading 
                // nhập excel dạng xlxs : 12 Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + pathFile + ";" + "Extended Properties=Excel 12.0;   
                string sConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0; Data Source= " + filename.ToString() + ";" + "Extended Properties=Excel 8.0;";
                oleCnn.ConnectionString = sConnectionString;
                System.Data.OleDb.OleDbDataAdapter oleDa = new System.Data.OleDb.OleDbDataAdapter();
                oleDa.SelectCommand = new System.Data.OleDb.OleDbCommand("Select * from [Sheet1$]", oleCnn);

                DataTable dtExcel = new DataTable();
                oleDa.Fill(dtExcel);
                //END

                //For Sql Server data loading                
                System.Data.SqlClient.SqlDataAdapter sqlDa = new System.Data.SqlClient.SqlDataAdapter();
                sqlDa.SelectCommand = new System.Data.SqlClient.SqlCommand("select * from thisinh", sqlCnn);

                DataTable dtSql = new DataTable();
                sqlDa.Fill(dtSql);

               // dtSql.PrimaryKey = new DataColumn[] { dtSql.Columns["id"] }; //Tim mà tồn tại trong csdl
                //END

                System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand("Insert into thisinh(hots,tents,ngaysinh,gioitinh,matinh,mahuyen,cmt,hokhau,dantoc," +
               "dt_ut,khuvuc,nganhdk,namthi,dcbaotin,namtn) values " +
               "(@hovadem , @ten , @ngaysinh , @gioitinh , @matinh ,  @mahuyen, @cmt , @hokhau , @dantoc , @dtut ,@khuvuc, @nganh , @nam , @dcbt , @namtn )", sqlCnn);
               
                cmd.Parameters.Add("hovadem", SqlDbType.NVarChar,50);
                cmd.Parameters.Add("ten", SqlDbType.NVarChar, 10);
                cmd.Parameters.Add("ngaysinh", SqlDbType.DateTime);
                cmd.Parameters.Add("gioitinh", SqlDbType.NVarChar, 3);
                cmd.Parameters.Add("matinh", SqlDbType.Int);
                cmd.Parameters.Add("mahuyen", SqlDbType.Int);
                cmd.Parameters.Add("cmt", SqlDbType.NVarChar,10);
                cmd.Parameters.Add("hokhau", SqlDbType.NVarChar, 100);
                cmd.Parameters.Add("dantoc", SqlDbType.NVarChar, 5);
                cmd.Parameters.Add("dtut", SqlDbType.NChar, 2);
                cmd.Parameters.Add("khuvuc", SqlDbType.NVarChar, 10);
                cmd.Parameters.Add("nganh", SqlDbType.NVarChar, 10);
                cmd.Parameters.Add("nam", SqlDbType.Int);
                cmd.Parameters.Add("dcbt", SqlDbType.NVarChar, 250);
                cmd.Parameters.Add("namtn", SqlDbType.Int);

                sqlCnn.Open();
                cmd.Prepare();

                int nRowAddedCount = 0;
                foreach (DataRow row in dtExcel.Rows)
                {
                    //if (dtSql.Rows.Find(row["id"]) != null) // tìm mã trong file excel
                    //{
                    //    //MessageBox.Show("Row with ID is " + row["ma"] + " already exists.");
                    //}
                    //else
                    //{
                       
                       
                        // tách họ tên thí sinh
                        string hoten = row["họ và tên"].ToString();
                        string ten = "", hodem = "";
                        // Length : chieu dai chuoi 
                        for (int i = hoten.Length - 1; i >= 0; i--)
                        {
                            // neu ky tu hien tai la khoang trang 
                            if (hoten[i].ToString() == " ")
                                break;
                            // Nguoc lai 

                            hodem = hoten.Substring(0, i - 1);
                            ten = hoten.Substring(i);

                        }
                        cmd.Parameters["hovadem"].Value = hodem;
                        cmd.Parameters["ten"].Value = ten;
                        cmd.Parameters["ngaysinh"].Value = row["ngày sinh"];
                       // DateTime  ng = DateTime.Parse( row["ngày sinh"].ToString());
                        cmd.Parameters["gioitinh"].Value = row["giới tính"];
                        cmd.Parameters["matinh"].Value = row["mã tỉnh"];
                        cmd.Parameters["mahuyen"].Value = row["mã huyện"];
                        cmd.Parameters["cmt"].Value = row["số cmt"];
                        cmd.Parameters["hokhau"].Value = row["hộ khẩu"]; 
                        cmd.Parameters["dantoc"].Value = row["dân tộc"];
                        cmd.Parameters["dtut"].Value = row["đối tượng ut"];
                        cmd.Parameters["khuvuc"].Value = row["khu vực"];
                        cmd.Parameters["nganh"].Value = row["ngành thi"];
                        cmd.Parameters["nam"].Value = row["năm thi"];
                        cmd.Parameters["dcbt"].Value = row["địa chỉ báo tin"];
                        cmd.Parameters["namtn"].Value = row["năm tn"];


                        cmd.ExecuteNonQuery();

                        nRowAddedCount++;
                    //}
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


            // thay đôi thuộc tình của workbook
            xlWorkSheet.Columns.ColumnWidth = 20;

            // lấy tiêu đề của các cột cho file excel
            for (int i = 1; i < dgv.Columns.Count + 1; i++)
            {
                xlWorkSheet.Cells[1, i] = dgv.Columns[i - 1].HeaderText;
            }

            // lấy giá trị các hàng
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
            MessageBoxEx.Show("Lưu file Excel thành công", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);


        }
        
    }
}
