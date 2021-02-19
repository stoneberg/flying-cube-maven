package com.ktds.flyingcube.biz.noti.service;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.ktds.flyingcube.biz.noti.domain.Target;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.messaging.converter.StringMessageConverter;
import org.springframework.messaging.simp.SimpMessagingTemplate;
import org.springframework.stereotype.Service;

@Slf4j
@RequiredArgsConstructor
@Service
public class NotiService {

    private final SimpMessagingTemplate messagingTemplate;
    private final ObjectMapper objectMapper;

    public void sendRoleChangeMessage(Target target) {
        log.info("call role change notify service......");
        try {
            String message = objectMapper.writeValueAsString(target);
            messagingTemplate.setMessageConverter(new StringMessageConverter());
            messagingTemplate.convertAndSend("/subscribe/role", message);
        } catch (Exception ex) {
            log.error(ex.getMessage());
        }
    }
}
