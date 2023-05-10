<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SessionLogin.aspx.cs" Inherits="Web2022220054罗忠烨.L09.SessionLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>登录页</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Table ID="Table1" runat="server">
            
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server">用户名:</asp:TableCell>
                    <asp:TableCell runat="server">
                        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell runat="server">
                        <asp:Label ID="Label1" runat="server" Text="*请输入用户名！" ForeColor="Red"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server">密 码：</asp:TableCell>
                    <asp:TableCell runat="server">
                        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell runat="server">
                        <asp:Label ID="Label2" runat="server" Text="*请输入密码！" ForeColor="Red"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server" ColumnSpan="3" VerticalAlign="Middle" HorizontalAlign="center">
                        <asp:Button ID="btnSubmit" runat="server" Text="登录" onClick="btnSubmit_Click"/>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </div>
    </form>
</body>
</html>
