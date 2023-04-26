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
            <asp:HyperLink ID="HyperLink1" runat="server" Target="_blank">
                <asp:Image ID="Image1" runat="server" ImageUrl="https://baike.baidu.com/pic/%E9%87%8D%E5%BA%86%E9%82%AE%E7%94%B5%E5%A4%A7%E5%AD%A6/232055/1/3c6d55fbb2fb43163d37add525a4462309f7d371?fr=lemma&fromModule=lemma_top-image&ct=single" />
            </asp:HyperLink>
        </div>
    </form>
</body>
</html>