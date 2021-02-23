package com.ktds.flyingcube.biz.noti.controller;

import com.ktds.flyingcube.biz.noti.domain.Target;
import com.ktds.flyingcube.biz.noti.service.NotiService;
import com.ktds.flyingcube.common.response.ResponseDto;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RequiredArgsConstructor
@RestController
@RequestMapping("/api/noti")
public class NotiController {

	private final NotiService notiService;
	
	@PostMapping("/role-change")
	public ResponseDto<?> changeNoti(@RequestBody Target target) {
		notiService.sendRoleChangeMessage(target);
		return ResponseDto.ok();
	}
}