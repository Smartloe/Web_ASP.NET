<%@ Page Title="" Language="C#" MasterPageFile="~/Home/Home.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Library.Home.List.Index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" >
        <div style="width:450px;float:left; margin-left: 120px;">
            <h3 style="text-align:center">用户排行榜</h3>
        <asp:PlaceHolder ID="PlaceHolder1" runat="server">
        </asp:PlaceHolder>

        </div>
        <div style="width:450px; float:left; padding-left:80px">
            <h3 style="text-align:center">书籍排行榜</h3>
        <asp:PlaceHolder ID="PlaceHolder2" runat="server">
        </asp:PlaceHolder>

        </div>
        
        </div>
    <script type="text/javascript">
        $(".navbar-nav li").eq(4).addClass("active");
        window.onload = function () {
              
             $("table").eq(0).addClass("table table-bordered table-hover text-center")
             var ftr="<thead><tr class=\"active\"><th class=\"text-center\">姓名</th><th class=\"text-center\">次数</th></tr></thead>";
            $("table").eq(0).append(ftr);
            $("table").eq(1).addClass("table table-bordered table-hover text-center")
             var ftr="<thead><tr class=\"active\"><th class=\"text-center\">书名</th><th class=\"text-center\">次数</th></tr></thead>";
            $("table").eq(1).append(ftr);
           // $("table").eq(0).addcss(width;"300px");
         }

        </script>
</asp:Content>
