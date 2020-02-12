package com.yata.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.yata.service.CarService;
import com.yata.service.ReserveService;
import com.yata.vo.CarVO;
import com.yata.vo.MemberVO;

@Controller
public class HomeController {
	
	@Autowired
	@Qualifier("carService")
	private CarService carService;
	
	@Autowired
	@Qualifier("resService")
	private ReserveService resService;
	
	@GetMapping(path = { "/", "/home" })
	public String home(HttpSession session, Model model) {
		
		if (carService.findCar() != null) {
			
		List<CarVO> cars = carService.findCar();
		MemberVO member = (MemberVO)session.getAttribute("loginuser");
		model.addAttribute("count", member == null ? -1 : resService.searchNotReturnMemberByUserNum(member.getUserNum()));
		model.addAttribute("cars", cars);
		
		}
		
		return "index";
	}
	
}
