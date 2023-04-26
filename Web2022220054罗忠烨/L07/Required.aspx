<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Required.aspx.cs" Inherits="Web2022220054罗忠烨.L07.Required" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            用户名：<asp:TextBox ID="UserName" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="用户名RequiredFieldValidator" runat="server" ErrorMessage="*" ControlToValidate="UserName" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="修改初始值RequiredFieldValidator" runat="server" ErrorMessage="不能与初始值相同" ControlToValidate="UserName" ForeColor="Red" InitialValue="admin"></asp:RequiredFieldValidator>
            <br />
            <asp:Button ID="Button1" runat="server" Text="保存" />
        </div>
    </form>
</body>
</html>