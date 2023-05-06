<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Redirect.aspx.cs" Inherits="Web2022220054罗忠烨.L08.Redirect" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            姓名：<asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                <asp:ListItem>教师</asp:ListItem>
                <asp:ListItem>学生</asp:ListItem>
            </asp:RadioButtonList>
            <asp:Button ID="Button1" runat="server" Text="确定" OnClick="Button1_Click" />
        </div>
    </form>
</body>
</html>