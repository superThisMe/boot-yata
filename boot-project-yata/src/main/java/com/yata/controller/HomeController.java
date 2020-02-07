package com.yata.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller // @Component + spring mvc 湲곕뒫 異붽�
public class HomeController {
	
	@GetMapping(path = { "/" })
	public String home() {
		
		return "index";
	}
	
}
