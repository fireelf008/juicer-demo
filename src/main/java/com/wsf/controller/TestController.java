package com.wsf.controller;

import com.wsf.dto.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by wangshaofu on 2016/11/23.
 */
@RestController
@RequestMapping("/test")
public class TestController {

    /**
     * 跳转到首页
     * @return
     */
    @RequestMapping(value = "/list")
    public ModelAndView list() {
        return new ModelAndView("list");
    }

    /**
     * 加载测试数据
     * @return
     */
    @RequestMapping(value = "/get-user-list")
    public Map getUserList() {
        User user1 = new User();
        user1.setUsername("张三");
        user1.setPassword("zhangsan");
        user1.setAge(25);

        User user2 = new User();
        user2.setUsername("李四");
        user2.setPassword("lisi");
        user2.setAge(30);

        User user3 = new User();
        user3.setUsername("王五");
        user3.setPassword("wangwu");
        user3.setAge(28);

        List<User> userList = new ArrayList<User>();
        userList.add(user1);
        userList.add(user2);
        userList.add(user3);

        Map<String, Object> map = new HashMap<String, Object>();
        map.put("success", true);
        map.put("list", userList);

        return map;
    }
}
