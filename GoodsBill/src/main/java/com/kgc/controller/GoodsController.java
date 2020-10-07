package com.kgc.controller;

import com.kgc.pojo.Goods;
import com.kgc.service.GoodsService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.Date;
import java.util.List;

@Controller
public class GoodsController {
    @Resource
    GoodsService goodsService;
    @RequestMapping("/")
    public String cha(Model model, @RequestParam(value = "type",required = false,defaultValue = "0")int type){
        List<Goods> goods=goodsService.selectAll(type);
        model.addAttribute("list",goods);
        if (type>0){
            return "redirect:/cha";
        }else{
            return "index";
        }
    }
    @RequestMapping("/cha")
    public String goods(Model model,int type){
        List<Goods> goods=goodsService.selectAll(type);
        model.addAttribute("list",goods);
        return "goods";
    }
    @RequestMapping("/update")
    public String update(Model model,int id){
        Goods g=goodsService.selectById(id);
        model.addAttribute("list",g);
        return "upd";
    }
    @RequestMapping("/upd")
    public String upd(int id, String goodsname, int billstatus, int goodsdistrict, float goodsprice, int goodscount, Date creationtime, HttpSession session){
        Goods g=new Goods();
        g.setId(id);
        g.setGoodsname(goodsname);
        g.setBillstatus(billstatus);
        g.setGoodsdistrict(goodsdistrict);
        g.setGoodsprice(goodsprice);
        g.setGoodscount(goodscount);
        g.setCreationtime(creationtime);
        goodsService.update(g);
        session.setAttribute("upd","");
        return "/";
    }
}
