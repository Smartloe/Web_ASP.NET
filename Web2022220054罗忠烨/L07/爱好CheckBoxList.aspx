<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="爱好CheckBoxList.aspx.cs" Inherits="Web2022220054罗忠烨.L07.爱好CheckBoxList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:CheckBoxList ID="CheckBoxList1" runat="server">
                <asp:ListItem>羽毛球</asp:ListItem>
                <asp:ListItem>足球</asp:ListItem>
                <asp:ListItem>跑步</asp:ListItem>
                <asp:ListItem>排球</asp:ListItem>
                <asp:ListItem>跆拳道</asp:ListItem>
                <asp:ListItem>乒乓球</asp:ListItem>
            </asp:CheckBoxList>
            <hr />
            <asp:Button ID="Submit" runat="server" Text="确认" OnClick="Submit_Click" />
            <asp:Label ID="LabelMsg" runat="server"> </asp:Label>
        </div>
    </form>
</body>
</html>