package com.llw.controller;

import com.alibaba.fastjson.JSONObject;
import com.llw.model.User;
import com.llw.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.UnsupportedEncodingException;

@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    private UserService userService;

    @RequestMapping("/login")
    @ResponseBody
    public byte[] findUser(HttpServletRequest request) throws UnsupportedEncodingException {
        JSONObject jsonObject = new JSONObject();
        String account = request.getParameter("account");
        String password = request.getParameter("password");
        User user = userService.findByAccount(account);
        if(user==null){
            jsonObject.put("code",404);
            jsonObject.put("message","用户名不存在！");
        }
        //判断密码是否相等
        if(user.getPassword().equals(password)){
            //返回首页
            jsonObject.put("code",200);
        }else{
            //返回输入页面，并提示
            jsonObject.put("code",502);
            jsonObject.put("message","密码错误！");
        }
        return jsonObject.toJSONString().getBytes("utf-8");
    }
    @RequestMapping("/index")
    public String goIndex(HttpServletRequest request, Model model){
        String account = request.getParameter("account");
        User user = userService.findByAccount(account);
        model.addAttribute("user",user);
        return "index";
    }
}
