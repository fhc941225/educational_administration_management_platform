package com.qf.message.dao;

import com.alibaba.fastjson.JSONObject;
import com.qf.model.Message;

import java.util.List;

public interface MessageMapper {
    List<Message> selectAll(JSONObject json);
    Message selectById(String mes_id);
    void insertMessage(Message message);
    void deleteMessage(String mes_id);
    Long count();
}