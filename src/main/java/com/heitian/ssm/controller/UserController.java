package com.heitian.ssm.controller;

import com.heitian.ssm.model.User;
import com.heitian.ssm.service.UserService;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by Zhangxq on 2016/7/15.
 */

@Controller
@RequestMapping("/user")
public class UserController {

    private Logger log = Logger.getLogger(UserController.class);
    @Resource
    private UserService userService;

    @RequestMapping("/showUser")
    public String showUser( Model model){
        log.info("查询所有用户信息");
        List<User> userList = userService.getAllUser();
        model.addAttribute("userList",userList);
        return "showUser";
    }
    @RequestMapping("/showPeople")
    public  String showPeople(@RequestParam(value = "userId") String id,Model model){
        log.info("查询一个用户信息");
        User user=userService.getUserById((long) Integer.parseInt(id));
        model.addAttribute("user",user);
        return "showPeople";
    }
    @RequestMapping("/save")
    public String savePeople(@RequestParam(value = "userName") String userName,@RequestParam(value = "userPhone") String userPhone,
                             @RequestParam(value = "userEmail") String userEmail,@RequestParam(value = "userPwd") String userPwd,Model model){
        log.info("向表中添加一个用户");
        userService.addSave(userName,userPhone,userEmail,userPwd);
        return "save";
    }
    @RequestMapping("/delete")
    public  String deletePeople(@RequestParam(value = "userId") String id,Model model){
        log.info("删除一个用户信息");
        userService.delete((long) Integer.parseInt(id));
        return "delete";
    }
    @RequestMapping("/update")
    public String updatePeople(@RequestParam(value = "userId") String id,@RequestParam(value = "userName") String userName,@RequestParam(value = "userPhone") String userPhone,
                             @RequestParam(value = "userEmail") String userEmail,@RequestParam(value = "userPwd") String userPwd,Model model) {
        log.info("对表中数据进行修改");
        userService.update((long) Integer.parseInt(id), userName, userPhone, userEmail, userPwd);
        return "update";
    }
    @RequestMapping("/login")
    public String login(@RequestParam(value = "userName") String userName,@RequestParam(value = "userPwd") String userPwd,Model model){
        log.info("用户进行登录操作");
        List<User> userList = userService.login(userName,userPwd);
        if(userList.size()>0){
            return "success";
        }else {
            return "error";
        }
    }
    @RequestMapping("/again")
    public String again(){
        return "login";
    }
    }

