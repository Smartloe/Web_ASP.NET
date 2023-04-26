<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CompareValidator.aspx.cs" Inherits="Web2022220054罗忠烨.L07.CompareValidator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            1.请输入密码和确认密码
            <div>
                密&nbsp;&nbsp;码：<asp:TextBox ID="PassWord1" runat="server" TextMode="Password"></asp:TextBox>
            </div>
            <div>
                确认密码：<asp:TextBox ID="PassWord2" runat="server" TextMode="Password"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="前后密码不一致！" ForeColor="Red" ControlToCompare="PassWord1" ControlToValidate="PassWord2"></asp:CompareValidator>
            </div>
            2.请输入正确的答案
            <div>
                <asp:TextBox ID="AnswerBox" runat="server"></asp:TextBox>
                <asp:CompareValidator ID="AnswerCompareValidator" runat="server" ErrorMessage="答案错误！" ControlToValidate="AnswerBox" ForeColor="Red" ValueToCompare="A"></asp:CompareValidator>
            </div>
        </div>
    </form>
</body>
</html>