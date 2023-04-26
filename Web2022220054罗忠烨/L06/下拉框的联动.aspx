<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="下拉框的联动.aspx.cs" Inherits="Web2022220054罗忠烨.L06.下拉框的联动" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            月份：<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                <asp:ListItem Value="1">一月</asp:ListItem>
                <asp:ListItem Value="2">二月</asp:ListItem>
                <asp:ListItem Value="3">三月</asp:ListItem>
                <asp:ListItem Value="4">四月</asp:ListItem>
                <asp:ListItem Value="5">五月</asp:ListItem>
                <asp:ListItem Value="6">六月</asp:ListItem>
                <asp:ListItem Value="7">七月</asp:ListItem>
                <asp:ListItem Value="8">八月</asp:ListItem>
                <asp:ListItem Value="9">九月</asp:ListItem>
                <asp:ListItem Value="10">十月</asp:ListItem>
                <asp:ListItem Value="11">十一月</asp:ListItem>
                <asp:ListItem Value="12">十二月</asp:ListItem>
               </asp:DropDownList>
           天数： <asp:DropDownList ID="DropDownList2" runat="server"></asp:DropDownList>
        </div>
    </form>
</body>
</html>
