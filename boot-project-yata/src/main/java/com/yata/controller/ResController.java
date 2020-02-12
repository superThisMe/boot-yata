package com.yata.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.yata.service.ReserveService;
import com.yata.vo.ReserveVO;

@Controller
@RequestMapping(path = { "/res" })
public class ResController {
	
	@Autowired
	@Qualifier("resService")
	private ReserveService resService;

	@PostMapping(path = { "" })
	public String addReserve(ReserveVO res, @RequestParam("totalPoint")int totalPoint, @RequestParam("activePoint")int activePoint) {
		
		System.out.printf("carNum: %d", res.getCarNum());
		System.out.printf("userNum: %d", res.getUserNum());
		resService.addReserve(res, totalPoint, activePoint);
		
		return String.format("redirect:mypage/reservationlist?userNum=%d", res.getUserNum());
	}
	
}
