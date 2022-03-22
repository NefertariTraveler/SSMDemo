package com.cold.controller;

import com.cold.entity.User;
import com.cold.service.UserService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/user")
public class UserController {

    @Resource
    UserService userService;

    @RequestMapping("/query")
    public String queryAll(Model model, Integer pageNum){
        if(pageNum==null){
            pageNum = 1;
        }
        PageHelper.startPage(pageNum,2);
        List<User> list = userService.queryAll();
        PageInfo<User> userPageInfo = new PageInfo<>(list);
        model.addAttribute("list",userPageInfo.getList());
        model.addAttribute("info",userPageInfo);
        return "user";
    }

}
