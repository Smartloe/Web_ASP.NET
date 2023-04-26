<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Table.aspx.cs" Inherits="Web2022220054罗忠烨.L07.Table" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Table ID="Table1" runat="server" BorderColor="#0000CC" GridLines="Both">
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server">学号</asp:TableCell>
                    <asp:TableCell runat="server">姓名</asp:TableCell>
                    <asp:TableCell runat="server">成绩</asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </div>
    </form>
</body>
</html>