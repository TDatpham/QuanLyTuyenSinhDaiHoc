<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="timkiem" Title="Tra Cứu Điểm Thi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center >
    <span style="font-size: 16pt"><strong><span style="color: #ff0066">Tra
                    Cứu Điểm Thi Đại Học Trường Đại Học Sư Phạm Kỹ Thuật Nam Định</span></strong><br />
        &nbsp;</span></center> 
      <center >  <table style="height: 107px; width: 563px;">
          <tr>
              <td align="center" style="width: 326px; height: 21px; text-align: right" valign="top">
                  Nhập Tên Hoặc Số Báo Danh : &nbsp;</td>
              <td align="center" style="width: 319px; height: 21px; text-align: left" valign="top">
                  <asp:TextBox ID="TextBox1"  runat="server" onclick="this.value=''" onblur="if(this.value=='') this.value='Nhập Thông Tin...'" value="Nhập Thông Tin..." Width="210px"></asp:TextBox></td>
          </tr>
          <tr>
              <td align="center" style="width: 326px; height: 22px; text-align: right" valign="top">
                  Chọn Năm :&nbsp;
              </td>
              <td align="center" style="width: 319px; height: 22px; text-align: left" valign="top">
                  <asp:DropDownList ID="drpnam" runat="server" OnSelectedIndexChanged="drpnam_SelectedIndexChanged">
                  </asp:DropDownList></td>
          </tr>
        <tr>
            <td align="center" style="width: 326px; height: 21px" valign="top">
                &nbsp;</td>
            <td align="center" style="width: 319px; height: 21px; text-align: left" valign="top">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Tra Cứu" />&nbsp;
                </td>
        </tr>
    </table>
<asp:GridView ID="GridView1" runat="server" Width="562px" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" EmptyDataText="Không có kết quả" Height="65px">
        <Columns>
            <asp:BoundField DataField="sobd" HeaderText="số b&#225;o danh" />
            <asp:BoundField DataField="hovaten" HeaderText="T&#234;n th&#237; sinh" />
            <asp:BoundField DataField="ngaysinh" DataFormatString="{0:d}" HeaderText="ng&#224;y sinh" />
            <asp:BoundField DataField="gioitinh" HeaderText="giới t&#237;nh" />
            <asp:BoundField DataField="tongdiem" HeaderText="tổng điểm" />
            <asp:TemplateField HeaderText="Chi tiết">
                <ItemTemplate>
                <!-- cách 1
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("sobd" ,"Chitiet.aspx?sobd={0}" ) %>' onclick="window.open(this.href, 'popupwindow',
   'width=1024,height=150,top=200,scrollbars,resizable');
   return false;"
                        Text="Xem"></asp:HyperLink>
                        -->
                        
                         <!-- cách 2
            <asp:HyperLinkField DataNavigateUrlFields="sobd,namthi" DataNavigateUrlFormatString="chitiet.aspx?sobd={0}&amp;namthi={1}" Text="xem"  />
            -->
                        <!-- cách 3 -->
                       <a id="A1" runat="server" href='<%# "chitiet.aspx?sobd=" + Eval("sobd") + "&namthi=" + Eval("namthi")+" "%>' onclick="window.open(this.href, 'popupwindow',
   'width=1024,height=150,top=200,scrollbars,resizable');
   return false;">
                        Xem</a>
                </ItemTemplate>
                 
            </asp:TemplateField>
            
        </Columns>
        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
        <AlternatingRowStyle BackColor="#F7F7F7" />
    </asp:GridView>
</center>
  
  </asp:Content>


