package com.qf.message.controller;

import com.alibaba.fastjson.JSONObject;
import com.qf.message.service.IMessageService;
import com.qf.model.Message;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.lang.reflect.Method;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

@Controller
@RequestMapping("/message")
public class MessageController {
    @Autowired
    private IMessageService service;
    //展示列表页面
    @RequestMapping("/message_list_for_student")
    public String toMessage(){
        return "message_list_for_student";
    }
    //bootstrap-table
    @RequestMapping("/showMessages")
    @ResponseBody
    public JSONObject showMessages(@RequestBody JSONObject json){
        return service.findAll(json);
    }
    //显示单条通知
    @RequestMapping(value="/checkMessage/{mes_id}",method = RequestMethod.GET)
    public String checkMessage(@PathVariable("mes_id")String mes_id,Model model){
        Message message=service.findById(mes_id);
        model.addAttribute("message",message);
        return "message";
    }
    //已下对老师的控制器
    //展示列表页面
    @RequestMapping("/message_list_for_teacher")
    public String toMessage_teacher(){
        return "message_list_for_teacher";
    }
    //显示单条通知
    @RequestMapping(value="/checkMessage_teacher/{mes_id}",method = RequestMethod.GET)
    public String checkMessage_teacher(@PathVariable("mes_id")String mes_id,Model model){
        Message message=service.findById(mes_id);
        model.addAttribute("message",message);
        return "message_teacher";
    }
    //添加通知
    @RequestMapping(value = "/addMessage",method =RequestMethod.POST)
    public String addMessage(Message message){
        message.setMes_id(UUID.randomUUID().toString());
        SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
        String mes_date=sdf.format(new Date());
        message.setMes_date(mes_date);
        service.saveMessage(message);
        return "message_list_for_teacher";
    }
    //删除通知(改变状态)
    @RequestMapping(value = "/deleteMessage/{mes_id}",method = RequestMethod.GET)
    public String deleteMessage(@PathVariable("mes_id")String mes_id){
        service.removeMessage(mes_id);
        return "message_list_for_teacher";
    }

}