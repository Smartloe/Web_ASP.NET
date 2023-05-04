<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="罗忠烨作业2.aspx.cs" Inherits="Web2022220054罗忠烨._54罗忠烨.罗忠烨作业2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table align="center">
                <caption>注册页</caption>
                <tr>
                    <td align="right">账&nbsp;&nbsp;号：</td>
                    <td align="center">
                        <asp:TextBox ID="txtName" runat="server" AutoPostBack="True" OnTextChanged="txtName_TextChanged" Width="200px"></asp:TextBox></td>
                    <td align="left">
                        <asp:Label ID="lblValidate1" runat="server" Text="*请输入账号" ForeColor="Red"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td align="right">密&nbsp;&nbsp;码：</td>
                    <td align="center">
                        <asp:TextBox ID="txtPassword1" runat="server" TextMode="Password" Style="position: relative;" Width="200px" OnTextChanged="txtPassword1_TextChanged"></asp:TextBox></td>
                    <td>
                        <asp:Label ID="lblValidate2" runat="server" ForeColor="Red" Text="*请输入密码"></asp:Label></td>
                </tr>
                <tr>
                    <td align="right">&nbsp;确认密码：</td>
                    <td align="center">
                        <asp:TextBox ID="txtPassword2" runat="server" TextMode="Password" Style="position: relative;" Width="200px" OnTextChanged="txtPassword2_TextChanged"></asp:TextBox></td>
                    <td>
                        <asp:Label ID="lblValidate3" runat="server" Text="*请确认密码" ForeColor="Red"></asp:Label></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td align="center">
                        <asp:Button ID="btnSubmit" runat="server" Text="注册" OnClick="btnSubmit_Click" /></td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>