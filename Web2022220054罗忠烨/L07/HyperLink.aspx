<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HyperLink.aspx.cs" Inherits="Web2022220054罗忠烨.L07.HyperLink" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:HyperLink ID="HyperLink1" runat="server" Target="_blank" NavigateUrl="http://ehall.cqupt.edu.cn/new/index.html" ImageUrl="http://www.cqupt.edu.cn/dfiles/13011/cqupt/img/logo.jpg">
                <asp:Image ID="Image1" runat="server" />
            </asp:HyperLink>
        </div>
    </form>
</body>
</html>