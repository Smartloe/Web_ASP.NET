<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="User_Manage.aspx.cs" Inherits="Library.Admin.User.User_Manage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="text-center container" style="width:65%;margin-top:40px;padding-top:10px;background-color: #f5f5f5;border-radius:20px;">
        <div class="h4">
            <b>用户信息</b>
        </div>
        <p>用户ID：<asp:Label ID="Id" runat="server" Text="Label"></asp:Label>
        </p>
        <p>用户姓名：<asp:Label ID="Name" runat="server" Text="Label"></asp:Label>
        </p>
        <p>用户班级：<asp:Label ID="Class1" runat="server" Text="Label"></asp:Label>
        </p>
        <p>用户状态：<asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        </p>
        <div style="width: 450px;margin:20px auto;overflow: hidden;display: flex;justify-content: space-between">

<%--            <asp:Button ID="Button1" runat="server" Text="修改账户" class="btn btn-success" data-toggle="modal" data-target="#info" />
            <asp:Button ID="Button2" runat="server" Text="状态修改" class="btn btn-primary" data-toggle="modal" data-target="#lock"/>
            <asp:Button ID="Button3" runat="server" Text="修改密码" class="btn btn-warning" data-toggle="modal" data-target="#pwd"/>
            <asp:Button ID="Button4" runat="server" Text="删除账户" class="btn btn-danger" data-toggle="modal" data-target="#del" />--%>

            <span class="btn btn-success"   data-toggle="modal" data-target="#info">修改账户</span>
            <span class="btn btn-primary" data-toggle="modal" data-target="#lock"><asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>账户</span>
            <span class="btn btn-warning" data-toggle="modal" data-target="#pwd">修改密码</span>
            <span class="btn btn-danger" data-toggle="modal" data-target="#del">删除账户</span>
        
        </div>
    </div>
    <div class="container text-center" style="width: 65%;margin-top:30px;padding:0;">
        <div class="h4">
            <b>用户借阅信息</b>
        </div>
        
        <div class="t1">
             <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
        </div>
               
    </div>

    <div class="container-fluid text-center">
        <!-- 修改用户信息模态框（Modal） -->
        <div class="modal fade" id="info" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog" style="margin-top:150px;">
                <div class="modal-content">
                    <div id="changeInfo">
                        <div class="modal-header">
                            <h4 class="modal-title" id="myModalLabel1">
                                修改用户信息
                            </h4>
                        </div>
                        <div class="modal-body center-block" style="width:45%">
                            <div class="form-group">
                                <div class="input-group">
                                    <div class="input-group-addon">姓名</div>
                                    
                                    <asp:TextBox ID="TextBox1" runat="server" name="name" type="text" class="form-control"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group" style="margin-bottom:0">
                                <div class="input-group">
                                    <div class="input-group-addon">班级</div>
                                    <asp:TextBox ID="TextBox2" runat="server" name="class" type="text" class="form-control"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <asp:Button ID="Button1" runat="server" Text="确认" class="btn btn-primary" OnClick="Button1_Click" />
                            <span id="button" class="btn btn-default"  data-dismiss="modal">关闭</span>
                        </div>
                    </div>
                </div>
                <!-- /.modal-content -->
            </div>
            <!-- /.modal -->
        </div>

        <!-- 挂失用户模态框（Modal） -->
        <div class="modal fade" id="lock" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog" style="margin-top:150px;">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title" id="myModalLabel2">
                            更改账户
                        </h4>
                    </div>
                    <div class="modal-body">
                        <h4>确认要<asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>账号为<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                                        的账户?</h4>
                    </div>
                    <div class="modal-footer">
                            <asp:Button ID="Button2" runat="server" Text="确认" class="btn btn-primary" OnClick="Button2_Click" />
                            <span id="btn" class="btn btn-default" data-dismiss="modal">关闭</span>

                    </div>
                </div>
                <!-- /.modal-content -->
            </div>
            <!-- /.modal -->
        </div>

        <!-- 修改密码模态框（Modal） -->
        <div class="modal fade" id="pwd" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog" style="margin-top:150px;">
                <div class="modal-content">
                    <div>
                        <div class="modal-header">
                            <h4 class="modal-title" id="myModalLabel">
                                修改密码
                            </h4>
                        </div>
                        <div class="modal-body center-block" style="width:45%">
                            <div class="form-group " style="margin-bottom:0">
                                <div class="input-group">
                                    <div class="input-group-addon">新密码</div>
                                            <asp:TextBox ID="newPwd" runat="server" type="password" class="form-control" placeholder="请输入新密码"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <asp:Button ID="pwdButton" runat="server" Text="确认" type="button" class="btn btn-primary" OnClick="pwdButton_Click" />
                            <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                        </div>
                    </div>
                </div>
                <!-- /.modal-content -->
            </div>
            <!-- /.modal -->
        </div>

        <!-- 删除用户模态框（Modal） -->
        <div class="modal fade" id="del" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog" style="margin-top:150px;">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title" id="myModalLabel">
                            删除账户
                        </h4>
                    </div>
                    <div class="modal-body">
                        <h4>确认要删除账号为<asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                                            的账户?</h3>
                    </div>
                    <div class="modal-footer">
                        <asp:Button ID="deleteButton" runat="server" Text="确认" class="btn btn-primary" OnClick="deleteButton_Click" />
                        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                    </div>
                </div>
                <!-- /.modal-content -->
            </div>
            <!-- /.modal -->
        </div>
    </div>
    <script type="text/javascript">
       
        
         window.onload = function () {
              
             $(".t1 table").eq(0).addClass("table table-bordered table-hover text-center")
             var ftr="<thead><tr class=\"active\"><th class=\"text-center\">图书号</th><th class=\"text-center\">图书名称</th><th class=\"text-center\">借书时间</th><th class=\"text-center\">应还时间</th><th class=\"text-center\"style=\"width:100px;\">操作</th></tr></thead>";
             $(".t1 table").eq(0).append(ftr);
         }

       
</script>
    <style>
        .t1 a{
            padding:0px 0px;
        }
    </style>
</asp:Content>
