<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="下拉列表.aspx.cs" Inherits="Web2022220054罗忠烨.L06.下拉列表" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem Value="2022220054">罗忠烨</asp:ListItem>
                <asp:ListItem Value="2022220056">吕东</asp:ListItem>
                <asp:ListItem Value="2022220051">刘奇衫</asp:ListItem>
                <asp:ListItem Value="2022220050">唐斌</asp:ListItem>
            </asp:DropDownList>
        </div>
    </form>
</body>
</html>
