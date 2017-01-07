package com.framework.web.controller;

import com.framework.web.model.User;
import com.framework.web.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.ws.rs.core.Response;

/**
 * @Author keven-song.
 * Created on 2017/1/2.
 * @Description
 */
@RequestMapping("web/user")
@Controller
public class UserController {

    @Autowired
    private UserService userService;

    /**
     * 用户注册
     * @param user
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "/insertUser")
    public Response insertUser(User user){
        userService.insertUser(user);
        return Response.ok().build();
    }


    @ResponseBody
    @RequestMapping(value = "/login")
    public Response login(){
        return Response.ok().build();
    }

    /*@ResponseBody*/
    @RequestMapping(value = "/test")
    public String test(){
        System.out.println("-----test--------");
        return "index";
    }

}
