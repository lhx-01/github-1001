package com.kgc.controller;

import com.kgc.pojo.Meetingroom;
import com.kgc.service.MeetingroomService;
import com.sun.xml.internal.bind.v2.model.core.ID;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.Date;
import java.util.List;

@Controller
public class MeetingRoomController {
    @Resource
    MeetingroomService meetingroomService;
    @RequestMapping("/")
    public String index(Model model, HttpSession session){
        List<Meetingroom> meetingrooms = meetingroomService.selectAll();
        model.addAttribute("meetingrooms",meetingrooms);
        return "index";
    }
    @RequestMapping("/addjin")
    public String addjin(Meetingroom meetingroom){
        return "add";
    }
    @RequestMapping("/add")
    public String add(Meetingroom meetingroom){
        meetingroomService.add(meetingroom);
        return "redirect:/";
    }
}
