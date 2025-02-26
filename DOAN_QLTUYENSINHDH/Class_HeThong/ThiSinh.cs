/*CODE BY TRAN VAN NAM
 *LOP : DLC CNTT6A
 * TRUONG DH SPKT NAM DINH
 * PHAN MEM QUAN LY TUYEN SINH DAI HOC
 * -------------
 * Quản lý các chức năng liên quan đến thí sinh
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
using DevComponents.DotNetBar.Controls;

namespace DOAN_QLTUYENSINHDH.Class_HeThong
{
   public class ThiSinh
   {
       //khai báo 
       KetNoi kn = new KetNoi();
        SqlConnection conn;
       
       #region Đánh số báo danh
       public void Danhsobd(DataGridViewX dgv , string namthi)
       {
           try
           {
               conn = kn.laykn();
               //xóa các thí sinh tồn tại trong bảng phòng thi 
               SqlCommand cmd_xoa = new SqlCommand("delete from phongthi where namthi ='" + namthi + "'", conn);

               if (conn.State == ConnectionState.Closed)
               {
                   conn.Open();
               }
               cmd_xoa.ExecuteNonQuery();
               // update so bao danh vao bang thi sinh
               for (int i = 0; i < dgv.Rows.Count; i++)
               {      
                   string id = dgv.Rows[i].Cells["id"].Value.ToString();
                   string sbd = dgv.Rows[i].Cells["sbd"].Value.ToString();                  
                   SqlCommand cmd_update = new SqlCommand("update thisinh set sobd =@sbd where id =@id ", conn);
                   cmd_update.Parameters.Add("sbd", SqlDbType.VarChar).Value = sbd;
                   cmd_update.Parameters.Add("id", SqlDbType.Int).Value = id;

                   if (conn.State == ConnectionState.Closed)
                   {
                       conn.Open();
                   }

                   cmd_update.ExecuteNonQuery();

                   // sau khi đánh số báo danh (update bảng thí sinh ) thì insert các số báo danh của thí sinh vào bảng phongthi

                       SqlCommand cmd_ins = new SqlCommand("Insert into phongthi(sbd, namthi,bothi,mon) values(@sbd , @nam,'0','1')", conn);
                       cmd_ins.Parameters.Add("sbd", SqlDbType.VarChar).Value = sbd;
                       cmd_ins.Parameters.Add("nam", SqlDbType.Int).Value = namthi;
                       if (conn.State == ConnectionState.Closed)
                       {
                           conn.Open();
                       }

                       cmd_ins.ExecuteNonQuery();       
                   // môn 2
                       SqlCommand cmd_ins1 = new SqlCommand("Insert into phongthi(sbd, namthi,bothi,mon) values(@sbd , @nam,'0','2')", conn);
                       cmd_ins1.Parameters.Add("sbd", SqlDbType.VarChar).Value = sbd;
                       cmd_ins1.Parameters.Add("nam", SqlDbType.Int).Value = namthi;
                       if (conn.State == ConnectionState.Closed)
                       {
                           conn.Open();
                       }

                       cmd_ins1.ExecuteNonQuery(); 

                   // môn 3
                       SqlCommand cmd_ins2 = new SqlCommand("Insert into phongthi(sbd, namthi,bothi,mon) values(@sbd , @nam,'0','3')", conn);
                       cmd_ins2.Parameters.Add("sbd", SqlDbType.VarChar).Value = sbd;
                       cmd_ins2.Parameters.Add("nam", SqlDbType.Int).Value = namthi;
                       if (conn.State == ConnectionState.Closed)
                       {
                           conn.Open();
                       }

                       cmd_ins2.ExecuteNonQuery(); // end
               }
               MessageBoxEx.Show("Đánh số báo danh thành công!\nTổng số thí sinh là : "+ dgv.Rows.Count , "THÔNG BÁO", MessageBoxButtons.OK , MessageBoxIcon.Information); 
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
#endregion
       public void  ThemTS(DataGridViewX dgv ,string hovadem , string ten , string ngaysinh , string gioitinh , int matinh ,  int mahuyen, int cmt , string hokhau , string dantoc , string dtut , string khuvuc,string  nganh , int nam , string dcbt , int namtn)
       {
           //try
           //{
           conn = kn.laykn();

           // string id = dgv.Rows[dgv.Rows.Count-1].Cells["id"].Value.ToString();

           SqlCommand cmd = new SqlCommand("Insert into thisinh(hots,tents,ngaysinh,gioitinh,matinh,mahuyen,cmt,hokhau,dantoc,"+
               "dt_ut,khuvuc,nganhdk,namthi,dcbaotin,namtn) values "+
               "(@hovadem , @ten , @ngaysinh , @gioitinh , @matinh ,  @mahuyen, @cmt , @hokhau , @dantoc , @dtut ,@khuvuc, @nganh , @nam , @dcbt , @namtn )", conn);
           cmd.Parameters.Add("hovadem", SqlDbType.NVarChar).Value = hovadem;
           cmd.Parameters.Add("ten", SqlDbType.NVarChar).Value = ten;          
           cmd.Parameters.Add("ngaysinh", SqlDbType.NVarChar).Value =ngaysinh ;
            cmd.Parameters.Add("gioitinh", SqlDbType.NVarChar).Value = gioitinh;
               cmd.Parameters.Add("matinh", SqlDbType.Int).Value = matinh;
               cmd.Parameters.Add("mahuyen", SqlDbType.Int).Value = mahuyen;
               cmd.Parameters.Add("cmt", SqlDbType.Int).Value = cmt;
               cmd.Parameters.Add("hokhau", SqlDbType.NVarChar).Value =hokhau ;
               cmd.Parameters.Add("dantoc", SqlDbType.NVarChar).Value = dantoc;
               cmd.Parameters.Add("dtut", SqlDbType.NVarChar).Value = dtut;
               cmd.Parameters.Add("khuvuc", SqlDbType.NVarChar).Value =khuvuc ;
               cmd.Parameters.Add("nganh", SqlDbType.NVarChar).Value = nganh;
               cmd.Parameters.Add("nam", SqlDbType.Int).Value = nam;
               cmd.Parameters.Add("dcbt", SqlDbType.NVarChar).Value =dcbt  ;
               cmd.Parameters.Add("namtn", SqlDbType.Int).Value = namtn;

           if (conn.State == ConnectionState.Closed)
           {
               conn.Open();
           }
           
               cmd.ExecuteNonQuery();
                //MessageBoxEx.Show("Đã thêm thành công!", "THÔNG BÁO", MessageBoxButtons.OK);
                conn.Close();
          // }
           

           //catch (Exception ex)
           //{
           //    MessageBoxEx.Show("Lỗi : " + ex.Message, "THÔNG BÁO", MessageBoxButtons.OK, MessageBoxIcon.Warning);

           //}

       }
       public void Capnhatts(DataGridViewX dgv,int id, string hovadem, string ten, string ngaysinh, string gioitinh, int matinh, int mahuyen, int cmt, string hokhau, string dantoc, string dtut, string khuvuc, string nganh, int nam, string dcbt, int namtn)
       {
           //try
           //{
               conn = kn.laykn();

               // string id = dgv.Rows[dgv.Rows.Count-1].Cells["id"].Value.ToString();

               SqlCommand cmd = new SqlCommand("Update thisinh set hots =@hovadem ,tents = @ten ,ngaysinh=@ngaysinh ,gioitinh =@gioitinh ,"+
                   "matinh=@matinh ,mahuyen=@mahuyen ,cmt=@cmt ,hokhau= @hokhau ,dantoc =@dantoc,dt_ut =@dtut ,khuvuc = @khuvuc,nganhdk =@nganh , "+
                   "namthi= @nam ,dcbaotin =@dcbt ,namtn=@namtn where id =@id", conn);
               cmd.Parameters.Add("hovadem", SqlDbType.NVarChar).Value = hovadem;
               cmd.Parameters.Add("ten", SqlDbType.NVarChar).Value = ten;
               cmd.Parameters.Add("id", SqlDbType.Int).Value = id;
               cmd.Parameters.Add("ngaysinh", SqlDbType.NVarChar).Value = ngaysinh;
               cmd.Parameters.Add("gioitinh", SqlDbType.NVarChar).Value = gioitinh;
               cmd.Parameters.Add("matinh", SqlDbType.Int).Value = matinh;
               cmd.Parameters.Add("mahuyen", SqlDbType.Int).Value = mahuyen;
               cmd.Parameters.Add("cmt", SqlDbType.Int).Value = cmt;
               cmd.Parameters.Add("hokhau", SqlDbType.NVarChar).Value = hokhau;
               cmd.Parameters.Add("dantoc", SqlDbType.NVarChar).Value = dantoc;
               cmd.Parameters.Add("dtut", SqlDbType.NVarChar).Value = dtut;
               cmd.Parameters.Add("khuvuc", SqlDbType.NVarChar).Value = khuvuc;
               cmd.Parameters.Add("nganh", SqlDbType.NVarChar).Value = nganh;
               cmd.Parameters.Add("nam", SqlDbType.Int).Value = nam;
               cmd.Parameters.Add("dcbt", SqlDbType.NVarChar).Value = dcbt;
               cmd.Parameters.Add("namtn", SqlDbType.Int).Value = namtn;

               if (conn.State == ConnectionState.Closed)
               {
                   conn.Open();
               }

               cmd.ExecuteNonQuery();              
               conn.Close();          

       }
       public void Capnhat_nhieu_Ts(DataGridViewX dgv)
       {

           conn = kn.laykn();

           for (int i = 0; i < dgv.Rows.Count; i++)
           {
               // thêm vào bảng phách
               string id = dgv.Rows[i].Cells["id"].Value.ToString();
               string ngaysinh = dgv.Rows[i].Cells["ngaysinh"].Value.ToString();
               string hoten = dgv.Rows[i].Cells["hovaten"].Value.ToString();
               string ten = "", hodem = "";
               // Length : chieu dai chuoi 
               for (int j = hoten.Length - 1; j >= 0; j--)
               {
                   // neu ky tu hien tai la khoang trang 
                   if (hoten[j].ToString() == " ")
                       break;
                   // Nguoc lai 

                   hodem = hoten.Substring(0, j - 1);
                   ten = hoten.Substring(j);

               }
               string gioitinh = dgv.Rows[i].Cells["gioitinh"].Value.ToString();
               string matinh = dgv.Rows[i].Cells["matinh"].Value.ToString();
               string mahuyen = dgv.Rows[i].Cells["mahuyen"].Value.ToString();
               string cmt = dgv.Rows[i].Cells["cmt"].Value.ToString();
               string hokhau = dgv.Rows[i].Cells["hokhau"].Value.ToString();
               string dantoc = dgv.Rows[i].Cells["dantoc"].Value.ToString();
               string dtut = dgv.Rows[i].Cells["dt_ut"].Value.ToString();
               string khuvuc = dgv.Rows[i].Cells["khuvuc"].Value.ToString();
               string nganh = dgv.Rows[i].Cells["nganhdk"].Value.ToString();
               string nam = dgv.Rows[i].Cells["namthi"].Value.ToString();
               string dcbt = dgv.Rows[i].Cells["dcbaotin"].Value.ToString();
               string namtn = dgv.Rows[i].Cells["namtn"].Value.ToString();
               SqlCommand cmd = new SqlCommand("Update thisinh set hots =@hovadem ,tents = @ten ,ngaysinh=@ngaysinh ,gioitinh =@gioitinh ," +
                   "matinh=@matinh ,mahuyen=@mahuyen ,cmt=@cmt ,hokhau= @hokhau ,dantoc =@dantoc,dt_ut =@dtut ,khuvuc = @khuvuc,nganhdk =@nganh , " +
                   "namthi= @nam ,dcbaotin =@dcbt ,namtn=@namtn where id =@id", conn);
               cmd.Parameters.Add("hovadem", SqlDbType.NVarChar).Value = hodem;
               cmd.Parameters.Add("ten", SqlDbType.NVarChar).Value = ten;
               cmd.Parameters.Add("id", SqlDbType.Int).Value = id;
               cmd.Parameters.Add("ngaysinh", SqlDbType.NVarChar).Value = ngaysinh;
               cmd.Parameters.Add("gioitinh", SqlDbType.NVarChar).Value = gioitinh;
               cmd.Parameters.Add("matinh", SqlDbType.Int).Value = matinh;
               cmd.Parameters.Add("mahuyen", SqlDbType.Int).Value = mahuyen;
               cmd.Parameters.Add("cmt", SqlDbType.Int).Value = cmt;
               cmd.Parameters.Add("hokhau", SqlDbType.NVarChar).Value = hokhau;
               cmd.Parameters.Add("dantoc", SqlDbType.NVarChar).Value = dantoc;
               cmd.Parameters.Add("dtut", SqlDbType.NVarChar).Value = dtut;
               cmd.Parameters.Add("khuvuc", SqlDbType.NVarChar).Value = khuvuc;
               cmd.Parameters.Add("nganh", SqlDbType.NVarChar).Value = nganh;
               cmd.Parameters.Add("nam", SqlDbType.Int).Value = nam;
               cmd.Parameters.Add("dcbt", SqlDbType.NVarChar).Value = dcbt;
               cmd.Parameters.Add("namtn", SqlDbType.Int).Value = namtn;
               if (conn.State == ConnectionState.Closed)
               {
                   conn.Open();
               }

               cmd.ExecuteNonQuery();
           }

       }
       public void Xoa_Nhieu_TS(DataGridViewX dgv)
       {
           try
           {
               conn = kn.laykn();
               foreach (DataGridViewRow row in dgv.SelectedRows)
               {
                   if (!row.IsNewRow)
                   {
                       string id = dgv.Rows[row.Index].Cells[0].Value.ToString();

                       SqlCommand cmd = new SqlCommand("delete from thisinh where id=@id", conn);
                       cmd.Parameters.Add("id", SqlDbType.Int).Value = id ;

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
       public void Xoats(DataGridViewX dgv, int id)
       {
           conn = kn.laykn();
           SqlCommand cmd = new SqlCommand("Delete from thisinh  where id =@id", conn);           
           cmd.Parameters.Add("id", SqlDbType.Int).Value = id;          

           if (conn.State == ConnectionState.Closed)
           {
               conn.Open();
           }

           cmd.ExecuteNonQuery();
           
           conn.Close();

       }

       public void DanhPhach(DataGridViewX dgv, string mon, string phongthi,string namthi)
       {
           try
           {
               conn = kn.laykn();
               //xóa các thí sinh tồn tại trong bảng phách
               SqlCommand cmd_xoa = new SqlCommand("delete from phach where mon ='" + mon + "' and phongthi='"+phongthi+"' and namthi='"+namthi+"'", conn);

               if (conn.State == ConnectionState.Closed)
               {
                   conn.Open();
               }
               cmd_xoa.ExecuteNonQuery();
               // đánh lại phách
               for (int i = 0; i < dgv.Rows.Count; i++)
               {
                   // thêm vào bảng phách
                   string sbd = dgv.Rows[i].Cells["sbd"].Value.ToString();
                   SqlCommand cmd_ins = new SqlCommand("Insert into phach(sobd, mon,phongthi,namthi) values(@sbd , @mon, @phong,@namthi)", conn);
                   cmd_ins.Parameters.Add("sbd", SqlDbType.VarChar).Value = sbd;
                   cmd_ins.Parameters.Add("mon", SqlDbType.Int).Value = mon;
                   cmd_ins.Parameters.Add("phong", SqlDbType.Int).Value = phongthi;
                   cmd_ins.Parameters.Add("namthi", SqlDbType.Int).Value = namthi;
                   if (conn.State == ConnectionState.Closed)
                   {
                       conn.Open();
                   }

                   cmd_ins.ExecuteNonQuery();

                   

               }
               MessageBoxEx.Show("Đánh phách thành công!", "THÔNG BÁO", MessageBoxButtons.OK, MessageBoxIcon.Information);
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
       public void DanhPhach_Diem(DataGridViewX dgv, string mon, string namthi, string phongthi)
       {
           try
           {
               conn = kn.laykn();
               //xóa các thí sinh tồn tại trong bảng phách
               SqlCommand cmd_xoa = new SqlCommand("delete from diem where mamon ='" + mon + "' and namthi='" + namthi + "' and phongthi='" + phongthi + "'", conn);

               if (conn.State == ConnectionState.Closed)
               {
                   conn.Open();
               }
               cmd_xoa.ExecuteNonQuery();
               // đánh lại phách
               for (int i = 0; i < dgv.Rows.Count; i++)
               {
                   // thêm vào bảng phách
                   string phach = dgv.Rows[i].Cells["pid"].Value.ToString();
                   SqlCommand cmd_ins = new SqlCommand("Insert into diem( mamon,sophach,namthi,phongthi) values('" + mon + "', @pid,'" + namthi + "','" + phongthi + "')", conn);
                   
                  
                   cmd_ins.Parameters.Add("pid", SqlDbType.Int).Value = phach;
                   
                   if (conn.State == ConnectionState.Closed)
                   {
                       conn.Open();
                   }

                   cmd_ins.ExecuteNonQuery();



               }
               //MessageBoxEx.Show("Đánh phách thành công!", "THÔNG BÁO", MessageBoxButtons.OK, MessageBoxIcon.Information);
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
       public void Luu_Diem(DataGridViewX dgv)
       {
          
               conn = kn.laykn();               
               
               for (int i = 0; i < dgv.Rows.Count; i++)
               {
                   // thêm vào bảng phách
                   string phach = dgv.Rows[i].Cells["sophach"].Value.ToString();
                   string diem = dgv.Rows[i].Cells["diem"].Value.ToString();
                   SqlCommand cmd = new SqlCommand("Update diem set diem = @diem where sophach =@sophach", conn);

                   cmd.Parameters.Add("sophach", SqlDbType.Int).Value = phach;
                   cmd.Parameters.Add("diem", SqlDbType.NVarChar).Value = diem;

                   if (conn.State == ConnectionState.Closed)
                   {
                       conn.Open();
                   }

                   cmd.ExecuteNonQuery();
               }              

       }
       public void Capnhat_Bothi(DataGridViewX dgv)
       {// bỏ thi phải làm bảng phongg thi

           conn = kn.laykn();

           for (int i = 0; i < dgv.Rows.Count; i++)
           {
               // thêm vào bảng phách
               string id = dgv.Rows[i].Cells["id"].Value.ToString();
               string bothi = dgv.Rows[i].Cells["bothi"].Value.ToString();
               SqlCommand cmd = new SqlCommand("Update phongthi set bothi = @bothi where id =@id", conn);

               cmd.Parameters.Add("id", SqlDbType.Int).Value = id;
               cmd.Parameters.Add("bothi", SqlDbType.NVarChar).Value = bothi;

               if (conn.State == ConnectionState.Closed)
               {
                   conn.Open();
               }

               cmd.ExecuteNonQuery();
           }

       }
       public void Themdiem(DataGridViewX dgv, string mon  , string phach, float diem)
       {
           conn = kn.laykn();

           SqlCommand cmd = new SqlCommand("Insert into diem(mamon,sophach,diem) values(@mamon , @phach , @diem  )", conn);
           cmd.Parameters.Add("mamon", SqlDbType.NVarChar).Value = mon;
           cmd.Parameters.Add("phach", SqlDbType.NVarChar).Value = phach ;
           cmd.Parameters.Add("diem", SqlDbType.Float).Value = diem;

           if (conn.State == ConnectionState.Closed)
           {
               conn.Open();
           }

           cmd.ExecuteNonQuery();
           
           conn.Close();
          

       }
       public void Capnhatdiem(DataGridViewX dgv,float diem, int id)
       {
           conn = kn.laykn();

           SqlCommand cmd = new SqlCommand("Update diem set  diem=@diem where id=@id", conn);
           //cmd.Parameters.Add("mamon", SqlDbType.NVarChar).Value = mon;
           //cmd.Parameters.Add("phach", SqlDbType.NVarChar).Value = phach;
           cmd.Parameters.Add("diem", SqlDbType.Float).Value = diem;
           cmd.Parameters.Add("id", SqlDbType.Int).Value = id;

           if (conn.State == ConnectionState.Closed)
           {
               conn.Open();
           }

           cmd.ExecuteNonQuery();

           conn.Close();

       }
       public void Xoadiems(DataGridViewX dgv, int id)
       {
           conn = kn.laykn();
  
           SqlCommand cmd = new SqlCommand("Delete from diem  where id =@id", conn);

           cmd.Parameters.Add("id", SqlDbType.Int).Value = id;

           if (conn.State == ConnectionState.Closed)
           {
               conn.Open();
           }

           cmd.ExecuteNonQuery();

           conn.Close();

       }
       public void Them_dd(DataGridViewX dgv, string tendd,  string namthi, string phong)
       {

           conn = kn.laykn();

           SqlCommand cmd = new SqlCommand("Insert into diadiem(tendd,namthi,phong) values(@ten , @nam,@phong )", conn);
           cmd.Parameters.Add("ten", SqlDbType.NVarChar).Value = tendd;
           
           cmd.Parameters.Add("nam", SqlDbType.NVarChar).Value = namthi;
           cmd.Parameters.Add("phong", SqlDbType.NVarChar).Value = phong;
           if (conn.State == ConnectionState.Closed)
           {
               conn.Open();
           }

           cmd.ExecuteNonQuery();
           conn.Close();

       }
       public void Capnhat_dd(DataGridViewX dgv, string tendd,  string namthi, string phong, string ma)
       {
           conn = kn.laykn();
           SqlCommand cmd = new SqlCommand("Update diadiem set tendd =@ten , namthi = @nam,phong=@phong where madd =@ma", conn);
           cmd.Parameters.Add("ten", SqlDbType.NVarChar).Value = tendd;
         
           cmd.Parameters.Add("nam", SqlDbType.NVarChar).Value = namthi;
           cmd.Parameters.Add("phong", SqlDbType.NVarChar).Value = phong;
           cmd.Parameters.Add("ma", SqlDbType.NVarChar).Value = ma;
           if (conn.State == ConnectionState.Closed)
           {
               conn.Open();
           }

           cmd.ExecuteNonQuery();

           conn.Close();
       }
       public void Xoa_dd(DataGridViewX dgv, string ma)
       {
           conn = kn.laykn();

           SqlCommand cmd = new SqlCommand("Delete from diadiem  where madd =@ma", conn);
           cmd.Parameters.Add("ma", SqlDbType.NVarChar).Value = ma;
           if (conn.State == ConnectionState.Closed)
           {
               conn.Open();
           }

           cmd.ExecuteNonQuery();

           conn.Close();

       }
       //end

    }
}
