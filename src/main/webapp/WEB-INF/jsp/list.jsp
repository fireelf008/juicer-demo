<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
    <script src="/springboot/js/jquery-1.12.3.min.js"></script>
    <script src="/springboot/js/juicer-min.js"></script>
    <script src="/springboot/js/list.js"></script>
</head>
<body>
    <input type="button" value="循环迭代，显示索引和全部数据" onclick="forDemo();"/>
    <div id="forDemoDiv">
        <script id="forDemoTpl" type="text/template">
            <table border="1" width="500">
                <tr>
                    <th>用户名</th>
                    <th>密码</th>
                    <th>年龄</th>
                </tr>

                <!-- 就像jstl的foreach一样，索引index为可选参数 -->
                {@each list as user, index}
                <tr>
                    <!-- juicer默认的输出表达式和el表达式一样，由于此表达式容易引起冲突，因此我在juicer源码中将$替换为{，特此说明 -->
                    <td>{{index}：{{user.username}</td>
                    <td>{{user.password}</td>
                    <td>{{user.age}</td>
                </tr>
                {@/each}
            </table>
        </script>
    </div>
    <p />

    <input type="button" value="条件判断，显示用户名不等于张三的数据" onclick="ifDemo();"/>
    <div id="ifDemoDiv">
        <script id="ifDemoTpl" type="text/template">
            <table border="1" width="500">
                <tr>
                    <th>用户名</th>
                    <th>密码</th>
                    <th>年龄</th>
                </tr>

                {@each list as user}
                    {@if user.username != "张三"}
                    <tr>
                        <td>{{user.username}</td>
                        <td>{{user.password}</td>
                        <td>{{user.age}</td>
                    </tr>
                    {@/if}
                {@/each}
            </table>
        </script>
    </div>
    <p />

    <input type="button" value="自定义函数，在用户名前加上一个字符串" onclick="funcDemo();"/>
    <div id="funcDemoDiv">
        <script id="funcDemoTpl" type="text/template">
            <table border="1" width="500">
                <tr>
                    <th>用户名</th>
                    <th>密码</th>
                    <th>年龄</th>
                </tr>

                {@each list as user}
                <tr>
                    <td>{{user.username|myfunc, "用户名："}</td>
                    <td>{{user.password}</td>
                    <td>{{user.age}</td>
                </tr>
                {@/each}
            </table>
        </script>
    </div>
</body>
</html>
