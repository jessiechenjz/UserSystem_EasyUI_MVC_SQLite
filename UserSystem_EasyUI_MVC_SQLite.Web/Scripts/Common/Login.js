function Login() {
    var name = $('#name').val();
    var pwd = $('#pwd').val();
    //alert(name+"\n"+pwd); 

    //做一层过滤
    if (name == '') {
        alert('用户名不能为空！');
    }
    else {
        $.post("/Account/Dologin", { name: name, pwd: pwd },
        function (data) {
            //alert("Data Loaded: " + data);
            if (data == '-2') {
                $("#showInfo").html("用户名或密码错误！");
            }
            else if (data == '-1') {
                $("#showInfo").html("用户名空！");
            }
            else {
                $("#showInfo").html("登录正确！");
                window.location.href = "/home/index";
            }
        });    
    }
}

function logoff() {
    $.messager.confirm('注销', 'Are you confirm this?', function (r) {
        if (r) {
            //alert('confirmed: ' + r);
            $.post("/Account/DoLogOff", { },
        function (data) {
            //alert("Data Loaded: " + data);
            if (data == '-1') {
                alert("注销失败！");
            }          
            else {
                alert("注销成功！");
                window.location.href = "/Account/Login";
            }
        });
        }
    });

  
    }

