function forDemo() {
    var url = "/springboot/test/get-user-list";
    $.post(url, function (result) {
        var tpl = $("#forDemoTpl").html();
        var html = juicer(tpl, result);
        $("#forDemoDiv").html(html);
    });
}

function ifDemo() {
    var url = "/springboot/test/get-user-list";
    $.post(url, function (result) {
        var tpl = $("#ifDemoTpl").html();
        var html = juicer(tpl, result);
        $("#ifDemoDiv").html(html);
    });
}

function funcDemo() {
    var url = "/springboot/test/get-user-list";
    $.post(url, function (result) {
        var tpl = $("#funcDemoTpl").html();
        juicer.register("myfunc", myfunc);
        var html = juicer(tpl, result);
        $("#funcDemoDiv").html(html);
    });
}

function myfunc(name, str) {
    return str + name;
}