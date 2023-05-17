<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Library.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link rel="stylesheet" href="css/bootstrap.min.css"/>
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js" ></script>
    <title></title>
     <style>
        #myCarousel{
            margin-left: 2%;
            width: 60%;
            height: 70%;
            float: left;
            z-index: 999;
            display: inline;
        }
        #login{
            float: left;
            height: 50%;
            width: 23%;
            margin-left: 6%;
            display: inline;
            z-index: 999;
        }
        * {
            padding:0;
            margin:0;
        }
         .footer {
          position: absolute;
          bottom: 0;
          width: 100%;
          /* Set the fixed height of the footer here */
          height: 50px;
          background-color: #f5f5f5;
        }
    </style>
    <script>
            $(function(){
                $('#myCarousel').carousel({
                    interval: 2000
                })
            });
    </script>
</head>

<body>
    <form id="form1" runat="server">
<h2 style="text-align: center;font-family: 'Adobe 楷体 Std R';color: palevioletred">图书管理系统</h2>
         <hr />
<div style="float:right;" id="github_iframe"></div>
<script>
    /**
     * Copyright (c) 2016 hustcc
     * License: MIT
     * Version: %%GULP_INJECT_VERSION%%
     * GitHub: https://github.com/hustcc/canvas-nest.js
     **/
    ! function() {
        //封装方法，压缩之后减少文件大小
        function get_attribute(node, attr, default_value) {
            return node.getAttribute(attr) || default_value;
        }
        //封装方法，压缩之后减少文件大小
        function get_by_tagname(name) {
            return document.getElementsByTagName(name);
        }
        //获取配置参数
        function get_config_option() {
            var scripts = get_by_tagname("script"),
                script_len = scripts.length,
                script = scripts[script_len - 1]; //当前加载的script
            return {
                l: script_len, //长度，用于生成id用
                z: get_attribute(script, "zIndex", -1), //z-index
                o: get_attribute(script, "opacity", 0.5), //opacity
                c: get_attribute(script, "color", "0,0,0"), //color
                n: get_attribute(script, "count", 99) //count
            };
        }
        //设置canvas的高宽
        function set_canvas_size() {
            canvas_width = the_canvas.width = window.innerWidth || document.documentElement.clientWidth || document.body.clientWidth,
                canvas_height = the_canvas.height = window.innerHeight || document.documentElement.clientHeight || document.body.clientHeight;
        }
        //绘制过程
        function draw_canvas() {
            context.clearRect(0, 0, canvas_width, canvas_height);
            //随机的线条和当前位置联合数组
            var e, i, d, x_dist, y_dist, dist; //临时节点
            //遍历处理每一个点
            random_points.forEach(function(r, idx) {
                r.x += r.xa,
                    r.y += r.ya, //移动
                    r.xa *= r.x > canvas_width || r.x < 0 ? -1 : 1,
                    r.ya *= r.y > canvas_height || r.y < 0 ? -1 : 1, //碰到边界，反向反弹
                    context.fillRect(r.x - 0.5, r.y - 0.5, 1, 1); //绘制一个宽高为1的点
                //从下一个点开始
                for (i = idx + 1; i < all_array.length; i++) {
                    e = all_array[i];
                    // 当前点存在
                    if (null !== e.x && null !== e.y) {
                        x_dist = r.x - e.x; //x轴距离 l
                        y_dist = r.y - e.y; //y轴距离 n
                        dist = x_dist * x_dist + y_dist * y_dist; //总距离, m
                        dist < e.max && (e === current_point && dist >= e.max / 2 && (r.x -= 0.03 * x_dist, r.y -= 0.03 * y_dist), //靠近的时候加速
                            d = (e.max - dist) / e.max,
                            context.beginPath(),
                            context.lineWidth = d / 2,
                            context.strokeStyle = "rgba(" + config.c + "," + (d + 0.2) + ")",
                            context.moveTo(r.x, r.y),
                            context.lineTo(e.x, e.y),
                            context.stroke());
                    }
                }
            }), frame_func(draw_canvas);
        }
        //创建画布，并添加到body中
        var the_canvas = document.createElement("canvas"), //画布
            config = get_config_option(), //配置
            canvas_id = "c_n" + config.l, //canvas id
            context = the_canvas.getContext("2d"), canvas_width, canvas_height,
            frame_func = window.requestAnimationFrame || window.webkitRequestAnimationFrame || window.mozRequestAnimationFrame || window.oRequestAnimationFrame || window.msRequestAnimationFrame || function(func) {
                window.setTimeout(func, 1000 / 45);
            }, random = Math.random,
            current_point = {
                x: null, //当前鼠标x
                y: null, //当前鼠标y
                max: 20000 // 圈半径的平方
            },
            all_array;
        the_canvas.id = canvas_id;
        the_canvas.style.cssText = "position:fixed;top:0;left:0;z-index:" + config.z + ";opacity:" + config.o;
        get_by_tagname("body")[0].appendChild(the_canvas);
        //初始化画布大小
        set_canvas_size();
        window.onresize = set_canvas_size;
        //当时鼠标位置存储，离开的时候，释放当前位置信息
        window.onmousemove = function(e) {
            e = e || window.event;
            current_point.x = e.clientX;
            current_point.y = e.clientY;
        }, window.onmouseout = function() {
            current_point.x = null;
            current_point.y = null;
        };
        //随机生成config.n条线位置信息
        for (var random_points = [], i = 0; config.n > i; i++) {
            var x = random() * canvas_width, //随机位置
                y = random() * canvas_height,
                xa = 2 * random() - 1, //随机运动方向
                ya = 2 * random() - 1;
            // 随机点
            random_points.push({
                x: x,
                y: y,
                xa: xa,
                ya: ya,
                max: 6000 //沾附距离
            });
        }
        all_array = random_points.concat([current_point]);
        //0.1秒后绘制
        setTimeout(function() {
            draw_canvas();
        }, 100);
    }();
