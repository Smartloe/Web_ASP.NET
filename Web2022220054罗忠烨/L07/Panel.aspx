<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Panel.aspx.cs" Inherits="Web2022220054罗忠烨.L07.Panel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Panel ID="Panel1" runat="server">
                第一步：输入用户名
                <hr />
                用户名：<asp:TextBox ID="userName" runat="server" Style="height: 23px"></asp:TextBox>
                <br />
                <asp:Button ID="submit1" runat="server" Text="下一步" OnClick="确认用户名Button_Click" />
            </asp:Panel>
            <asp:Panel ID="Panel2" runat="server" Visible="False">
                第二步：输入用户信息
                <hr />
                姓名：<asp:TextBox ID="name" runat="server"></asp:TextBox>
                <br />
                电话：<asp:TextBox ID="phoneNum" runat="server"></asp:TextBox>
                <br />
                <asp:Button ID="submit2" runat="server" Text="下一步" OnClick="确认用户信息Button_Click" />
            </asp:Panel>
            <asp:Panel ID="Panel3" runat="server" Visible="False">
                第三步：确认您输入的信息
                <hr />
                用户名：<asp:Label ID="userName1" runat="server" Text="Label"></asp:Label>
                <br />
                姓名：<asp:Label ID="name1" runat="server" Text="Label"></asp:Label>
                <br />
                电话：<asp:Label ID="phoneNum1" runat="server" Text="Label"></asp:Label>
                <br />
            </asp:Panel>
        </div>
    </form>
</body>
</html>