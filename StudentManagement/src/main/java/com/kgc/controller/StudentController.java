package com.kgc.controller;

import com.kgc.pojo.Studentinfo;
import com.kgc.service.StudentinfoService;
import com.sun.xml.internal.bind.v2.model.core.ID;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import sun.management.Agent;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class StudentController {
    @Resource
    StudentinfoService studentinfoService;
    @RequestMapping("/")
    public String index(Model model){
        List<Studentinfo> studentinfos=studentinfoService.selectAll();
        model.addAttribute("list",studentinfos);
        return "index";
    }
    @RequestMapping("/update")
    public String update(Model model,int sid){
        Studentinfo s=studentinfoService.selectById(sid);
        model.addAttribute("s",s);
        return "upd";
    }
    @RequestMapping("/upd")
    public String upd(int sid,String sname,String sgender,int sage,String saddress,String semail,HttpSession session){
        Studentinfo s=new Studentinfo();
        s.setSid(sid);
        s.setSname(sname);
        s.setSgender(sgender);
        s.setSage(sage);
        s.setSaddress(saddress);
        s.setSemail(semail);
        studentinfoService.update(s);
        session.setAttribute("del","");
        return "redirect:/";
    }
}