</script>
<div id="myCarousel" class="carousel slide">
    <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <%--<li data-target="#myCarousel" data-slide-to="2"></li>--%>
    </ol>
    <div class="carousel-inner">
        <div class="item active">
            <img src="Resources/82839-106.jpg" alt="第一张"/>
        </div>
        <div class="item">
            <img src="Resources/105905-106.jpg" alt="第二张"/>
        </div>
        <%--<div class="item">
            <img src="img/296494-106.jpg" alt="第三张">
        </div>--%>

    </div>
    <a class="carousel-control left" href="#myCarousel"
       data-slide="prev">&lsaquo;
    </a>
    <a class="carousel-control right" href="#myCarousel"
       data-slide="next">&rsaquo;
    </a>
</div>
<div class="panel panel-default" id="login">
    <div class="panel-heading" style="background-color: #fff">
        <h3 class="panel-title">请登录</h3>
    </div>
    <div class="panel-body">
        <div class="form-group">
            <label for="id">用户名</label>
            <asp:TextBox ID="Username" runat="server"  CssClass="form-control" placeholder="请输入用户名"></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="passwd">密码</label>
            <asp:TextBox ID="Password" type="password" runat="server" CssClass="form-control" placeholder="请输入密码"></asp:TextBox>
        </div>
        <div class="form-group">
                        <label for="yzm">验证码</label>
                        <asp:TextBox ID="yzm" type="text" runat="server" CssClass="form-control" placeholder="请输入验证码" Width="116px"></asp:TextBox>
                        <asp:Button ID="btn_yzm" runat="server" Text="Button" CssClass="btn btn-default btn-lg " style="margin-top:-50px;margin-left:150px;height:38px" OnClick="Button1_Click"  />
                    </div>
        <p style="text-align: right;color: red;position: absolute" id="info"></p>
        <asp:Button ID="Submit" runat="server" CssClass="btn btn-default btn-lg btn-block" Text="登录" OnClick="Button_Login"  />
    </div>
</div>

       


    </form>
</body>
</html>
