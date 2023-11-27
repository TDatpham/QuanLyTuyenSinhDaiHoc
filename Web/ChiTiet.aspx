<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ChiTiet.aspx.cs" Inherits="xemdiem" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Chi tiết điểm </title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        &nbsp;</div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="sobd" Width="1020px" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2">
            <Columns>
                <asp:BoundField DataField="sobd" HeaderText="Số BD" ReadOnly="True" SortExpression="sobd" />
                <asp:BoundField DataField="hovaten" HeaderText="Họ T&#234;n" SortExpression="tents" />
                <asp:BoundField DataField="ngaysinh" HeaderText="Ng&#224;y Sinh" SortExpression="ngaysinh" DataFormatString="{0:d}" />
                <asp:BoundField DataField="gioitinh" HeaderText="Giới T&#237;nh" SortExpression="gioitinh" />
                <asp:BoundField DataField="toan" HeaderText="To&#225;n" SortExpression="diemmon1" />
                <asp:BoundField DataField="ly" HeaderText="L&#253;" SortExpression="diemmon2" />
                <asp:BoundField DataField="hoa" HeaderText="H&#243;a" SortExpression="diemmon3" />
                <asp:BoundField DataField="tongdiem" HeaderText="Tổng Điểm" ReadOnly="True" SortExpression="tongdiem" />
            </Columns>
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        </asp:GridView>
    </form>
</body>
</html>
