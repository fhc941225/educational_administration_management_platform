package com.qf.message.service;

import com.alibaba.fastjson.JSONObject;
import com.qf.message.dao.MessageMapper;
import com.qf.model.Message;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class MessageService implements IMessageService {
    @Autowired
    private MessageMapper mapper;

    @Override
    public JSONObject findAll(JSONObject json) {
        JSONObject jsonObject=new JSONObject();
        jsonObject.put("total",mapper.count());
        jsonObject.put("rows", mapper.selectAll(json));
        return jsonObject;
    }

    @Override
    public Message findById(String mes_id) {
        return mapper.selectById(mes_id);
    }

    @Override
    @Transactional
    public void saveMessage(Message message) {
        mapper.insertMessage(message);
    }

    @Override
    @Transactional
    public void removeMessage(String mes_id) {
        mapper.deleteMessage(mes_id);
    }
}