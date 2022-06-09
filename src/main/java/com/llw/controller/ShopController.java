package com.llw.controller;

import com.llw.model.Shop;
import com.llw.service.ShopService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/shop")
public class ShopController {
    @Autowired
    private ShopService shopService;

    @RequestMapping("/addPage")
    public String goShopPage(HttpServletRequest request, Model model){
        return "addShop";
    }
    @RequestMapping("/add")
    public ModelAndView addShop(HttpServletRequest request, ModelAndView modelAndView){
        String name = request.getParameter("name");
        String introduce = request.getParameter("introduce");
        Shop shop = new Shop();
        shop.setName(name);
        shop.setIntroduce(introduce);
        shopService.save(shop);
        modelAndView.setViewName("redirect:/user/index");
        return modelAndView;
    }
}
