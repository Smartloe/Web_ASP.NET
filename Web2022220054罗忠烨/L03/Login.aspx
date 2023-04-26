<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Web2022220054罗忠烨.L03.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <caption>登录页</caption>
                <tr>
                    <td class="auto-style2" align="right">账号:</td>
                    <td class="auto-style2"align="center" >
                        <asp:TextBox ID="txtLoginName" runat="server" OnTextChanged="TextBox1_TextChanged" Width="100%"></asp:TextBox>
                    </td>
                    <td class="auto-style2">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*请输入账号" ControlToValidate="txtLoginName" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="right">密码:</td>
                    <td align="center">
                        <asp:TextBox ID="txtLoginPwd" runat="server" OnTextChanged="Unnamed1_TextChanged" TextMode="Password" Width="100%"></asp:TextBox>
                    </td>
                    <td width="40%">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*请输入密码" ForeColor="Red" ControlToValidate="txtLoginPwd"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="center">
                        &nbsp;</td>
                    <td align="center" width="20%">
                        <asp:Button ID="btnLogin" runat="server" OnClick="Button1_Click" Text="登录" />
                    </td>
                    <td align="center">
                        &nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
