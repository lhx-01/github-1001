package com.kgc.controller;

import com.github.pagehelper.PageHelper;
import com.kgc.pojo.Person;
import com.kgc.service.PersonService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class HrManageController {
    @Resource
    PersonService personService;
    @RequestMapping("/")
    public String index(Model model){
        PageHelper.orderBy("id desc");
        List<Person> people=personService.selectAll();
        model.addAttribute("list",people);
        return "index";
    }
    @RequestMapping("/toadd")
    public String toadd(){
        return "add";
    }
    @RequestMapping("/doadd")
    public String doadd(Person person){
        personService.add(person);
        return "redirect:/";
    }
    @RequestMapping("/delete")
    public String delete(int id, HttpSession session){
        int delete=personService.delete(id);
        if (delete>0){
            session.setAttribute("del","删除成功");
        }
        return "redirect:/";
    }
}
