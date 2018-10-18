package com.qf.message.service;

import com.alibaba.fastjson.JSONObject;
import com.qf.model.Message;

import java.util.List;

public interface IMessageService {
    JSONObject findAll(JSONObject json);
    Message findById(String mes_id);
    void saveMessage(Message message);
    void removeMessage(String mes_id);
}